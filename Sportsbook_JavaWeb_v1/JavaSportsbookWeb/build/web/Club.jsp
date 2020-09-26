<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>        
        <div class="d-flex">
            <div class="col-sm-3">
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Club" method="POST">
                            <div class="form-group">
                                <label>NIT</label>
                                <input type="text" value="${club.getNit()}" name="txtNit" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nombre</label>
                                <input type="text" value="${club.getNom()}" name="txtNombre" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Provincia</label>
                                <input type="text" value="${club.getProvincia()}" name="txtProvincia" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Direccion</label>
                                <input type="text" value="${club.getDireccion()}" name="txtDireccion" class="form-control">
                            </div>  
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" value="${club.getEmail()}" name="txtEmail" class="form-control">
                            </div>  
                            
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="text" value="${club.getTel()}" name="txtText" class="form-control">
                            </div>  
                    
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-primary">
                        </form>
                    </div>                         
                </div> 
            </div>              
            <div class="col-sm-9">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover table-responsive">
                            <thead>
                                <tr>
                                    <th>Nit</th>
                                    <th>Nombres</th>
                                    <th>Provincia</th>
                                    <th>Direccion</th>
                                    <th>Email</th>  
                                    <th>Telefono</th>  
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="c" items="${clubs}">
                                    <tr>
                                        <td>${c.getNit()}</td>
                                        <td>${c.getNom()}</td>
                                        <td>${c.getProvincia()}</td>
                                        <td>${c.getDireccion()}</td>
                                        <td>${c.getEmail()}</td>   
                                        <td>${c.getTel()}</td>
                                        <td>
                                            <a class="btn btn-success" href="Controlador?menu=Cliente&accion=Editar&id=${em.getNit()}">Editar</a>
                                            <a class="btn btn-danger" href="Controlador?menu=Cliente&accion=Delete&id=${em.getNit()}">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>      
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
