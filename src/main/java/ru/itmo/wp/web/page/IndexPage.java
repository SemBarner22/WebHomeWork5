package ru.itmo.wp.web.page;

import com.google.common.base.Strings;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/** @noinspection unused*/
public class IndexPage extends AbstractPage {
    private void action(Map<String, Object> view, HttpServletRequest request)  {

    }

//    private void putMessage(HttpServletRequest request, Map<String, Object> view) {
//    }

    @Override
    public void before(HttpServletRequest request, Map<String, Object> view) {
        super.before(request, view);
    }

    @Override
    public void after(HttpServletRequest request, Map<String, Object> view) {
        super.after(request, view);
    }
}
