<#-- @ftlvariable name="user" type="java.lang.String" -->
<#-- @ftlvariable name="error" type="java.lang.String" -->
<#-- @ftlvariable name="users" type="ru.itmo.wp.model.domain.User[]" -->
<#-- @ftlvariable name="talks" type="ru.itmo.wp.model.domain.Talk[]" -->
<#-- @ftlvariable name="textMessage" type="java.lang.String" -->
<#import "commons.ftlh" as c>

<@c.page>
    <link rel="stylesheet" type="text/css" href="css/talk-form.css">
    <form method="post" action="">
    <div class="middle">
        <main>
            <div class="form-box">
                <div class="header">Send a message</div>
                <div class="body">
                    <input type="hidden" name="action" value="send"/>
                    <div class="field">
                        <div class="name">
                            <label class="selectLabel" for="userSelect">Choose who to</label>
                        </div>
                        <div class="value">
                            <select id="userSelect" name="userSelect">
                                <#list users as user>
                                    <option value="${user.id}">${user.login}</option>
                                </#list>
                            </select>
                        </div>
                    </div>
                    <div class="field">
                        <div class="name">
                            <label for="textMessage">Text</label>
                        </div>
                        <div class="value">
                            <textarea id="textMessage" name="textMessage" value="${textMessage!}"></textarea>
                        </div>
                    </div>
                    <#if error??>
                        <div class="error">
                            ${error!}
                        </div>
                    </#if>
                    <div class="button-field">
                        <input type="submit" value="Submit">
                    </div>
                </div>
            </div>
        </main>
    </div>
    <div class="datatable">
        <div class="caption">Modern Talking</div>
        <table>
            <thead>
            <tr>
                <th>From</th>
                <th>To</th>
                <th>Text</th>
                <th>Creation Time</th>
            </tr>
            </thead>
            <tbody>
            <#list talks?reverse as talk>
                <#if talk.sourceUserId==user.id || talk.targetUserId==user.id>
                <tr>
                    <#list users as u>
                        <#if u.id==talk.sourceUserId>
                            <td>${u.login}</td>
                        </#if>
                    </#list>
                    <#list users as u>
                        <#if u.id==talk.targetUserId>
                            <td>${u.login}</td>
                        </#if>
                    </#list>
                    <td>${talk.text}</td>
                    <td>${talk.creationTime}</td>

                </tr>
                </#if>
            </#list>
            </tbody>
        </table>
    </div>
    </form>
</@c.page>