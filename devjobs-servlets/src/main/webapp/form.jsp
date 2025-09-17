<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>DevJobs — Formulario</title>
    </head>

    <body>
        <h2>Formulario (GET)</h2>
        <form action="hello" method="get">
            <label>Nombre: <input type="text" name="name" required></label><br>
            <label>Email: <input type="email" name="email" required></label><br>
            <fieldset>
                <legend>Tecnologías</legend>
                <label><input type="checkbox" name="tech" value="Java"> Java</label>
                <label><input type="checkbox" name="tech" value="Spring"> Spring</label>
                <label><input type="checkbox" name="tech" value="SQL"> SQL</label>
            </fieldset>
            <button type="submit">Enviar (GET)</button>
        </form>

        <hr>

        <h2>Formulario (POST)</h2>
        <form action="hello" method="post">
            <label>Nombre: <input type="text" name="name" required></label><br>
            <label>Email: <input type="email" name="email" required></label><br>
            <fieldset>
                <legend>Tecnologías</legend>
                <label><input type="checkbox" name="tech" value="Java"> Java</label>
                <label><input type="checkbox" name="tech" value="Spring"> Spring</label>
                <label><input type="checkbox" name="tech" value="SQL"> SQL</label>
            </fieldset>
            <button type="submit">Enviar (POST)</button>
        </form>

        <p><a href="index.jsp">Volver al inicio</a></p>
    </body>

    </html>