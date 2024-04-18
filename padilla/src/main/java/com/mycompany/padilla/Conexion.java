/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.padilla;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author cuati
 */
public class Conexion {
    String name = "nuevo";
    String URL = "jdbc:mysql://localhost:3306/nuevo";
    String usuario = "root";
    String contrasenia = "1085250701";
    String driver = "com.mysql.cj.jdbc.Driver";
    Connection con;     
    public Conexion() {

    }

    public Connection Conectar() {
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            System.out.println("No se encontro el name" + name);
        }
        try {
            // Establece la conexión y almacénala en la variable conexion
            con = DriverManager.getConnection(URL, usuario, contrasenia);
        } catch (SQLException e) {
            System.out.println("Error al conectar" + e.getMessage());
        }
        System.out.println("conexion exitosa: " + con);
        return con;
    }
    public void AgregarTutorial(String Nombre, String Url, String Estado, int Prioridad, int IdCategoria, Connection agregar) {

        if (agregar != null) {
            try {

                CallableStatement stmt = agregar.prepareCall("{call AddTutorialNew(?, ?, ?, ?, ?)}");
                stmt.setString(1, Nombre);
                stmt.setString(2, Url);
                stmt.setString(3, Estado);
                stmt.setInt(4, Prioridad);
                stmt.setInt(5, IdCategoria);
                stmt.execute();
                agregar.close();
                System.out.println("Se agrego con exito ");
            } catch (SQLException e) { // Manejar cualquier error de SQL
                System.out.println("Error al agregar pruebe de nuevo" + e.getMessage());
            }
        } else {

            System.out.println("No se pudo establecer una conexión a la base de datos.");
        }
    }
}
