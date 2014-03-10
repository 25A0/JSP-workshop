<%@ tag pageEncoding="UTF-8" %>
<%@ attribute name="head" fragment="true" %>
<%@ attribute name="body" fragment="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:invoke fragment="head" />
</head>
<body>
    <h2>The JSP workshop page</h2>
    <a href="/echo">Echo page</a>
    <a href="/print">Print page</a>
    <a href="/">Home</a><br>
    <jsp:invoke fragment="body" />
</body>
</html>
