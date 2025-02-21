<%@ page contentType="text/html;charset=UTF-8" language="java"  %>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
    int[] valores = {1,2,3,4,5};
    request.setAttribute("valores", valores);

    int opcao = 3;
    request.setAttribute("opcao", opcao);
%>

<!DOCTYPE html>
    <html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Olá Mundo!!!</title>
    </head>
    <body>
        <h1>Teste</h1>
        <%
            for(int i = 0;i < 5;i++) {
                out.println(valores[i]);
                out.println("<br />");
            }
        %>
        <hr />
        <c:forEach var="item" items="${valores}">
            ${item} <br />
            <c:if test="${item == 5}" > FIM </c:if>
        </c:forEach>

        <hr />
        <c:choose>
            <c:when test="${opcao == 1}">Bom Dia !!!</c:when>
            <c:when test="${opcao == 2}">Boa Tarde !!!</c:when>
            <c:otherwise>Olá !!!</c:otherwise>
        </c:choose>
    </body>
</html>