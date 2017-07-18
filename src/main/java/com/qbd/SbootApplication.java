package com.qbd;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
@MapperScan(basePackages = "com.qbd.dao")//这一步是让mapper文件实现dao接口的
public class SbootApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(SbootApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SbootApplication.class);
	}
}
