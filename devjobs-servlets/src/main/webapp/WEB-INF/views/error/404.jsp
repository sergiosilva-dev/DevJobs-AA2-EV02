<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <title>404 — No encontrado | DevJobs</title>
        <%@ include file="/WEB-INF/jsp/includes/head.jspf" %>
    </head>

    <body class="bg-slate-50">
        <main class="min-h-screen grid place-items-center p-6">
            <section class="text-center">
                <h1 class="text-6xl font-extrabold text-indigo-600">404</h1>
                <p class="mt-3 text-slate-700">La página que buscas no existe.</p>
                <a href="${pageContext.request.contextPath}/"
                    class="mt-6 inline-block rounded-xl bg-indigo-600 text-white px-5 py-3 font-semibold hover:bg-indigo-700">Volver
                    al inicio</a>
            </section>
        </main>
    </body>

    </html>