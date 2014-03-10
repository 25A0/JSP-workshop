<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:main>
    <jsp:attribute name="head">
    </jsp:attribute>
    <jsp:attribute name="body">
    <table>
        <c:forEach items="${properties}" var="p">
        <tr>
            <td>${p.key}</td>
            <td>${p.value}</td>
        </tr>
        </c:forEach>  
    </table>
    </jsp:attribute>
</t:main>
