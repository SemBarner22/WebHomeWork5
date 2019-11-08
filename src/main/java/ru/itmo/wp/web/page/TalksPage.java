package ru.itmo.wp.web.page;

import ru.itmo.wp.model.domain.Talk;
import ru.itmo.wp.model.exception.ValidationException;
import ru.itmo.wp.model.service.EventService;
import ru.itmo.wp.model.service.TalkService;
import ru.itmo.wp.model.service.UserService;
import ru.itmo.wp.web.exception.RedirectException;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public class TalksPage extends AbstractPage {
    private final TalkService talkService = new TalkService();
    private final UserService userService = new UserService();

    @Override
    public void before(HttpServletRequest request, Map<String, Object> view) {
        super.before(request, view);
    }

    @Override
    public void after(HttpServletRequest request, Map<String, Object> view) {
        super.after(request, view);
    }

    public void allTalks(Map<String, Object> view) {
        view.put("talks", talkService.findAll());
    }

    public void allUsers(Map<String, Object> view) {
        view.put("users", userService.findAll());
    }

    public void select(HttpServletRequest request, Map<String, Object> view) {
        System.out.println("kok");
    }

    public void send(HttpServletRequest request, Map<String, Object> view) throws ValidationException {
        String text = request.getParameter("textMessage");
        long to = Long.parseLong(request.getParameter("userSelect"));
        try {
            talkService.validate(text);
            Talk talk = new Talk();
            talk.setSourceUserId(getUser().getId());
            talk.setTargetUserId(to);
            talk.setText(text);
            talkService.save(talk);
        } finally {
            allTalks(view);
            allUsers(view);
        }

    }

    public void action(Map<String, Object> view) {
        if (getUser() == null) {
            throw new RedirectException("/index");
        }

        allTalks(view);
        allUsers(view);
    }
}
