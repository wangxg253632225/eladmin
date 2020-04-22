package me.zhengjie.modules.mnt.util;

import cn.hutool.crypto.SecureUtil;
import com.alibaba.druid.util.StringUtils;
import com.google.common.collect.Lists;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.data.domain.DataColumn;
import me.zhengjie.modules.data.domain.DataEntity;

import java.io.*;
import java.sql.*;
import java.util.*;

/**
 * @author /
 */
@Slf4j
public class SqlUtils {

	public static final String COLON = ":";

	private static volatile Map<String, Connection> map = new HashMap<>();

	private static String getKey(String jdbcUrl, String username, String password) {
		StringBuilder sb = new StringBuilder();
		if (!StringUtils.isEmpty(username)) {
			sb.append(username);
		}
		if (!StringUtils.isEmpty(password)) {
			sb.append(COLON).append(password);
		}
		sb.append(COLON).append(jdbcUrl.trim());
		return SecureUtil.md5(sb.toString());
	}

	/**
	 * 获取驱动类
	 * @param jdbcUrl
	 * @return
	 */
	private static void getClass(String jdbcUrl) throws ClassNotFoundException {
		String className = null;
		try {
			className = DriverManager.getDriver(jdbcUrl.trim()).getClass().getName();
		} catch (SQLException e) {
			throw new RuntimeException("Get class name error: =" + jdbcUrl);
		}
		if (StringUtils.isEmpty(className)) {
			DataTypeEnum dataTypeEnum = DataTypeEnum.urlOf(jdbcUrl);
			if (null == dataTypeEnum) {
				throw new RuntimeException("Not supported data type: jdbcUrl=" + jdbcUrl);
			}
			className = dataTypeEnum.getDriver();
		}
		Class.forName(className);
	}

