package ru.itmo.wp.model.repository.impl;

import ru.itmo.wp.model.database.DatabaseUtils;

import javax.sql.DataSource;
import java.util.Map;

public abstract class BasicRepositoryImpl {
    private final DataSource DATA_SOURCE = DatabaseUtils.getDataSource();
    String TABLE_NAME = "TABLE_NAME";

   // <T> T findBasiz(Map<String, String> Parameters)
}
