package cn.duojunrui.etims.config;
import java.sql.SQLException;
import javax.sql.DataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import com.alibaba.druid.support.http.WebStatFilter;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;
import com.alibaba.druid.pool.DruidDataSource;

//@Configuration
//@MapperScan(basePackages = "cn.duojunrui.etims.mapper", sqlSessionTemplateRef = "sqlSessionTemplate")
public class DruidConfiguration {

    @Autowired
    private DruidProperties properties;

    //数据库连接池设置
    @Bean
    public DataSource datasource(DruidProperties config) throws SQLException {

        DruidDataSource dataSource=new DruidDataSource();
        dataSource.setDriverClassName(config.getDriverClassName());
        dataSource.setUrl(config.getDbUrl());
        dataSource.setUsername(config.getUsername());
        dataSource.setPassword(config.getPassword());
        //配置最大连接
        dataSource.setMaxActive(config.getMaxActive());
        //配置初始连接
        dataSource.setInitialSize(config.getInitialSize());
        //配置最小连接
        dataSource.setMinIdle(config.getMinIdle());
        //连接等待超时时间
        dataSource.setMaxWait(config.getMaxWait());
        //间隔多久进行检测,关闭空闲连接
        dataSource.setTimeBetweenEvictionRunsMillis(config.getTimeBetweenEvictionRunsMillis());
        //一个连接最小生存时间
        dataSource.setMinEvictableIdleTimeMillis(config.getMinEvictableIdleTimeMillis());
        //连接等待超时时间 单位为毫秒 缺省启用公平锁，
        //并发效率会有所下降， 如果需要可以通过配置useUnfairLock属性为true使用非公平锁
        dataSource.setUseUnfairLock(config.isUseUnfairLock());
        //用来检测是否有效的sql
        dataSource.setValidationQuery(config.getValidationQuery());
        dataSource.setTestWhileIdle(true);
        //申请连接时执行validationQuery检测连接是否有效，配置为true会降低性能
        dataSource.setTestOnBorrow(config.isTestOnBorrow());
        //归还连接时执行validationQuery检测连接是否有效，配置为true会降低性能
        dataSource.setTestOnReturn(config.isTestOnReturn());
        //打开PSCache,并指定每个连接的PSCache大小启用poolPreparedStatements后，
        //PreparedStatements 和CallableStatements 都会被缓存起来复用，
        //即相同逻辑的SQL可以复用一个游标，这样可以减少创建游标的数量。
        dataSource.setPoolPreparedStatements(config.isPoolPreparedStatements());
        dataSource.setMaxOpenPreparedStatements(config.getMaxOpenPreparedStatements());
        try {
            //配置sql监控的filter
            dataSource.setFilters(config.getFilters());
            dataSource.init();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dataSource;
    }

    /*
    //不知道为什么，在这配置Mybatis扫描路径，访问不到。已在application.properties中配置
    @Bean
    public SqlSessionFactory sqlSessionFactory(@Qualifier("datasource") DataSource dataSource) throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(dataSource);
        //对应我们的实体类所在的包,多个package之间可以用逗号或者分号等来进行分隔。包全名
        bean.setTypeAliasesPackage("cn.duojunrui.etims.entity");
        //Mapper.xml 配置文件路径
        bean.setMapperLocations(new PathMatchingResourcePatternResolver().getResources("classpath:mybatis.mapper/*.xml"));
        return bean.getObject();
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(
            @Qualifier("sqlSessionFactory") SqlSessionFactory sqlSessionFactory) throws Exception {
        return new SqlSessionTemplate(sqlSessionFactory);
    }
    */

    //静态资源过滤器
    @Bean
    public FilterRegistrationBean filterRegistrationBean() {
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        filterRegistrationBean.setFilter(new WebStatFilter());
        filterRegistrationBean.addUrlPatterns("/*");
        filterRegistrationBean.addInitParameter("exclusions", "*.js,*.gif,*.jpg,*.png,*.css,*.ico,/druid/*");
        filterRegistrationBean.addInitParameter("profileEnable", "true");
        return filterRegistrationBean;
    }

    //数据源监控
    @Bean
    public ServletRegistrationBean druidServlet() {
        ServletRegistrationBean reg = new ServletRegistrationBean();
        reg.setServlet(new StatViewServlet());
        reg.addUrlMappings("/druid/*");
        //这里可以访问http://localhost:8080/druid/index.html进行访问填入密码后可以看到管理
        reg.addInitParameter("loginUsername", properties.getUsername());
        reg.addInitParameter("loginPassword", properties.getPassword());
        //reg.addInitParameter("logSlowSql", logSlowSql);
        return reg;
    }

    //跨域问题
    private CorsConfiguration buildConfig() {
        CorsConfiguration corsConfiguration = new CorsConfiguration();
        corsConfiguration.addAllowedOrigin("*"); // 1 设置访问源地址
        corsConfiguration.addAllowedHeader("*"); // 2 设置访问源请求头
        corsConfiguration.addAllowedMethod("*"); // 3 设置访问源请求方法
        return corsConfiguration;
    }

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", buildConfig()); // 4 对接口配置跨域设置
        return new CorsFilter(source);
    }

}
