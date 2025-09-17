<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html lang="es">

        <head>
            <title>DevJobs — Resultado</title>
            <%@ include file="/WEB-INF/jsp/includes/head.jspf" %>
        </head>

        <body class="bg-slate-50">
            <c:set var="ctx" value="${pageContext.request.contextPath}" />
            <div class="max-w-2xl mx-auto px-6 py-10">
                <a href="${ctx}/form.jsp" class="text-indigo-700 hover:underline">← Volver al formulario</a>

                <div class="mt-4 p-6 rounded-2xl bg-white shadow">
                    <h2 class="text-2xl font-bold text-slate-900">Datos recibidos</h2>
                    <div class="mt-4 grid gap-2 text-slate-700">
                        <p><span class="font-semibold">Método:</span> ${method}</p>
                        <p><span class="font-semibold">Nombre:</span> ${name}</p>
                        <p><span class="font-semibold">Email:</span> ${email}</p>
                        <c:choose>
                            <c:when test="${not empty tech}">
                                <div class="mt-2">
                                    <span class="font-semibold">Tecnologías:</span>
                                    <ul class="list-disc list-inside">
                                        <c:forEach var="t" items="${tech}">
                                            <li>${t}</li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <p class="italic text-slate-500">Sin tecnologías seleccionadas.</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </body>

        </html>