<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html lang="es">

        <head>
            <title>DevJobs — Inicio</title>
            <%@ include file="/WEB-INF/jsp/includes/head.jspf" %>
        </head>

        <body class="bg-slate-50">
            <c:set var="ctx" value="${pageContext.request.contextPath}" />
            <header class="bg-gradient-to-r from-indigo-600 to-cyan-500 text-white">
                <div class="max-w-5xl mx-auto px-6 py-10">
                    <div class="flex items-center gap-3">
                        <img src="${ctx}/assets/favicon.svg" alt="DevJobs" class="w-8 h-8 rounded-lg shadow" />
                        <h1 class="text-3xl sm:text-4xl font-extrabold">DevJobs — Módulo Servlets/JSP</h1>
                    </div>
                    <p class="mt-3 text-white/90">
                        Checklist SENA: formularios HTML → Servlet (GET/POST) → JSP con JSTL.
                    </p>
                    <div class="mt-6">
                        <a href="${ctx}/form.jsp"
                            class="inline-flex items-center gap-2 rounded-xl bg-white text-slate-900 px-5 py-3 font-semibold shadow hover:shadow-md">
                            Ir al formulario de ejemplo
                            <span aria-hidden>→</span>
                        </a>
                    </div>
                </div>
            </header>

            <main class="max-w-5xl mx-auto px-6 py-10">
                <div class="grid sm:grid-cols-3 gap-6">
                    <div class="p-5 rounded-2xl bg-white shadow">
                        <h3 class="font-semibold">HTML</h3>
                        <p class="text-sm text-slate-600 mt-1">Campos, validación básica y accesibilidad.</p>
                    </div>
                    <div class="p-5 rounded-2xl bg-white shadow">
                        <h3 class="font-semibold">Servlets</h3>
                        <p class="text-sm text-slate-600 mt-1">Recepción de parámetros por GET y POST.</p>
                    </div>
                    <div class="p-5 rounded-2xl bg-white shadow">
                        <h3 class="font-semibold">JSP/JSTL</h3>
                        <p class="text-sm text-slate-600 mt-1">Render seguro con etiquetas JSTL.</p>
                    </div>
                </div>
            </main>
        </body>

        </html>