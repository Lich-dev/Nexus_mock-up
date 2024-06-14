package com.example.neksus.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import javax.sql.DataSource;

@Configuration
public class DatabaseConfig {

    @Bean
    public JdbcTemplate jdbcTemplate() {
        return new JdbcTemplate(dataSource());
    }

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("oracle.jdbc.OracleDriver");//be sure to change if you use a different kind of database
        dataSource.setUrl("--InputYourURLToDatabaseHere--");
        dataSource.setUsername("--InputConnectionUsername--");
        dataSource.setPassword("--InputConnectionPassword--");

        return dataSource;
    }
}
