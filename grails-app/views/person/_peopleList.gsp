<%@ page import="org.grails.twitter.auth.Person" %>
<ul class="personList">
    <g:each in="${people}" var="p">
        <li>

            <gravatar:image email="${p.email ?: p.displayName}" title="${p.displayName}"
                            defaultGravatarUrl="retro" />
            ${p.displayName} <span class="byline"><g:link action="show" id="${p.id}">@${p.userName}</g:link></span>
        </li>
    </g:each>
</ul>
