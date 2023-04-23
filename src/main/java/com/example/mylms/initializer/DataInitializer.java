package com.example.mylms.initializer;

import lombok.RequiredArgsConstructor;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.datasource.init.ScriptUtils;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

//@Component
@RequiredArgsConstructor
public class DataInitializer {

    private final DataSource dataSource;

    public void executeDataSqlScript() {
        Resource resource = new ClassPathResource("temp-data.sql");
        try (Connection connection = dataSource.getConnection()) {
            ScriptUtils.executeSqlScript(connection, resource);
        } catch (SQLException e) {
            throw new RuntimeException("Failed to execute data.sql script", e);
        }
    }
}
