<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html lang="es">

        <head>
            <title>DevJobs — Formulario</title>
            <%@ include file="/WEB-INF/jsp/includes/head.jspf" %>
        </head>

        <body class="bg-slate-50">
            <c:set var="ctx" value="${pageContext.request.contextPath}" />
            <div class="max-w-3xl mx-auto px-6 py-10">
                <a href="${ctx}/" class="text-indigo-700 hover:underline">← Volver al inicio</a>
                <h2 class="mt-4 text-2xl font-bold text-slate-900">Formulario de candidato</h2>

                <div class="mt-6 grid gap-6">
                    <!-- GET -->
                    <form action="${ctx}/hello" method="get" class="p-6 rounded-2xl bg-white shadow grid gap-4">
                        <h3 class="font-semibold text-slate-700">Enviar (GET)</h3>
                        <label class="grid gap-1">
                            <span class="text-sm text-slate-600">Nombre</span>
                            <input class="rounded-xl border px-3 py-2" type="text" name="name" required>
                        </label>
                        <label class="grid gap-1">
                            <span class="text-sm text-slate-600">Email</span>
                            <input class="rounded-xl border px-3 py-2" type="email" name="email" required>
                        </label>
                        <fieldset class="grid gap-2">
                            <legend class="text-sm text-slate-600">Tecnologías</legend>
                            <label class="inline-flex items-center gap-2"><input type="checkbox" name="tech"
                                    value="Java"> Java</label>
                            <label class="inline-flex items-center gap-2"><input type="checkbox" name="tech"
                                    value="Spring"> Spring</label>
                            <label class="inline-flex items-center gap-2"><input type="checkbox" name="tech"
                                    value="SQL"> SQL</label>
                        </fieldset>
                        <button
                            class="rounded-xl bg-indigo-600 text-white px-4 py-2 font-semibold hover:bg-indigo-700">Enviar
                            (GET)</button>
                    </form>

                    <!-- POST -->
                    <form action="${ctx}/hello" method="post" class="p-6 rounded-2xl bg-white shadow grid gap-4">
                        <h3 class="font-semibold text-slate-700">Enviar (POST)</h3>
                        <label class="grid gap-1">
                            <span class="text-sm text-slate-600">Nombre</span>
                            <input class="rounded-xl border px-3 py-2" type="text" name="name" required>
                        </label>
                        <label class="grid gap-1">
                            <span class="text-sm text-slate-600">Email</span>
                            <input class="rounded-xl border px-3 py-2" type="email" name="email" required>
                        </label>
                        <fieldset class="grid gap-2">
                            <legend class="text-sm text-slate-600">Tecnologías</legend>
                            <label class="inline-flex items-center gap-2"><input type="checkbox" name="tech"
                                    value="Java"> Java</label>
                            <label class="inline-flex items-center gap-2"><input type="checkbox" name="tech"
                                    value="Spring"> Spring</label>
                            <label class="inline-flex items-center gap-2"><input type="checkbox" name="tech"
                                    value="SQL"> SQL</label>
                        </fieldset>
                        <button
                            class="rounded-xl bg-cyan-600 text-white px-4 py-2 font-semibold hover:bg-cyan-700">Enviar
                            (POST)</button>
                    </form>
                </div>
            </div>
        </body>

        </html>