package ru.itmo.wp.model.repository;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public interface Converter<T> {
    T convert(ResultSetMetaData metaData, ResultSet resultSet) throws SQLException;
}
