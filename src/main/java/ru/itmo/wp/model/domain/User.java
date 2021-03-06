package ru.itmo.wp.model.domain;

import java.util.Date;

public class User implements Entity {
    private long id;
    private String login;
    private String email;
    private Date creationTime;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public String getEmail() { return email; }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }
}
