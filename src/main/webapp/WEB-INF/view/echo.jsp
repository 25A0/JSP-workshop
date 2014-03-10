<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main>
    <jsp:attribute name="head">
    </jsp:attribute>
    <jsp:attribute name="body">
    <form method="POST" action="">
        <input type="text" name="input" />
        <input type="submit" name="submit" value="Submit" />
    </form>
    <c:if test="${not empty text}">
        ${text}
    </c:if>
    </jsp:attribute>
</t:main>
