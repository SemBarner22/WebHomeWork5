package ru.itmo.wp.web.page;

import com.google.common.base.Strings;
import ru.itmo.wp.model.domain.User;
import ru.itmo.wp.model.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

public abstract class AbstractPage {
    private final UserService userService = new UserService();
    private HttpServletRequest request;

    public void setUser(Map<String, Object> view) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            view.put("user", user);
        }
    }

    public User getUser() {
        User user = (User) request.getSession().getAttribute("user");
        return user;
    }

    public void getMessage(Map<String, Object> view) {
        String message = (String) request.getSession().getAttribute("message");
        if (!Strings.isNullOrEmpty(message)) {
            view.put("message", message);
            request.getSession().removeAttribute("message");
        }
    }

    public void setMessage(Map<String, Object> view, String message) {
        request.getSession().setAttribute("message", message);
        //String message = (String) request.getSession().getAttribute("message");
        if (!Strings.isNullOrEmpty(message)) {
            view.put("message", message);
            request.getSession().removeAttribute("message");
        }
    }

    public void before(HttpServletRequest request, Map<String, Object> view) {
        this.request = request;
        getMessage(view);
        setUser(view);
        view.put("userCount", userService.findCount());
    }

    public void after(HttpServletRequest request, Map<String, Object> view) {

    }
}
