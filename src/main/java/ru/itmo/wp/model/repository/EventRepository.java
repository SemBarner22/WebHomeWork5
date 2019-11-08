package ru.itmo.wp.model.repository;

import ru.itmo.wp.model.domain.Event;

public interface EventRepository {
    void save(Event event);
    void changeStatus(Event.Status status, long userId);
}