	public static Connection getConnection(String jdbcUrl, String userName, String password) {
		String key = getKey(jdbcUrl, userName, password);
		if (!map.containsKey(key) || null == map.get(key)) {
			Connection connection = null;
			try {
				getClass(jdbcUrl);
				Properties props = new Properties();
				props.setProperty("user", userName);
				props.setProperty("password", password);
				//设置可以获取remarks信息
				props.setProperty("remarks", "true");
				props.setProperty("remarksReporting", "true");
				//设置可以获取tables remarks信息
				props.setProperty("useInformationSchema", "true");
				connection = DriverManager.getConnection(jdbcUrl, props);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
			map.put(key, connection);
		}
		return map.get(key);
	}

	public static boolean testConnection(String jdbcUrl, String userName, String password) {
		Connection connection = null;
		try {
			connection = getConnection(jdbcUrl, userName, password);
			if (null != connection) {
				return true;
			}
		} catch (Exception e) {
			log.info("Get connection failed:", e.getMessage());
		}
		return false;
	}

	public static String executeFile(String jdbcUrl, String userName, String password, File sqlFile) {
		Connection connection = getConnection(jdbcUrl, userName, password);
		try {
			batchExecute(connection, readSqlList(sqlFile));
		} catch (Exception e) {
			log.error("sql脚本执行发生异常:{}", e.getMessage());
			return e.getMessage();
		}
		return "success";
	}

	/**
	 * 批量执行sql
	 *
	 * @param connection
	 * @param sqlList
	 * @return
	 */
	public static void batchExecute(Connection connection, List<String> sqlList) throws SQLException {
		Statement st = connection.createStatement();
		for (String sql : sqlList) {
			if (sql.endsWith(";")) {
				sql = sql.substring(0, sql.length() - 1);
			}
			st.addBatch(sql);
		}
		st.executeBatch();
	}

	/**
	 * 将文件中的sql语句以；为单位读取到列表中
	 *
	 * @param sqlFile
	 * @return
	 * @throws Exception
	 */
	private static List<String> readSqlList(File sqlFile) throws Exception {
		List<String> sqlList = Lists.newArrayList();
		StringBuilder sb = new StringBuilder();
		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new InputStreamReader(
					new FileInputStream(sqlFile), "UTF-8"));
			String tmp = null;
			while ((tmp = reader.readLine()) != null) {
				log.info("line:{}", tmp);
				if (tmp.endsWith(";")) {
					sb.append(tmp);
					sqlList.add(sb.toString());
					sb.delete(0, sb.length());
				} else {
					sb.append(tmp);
				}
			}
			if (!"".endsWith(sb.toString().trim())) {
				sqlList.add(sb.toString());
			}
		} finally {
			try {
				reader.close();
			} catch (IOException e1) {
			}
		}
		return sqlList;
	}

	/**
	 * 获取数据库中所有表名称
	 *
	 * @param connection
	 * @return
	 * @throws SQLException
	 */
	public static List<DataEntity> getTables(Connection connection) throws SQLException {
		List<DataEntity> resultList = Lists.newArrayList();
		DatabaseMetaData databaseMetaData = connection.getMetaData();
		String[] types = {"TABLE"};
		ResultSet tables = databaseMetaData.getTables(connection.getCatalog(), null, "%", types);
		ArrayList<String> tablesList = new ArrayList<String>();
		int sort = 1;
		while (tables.next()) {
			DataEntity dataEntity = new DataEntity();
			String tableName = tables.getString("TABLE_NAME");
			String remark = tables.getString("REMARKS");
			if (remark == null || "".equals(remark)) {
				remark = tableName;
			}
			dataEntity.setId(tableName);
			dataEntity.setName(remark);
			dataEntity.setRemark("");
			dataEntity.setSource(connection.getCatalog());
			dataEntity.setDatasize(0);
			dataEntity.setSort(10*sort++);
			resultList.add(dataEntity);
		}
		return resultList;
	}

	/**
	 * 获取表中所有字段名称
	 *
	 * @param connection
	 * @param tableName
	 * @throws SQLException
	 */
	public static List<DataColumn> getColumnList(Connection connection, String tableName) {
		List<DataColumn> resultList = Lists.newArrayList();
		ResultSet rs = null;
		try {
			rs = connection.getMetaData().getColumns(null, getSchema(connection), tableName, "%");
			List<String> pkList = getPkColNames(connection, tableName);
			int sort = 1;
			while (rs.next()) {
				DataColumn dataColumn = new DataColumn();
				dataColumn.setEntity(tableName);
				String code = rs.getString("COLUMN_NAME");
				dataColumn.setCode(code);
				String name = rs.getString("REMARKS");
				if (name == null || "".equals(name)) {
					name = code;
				}
				dataColumn.setName(name);
				dataColumn.setDataType(rs.getString("TYPE_NAME"));
				dataColumn.setLength(rs.getInt("COLUMN_SIZE"));
				dataColumn.setScale(rs.getInt("DECIMAL_DIGITS"));
				dataColumn.setIsAuthority("0");
				dataColumn.setIsKey(pkList.contains(code)?"1":"0");
				dataColumn.setIsSensitive("0");
				dataColumn.setIsValid("1");
				dataColumn.setSort(10*sort++);
				resultList.add(dataColumn);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		} finally {
			close(rs);
		}

		return resultList;
	}

	/**
	 * 其他数据库不需要这个方法 oracle和db2需要
	 * @param connection
	 * @return
	 * @throws SQLException
	 */
	private static String getSchema(Connection connection) throws SQLException {
		String schema;
		schema = connection.getMetaData().getUserName();
		if ((schema == null) || (schema.length() == 0)) {
			throw new RuntimeException("ORACLE数据库模式不允许为空");
		}
		return schema.toUpperCase().toString();

	}

	private static List<String> getPkColNames(Connection connection, String tableName) {
		List<String> resultList = Lists.newArrayList();
		ResultSet rs = null;
		try {
			DatabaseMetaData databaseMetaData = connection.getMetaData();
			rs = databaseMetaData.getColumns(connection.getCatalog(),  "%", tableName, "%ID");
			while (rs.next()) {
				resultList.add(rs.getString("COLUMN_NAME"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
		}

		return resultList;
	}

	private static void close(Connection connection) {
		if (null != connection) {
			try {
				connection.close();
				connection = null;
			} catch (Exception e) {
				e.printStackTrace();
				log.error("connection close error", e.getMessage());
			}
		}
	}

	public static void close(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
		}
	}

	public static void close(Statement st) {
		try {
			if (st != null) {
				st.close();
			}
		} catch (Exception e) {
		}
	}
}
