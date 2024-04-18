    <%-- 
        Document   : index
        Created on : 17 abr. 2024, 07:27:15
        Author     : cuati
    --%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tutoriales</title>
    </head>
    <body>
        <h1>Agregar Tutorial</h1>
    <form id="tutorialForm" action="SvAgregar" method="GET">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre"><br><br>

        <label for="url">URL:</label>
        <input type="text" id="url" name="url"><br><br>

        <label for="estado">Estado:</label>
        <select id="estado" name="estado">
            <option value="activo">Activo</option>
            <option value="inactivo">Inactivo</option>
        </select><br><br>

        <label for="prioridad">Prioridad:</label>
        <input type="number" id="prioridad" name="prioridad"><br><br>

        <label for="categoria">Categoría:</label>
        <input type="text" id="categoria" name="categoria"><br><br>

        <input type="submit" value="Agregar">
    </form>

        <h1>Tutoriales</h1>
    <table id="tutorialTable" border="1">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>URL</th>
                <th>Estado</th>
                <th>Prioridad</th>
                <th>Categoría</th>
            </tr>
        </thead>
            <tbody>
               
            </tbody>
        </table>

        <script>
            // Función para agregar un nuevo tutorial
            document.getElementById('tutorialForm').addEventListener('submit', function(event) {
                event.preventDefault(); // Evitar el envío del formulario

                // Obtener los valores del formulario
                var nombre = document.getElementById('nombre').value;
                var url = document.getElementById('url').value;
                var estado = document.getElementById('estado').value;
                var prioridad = document.getElementById('prioridad').value;
                var categoria = document.getElementById('categoria').value;

                // Crear una nueva fila en la tabla para mostrar los datos
                var table = document.getElementById('tutorialTable').getElementsByTagName('tbody')[0];
                var newRow = table.insertRow();
                newRow.innerHTML = '<td>' + nombre + '</td>' +
                                   '<td>' + url + '</td>' +
                                   '<td>' + estado + '</td>' +
                                   '<td>' + prioridad + '</td>' +
                                   '<td>' + categoria + '</td>';
            });
        </script>

    </body>
    </html>
