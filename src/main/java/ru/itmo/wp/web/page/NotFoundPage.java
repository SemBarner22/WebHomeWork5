package ru.itmo.wp.web.page;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/** @noinspection unused*/
public class NotFoundPage extends AbstractPage {
    private void action() {
        // No operations.
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
