# Ejecución local en Tomcat 10.1 (Windows)

## Requisitos

- **Java 17** instalado (`java -version` debe mostrar 17.x).
- **Apache Tomcat 10.1.x** descargado y descomprimido (ej.: `C:\Tomcat\apache-tomcat-10.1.46`).

## Build del WAR (desde la raíz del repo)

```powershell
mvn -B -ntp -f devjobs-servlets/pom.xml -DskipTests clean package
```

Se genera: `devjobs-servlets\target\devjobs-servlets.war`.

## Despliegue en Tomcat

1. **Detener (si está corriendo) y ubicarse en /bin**:

```powershell
cd C:\Tomcat\apache-tomcat-10.1.46\bin
.\shutdown.bat
```

2. **Copiar el WAR a `webapps/`** (ajusta la ruta del repo si cambia):

```powershell
Copy-Item -Force "C:\RUTA\A\TU\REPO\devjobs-servlets\target\devjobs-servlets.war" "C:\Tomcat\apache-tomcat-10.1.46\webapps\devjobs-servlets.war"
```

3. **Iniciar Tomcat**:

```powershell
.\startup.bat
# (alternativa con logs en consola) .\catalina.bat run
```

Tomcat desplegará automáticamente el WAR en unos segundos.

## URLs de prueba

- `http://localhost:8080/devjobs-servlets/` → **index.jsp**
- `http://localhost:8080/devjobs-servlets/form.jsp` → **formularios GET/POST**
- El envío del formulario apunta a `/devjobs-servlets/hello` (Servlet) y hace **forward** a **result.jsp**.

## Qué verificar

- Acentos correctos (**UTF-8**) en todas las páginas.
- **GET** y **POST** procesan parámetros y muestran el resultado en `result.jsp`.
- `result.jsp` usa **JSTL** con la URI `jakarta.tags.core` y lista tecnologías con `c:forEach`.

## Troubleshooting rápido

- **Puerto 8080 ocupado**: cierra procesos que lo usen o cambia el puerto en `conf/server.xml`.
- **No despliega**: borra `webapps\devjobs-servlets` y `webapps\devjobs-servlets.war`, copia nuevamente el WAR y reinicia Tomcat.
- **Error JSTL/taglib**: en `result.jsp` debe estar `@taglib prefix="c" uri="jakarta.tags.core"`, y en `pom.xml` **JSTL 3.0.1** (API + implementación).
- **Acentos mal**: en cada JSP agrega `pageEncoding="UTF-8"` y en el Servlet setea `resp.setCharacterEncoding("UTF-8");` y `resp.setContentType("text/html;charset=UTF-8");`.
