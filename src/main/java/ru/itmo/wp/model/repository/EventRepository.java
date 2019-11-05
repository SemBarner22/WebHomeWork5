package ru.itmo.wp.model.repository;

import ru.itmo.wp.model.domain.Event;
import ru.itmo.wp.model.domain.Status;

public interface EventRepository {
    void save(Event event);
    void changeStatus(Status status, long userId);
}
