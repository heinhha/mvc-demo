package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
public class MvcDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(MvcDemoApplication.class, args);
	}
	 @Bean
	    public InternalResourceViewResolver internalResourceViewResolver(){
	        InternalResourceViewResolver viewResolver=new InternalResourceViewResolver();
	        viewResolver.setPrefix("/WEB-INF/views/");
	        viewResolver.setSuffix(".jsp");
	        return viewResolver;
	    }
	    @Bean
	    public WebMvcConfigurer webMvcConfigurer(){
	        return new WebMvcConfigurer() {
	            @Override
	            public void addViewControllers(ViewControllerRegistry registry) {
	                registry.addRedirectViewController("/","/account");
	            }
	        };
	    }

}
