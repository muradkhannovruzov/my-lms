package com.example.mylms;

import com.example.mylms.initializer.DataInitializer;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
//@RequiredArgsConstructor
public class MyLmsApplication {
//	private final DataInitializer dataInitializer;
	public static void main(String[] args) {
		SpringApplication.run(MyLmsApplication.class, args);
	}

//	@Bean
//	public CommandLineRunner loadData() {
//		return args -> dataInitializer.executeDataSqlScript();
//	}

}
