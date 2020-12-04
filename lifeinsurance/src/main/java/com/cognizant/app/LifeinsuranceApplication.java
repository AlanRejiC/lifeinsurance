package com.cognizant.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan("com.*")
@EntityScan("com.cognizant.model")
@EnableJpaRepositories(basePackages = {"com.cognizant.repository"})
public class LifeinsuranceApplication {

	public static void main(String[] args) {
		SpringApplication.run(LifeinsuranceApplication.class, args);
	}

}
