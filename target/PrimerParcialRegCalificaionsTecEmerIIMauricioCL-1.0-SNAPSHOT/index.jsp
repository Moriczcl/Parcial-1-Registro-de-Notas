<%-- 
    Document   : index
    Created on : 27 sep. de 2022, 20:37:14
    Author     : MoriczCL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset>
        <h1>PRIMER PARCIAL TEM-742</h1>
        <h4>Nombre: Mauricio Cauna Larico</h4>
        <h4>Carnet: 8388377</h4>
        </fieldset>
        <h1>REGISTRO DE CALIFICIONES</h1>
        <fieldset>
             
        <form action="RCservlet" method="post">
            <fieldset style="border-width: 1px; border: solid; border-color: #000000;padding: 40px">  
            <table>
                <tbody> 
                    <tr>                      
                        <th>Materia:</th>
                        <th><select type='text' name='materia'>
                        <option >Programacion II</option>
                        <option >Programacion I</option>
                        <option >Tecnologias Emergentes I</option>
                        <option >Tecnologias Emergentes II</option>
                        
                            </select>  </th>                  
                    </tr>
                    <tr>
                        <th>Nombre del Estudiante:</th>
                        <th><input type="text" name="nombre"value=""></th>
                    </tr>
                    <tr>
                        <th>Primer Parcial(sobre 30pts):</th>
                        <th><input type="number" name="primerp"value=""max="30"></th>
                    </tr>
                    <tr>
                        <th>Segundo Parcial(sobre 30pts:</th>
                        <th><input type="number" name="segundop"value=""max="30"></th>
                    </tr>
                    <tr>
                        <th>Examen Final(sobre 40pts):</th>
                        <th><input type="number" name="tercerp"value=""max="40"></th>
                    </tr>
                    
                </tbody>
            </table>
            </fieldset>
            <input type='submit' value='Enviar'></input>
        </form>                
            </fieldset>
    </body>
</html>
