package com.study.springboot;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer{

	@Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
		/*
		 * registry.addResourceHandler("/upload/**")
		 * .addResourceLocations("file:///home/ubuntu/ezen_null/upload/");
		 */
        
        //.addResourceLocations("file:///var/upload/"); //리눅스 배포환경
    }
	
}
