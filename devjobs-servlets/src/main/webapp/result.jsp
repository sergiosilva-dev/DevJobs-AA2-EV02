<%@ taglib uri="http://jakarta.ee/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>DevJobs — Resultado</title>
    </head>

    <body>
        <h2>Resultado recibido en el Servlet</h2>
        <p><strong>Método:</strong> ${method}</p>
        <p><strong>Nombre:</strong> ${name}</p>
        <p><strong>Email:</strong> ${email}</p>

        <c:choose>
            <c:when test="${not empty tech}">
                <p><strong>Tecnologías:</strong></p>
                <ul>
                    <c:forEach var="t" items="${tech}">
                        <li>${t}</li>
                    </c:forEach>
                </ul>
            </c:when>
            <c:otherwise>
                <p><em>Sin tecnologías seleccionadas.</em></p>
            </c:otherwise>
        </c:choose>

        <p><a href="form.jsp">Volver al formulario</a></p>
    </body>

    </html>