package kr.co.multi.teamfinder.config;

import javax.sql.DataSource;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(
			annotationClass = Mapper.class,
			basePackages = "kr.co.multi.teamfinder.dao",
			sqlSessionFactoryRef = "sqlSessionFactoryBean"
		)
public class MyBatisConfig {
	
	@Bean
	public SqlSessionFactoryBean sqlSessionFactoryBean(DataSource dataSource, ApplicationContext applicationContext) throws Exception {
		
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
	
		factoryBean.setDataSource(dataSource);
		factoryBean.setConfigLocation(applicationContext.getResource("classpath:mybatis/configuration.xml"));
		factoryBean.setMapperLocations(applicationContext.getResources("classpath:mybatis/mappers/**"));
	
		return factoryBean;
	}
	
	
}