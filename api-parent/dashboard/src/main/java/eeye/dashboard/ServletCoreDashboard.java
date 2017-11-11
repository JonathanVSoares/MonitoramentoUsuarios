package eeye.dashboard;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

@SpringBootApplication
@EnableMongoRepositories(basePackages = {"eeye.dao"})
public class ServletCoreDashboard  {

	public static void main(String[] args) {
        SpringApplication.run(ServletCoreDashboard.class, args);
    }
}
