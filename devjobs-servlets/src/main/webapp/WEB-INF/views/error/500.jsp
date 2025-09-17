<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
        <title>500 — Error del servidor | DevJobs</title>
        <%@ include file="/WEB-INF/jsp/includes/head.jspf" %>
    </head>

    <body class="bg-slate-50">
        <main class="min-h-screen grid place-items-center p-6">
            <section class="text-center">
                <h1 class="text-6xl font-extrabold text-rose-600">500</h1>
                <p class="mt-3 text-slate-700">Ocurrió un error inesperado.</p>
                <a href="${pageContext.request.contextPath}/"
                    class="mt-6 inline-block rounded-xl bg-slate-900 text-white px-5 py-3 font-semibold hover:bg-black">Volver
                    al inicio</a>
                <p class="mt-4 text-xs text-slate-500">Si el problema persiste, contacta al administrador.</p>
            </section>
        </main>
    </body>

    </html>