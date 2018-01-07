package jdbcconfig;

public class JDBCConfig {
	public static final String MYSQL_CLASS="com.mysql.jdbc.Driver";
	public static final String MYSQL_CONNECTION="jdbc:mysql://localhost:3306/order?useSSL=false";
	public static final String MYSQL_CONNECTION_NAME="root";
	public static final String MYSQL_CONNECTION_PASSWORD="root";
	
	
	
	public static final String ORACLE_CLASS="oracle.jdbc.driver.OracleDriver";
	public static final String ORACLE_CONNECTION="jdbc:oracle:thin:@222.139.214.46:1521:orcl";

	public static final String ORACLE_CONNECTION_NAME="mctm";
	public static final String ORACLE_CONNECTION_PASSWORD="mctm";
	
	public static final String SQLITE_CLASS="org.sqlite.JDBC";
	public static final String SQLITE_CONNECTION="jdbc:sqlite:order.db";

}
