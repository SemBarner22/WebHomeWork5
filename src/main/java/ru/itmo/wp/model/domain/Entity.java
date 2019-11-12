package ru.itmo.wp.model.domain;

import java.util.Date;

public interface Entity {
    long getId();
    void setId(long a);
    Date getCreationTime();
    void setCreationTime(Date d);
}
