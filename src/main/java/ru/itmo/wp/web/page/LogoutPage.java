package ru.itmo.wp.web.page;

import ru.itmo.wp.model.domain.Event;
import ru.itmo.wp.model.domain.User;
import ru.itmo.wp.model.service.EventService;
import ru.itmo.wp.web.exception.RedirectException;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/** @noinspection unused*/
public class LogoutPage extends AbstractPage {
    private final EventService eventService = new EventService();
//    private void action(HttpServletRequest request, Map<String, Object> view) {
//        request.getSession().removeAttribute("user");
//
//        request.getSession().setAttribute("message", "Good bye. Hope to see you soon!");
//        throw new RedirectException("/index");
//    }
    private void action(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        //User user = (User) request.getAttribute("user");

        eventService.changeStatus(Event.Status.LOGOUT, user.getId());

        request.getSession().removeAttribute("user");

        request.getSession().setAttribute("message", "Good bye. Hope to see you soon!");
        throw new RedirectException("/index");
    }

    @Override
    public void before(HttpServletRequest request, Map<String, Object> view) {
        super.before(request, view);
    }

    @Override
    public void after(HttpServletRequest request, Map<String, Object> view) {
        super.after(request, view);
    }

}
