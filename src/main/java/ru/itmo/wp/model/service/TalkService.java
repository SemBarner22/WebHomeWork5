package ru.itmo.wp.model.service;

import com.google.common.base.Strings;
import ru.itmo.wp.model.domain.Talk;
import ru.itmo.wp.model.exception.ValidationException;
import ru.itmo.wp.model.repository.TalkRepository;
import ru.itmo.wp.model.repository.impl.TalkRepositoryImpl;

import java.util.List;

public class TalkService {
    private final TalkRepository talkRepository = new TalkRepositoryImpl();
    public void save(Talk talk) {
        talkRepository.save(talk);
    }
    public List<Talk> findAll() {
        return talkRepository.findAll();
    }

    public void validate(String text) throws ValidationException {
        if (Strings.isNullOrEmpty(text)) {
            throw new ValidationException("Text should not be empty");
        }
    }
}
