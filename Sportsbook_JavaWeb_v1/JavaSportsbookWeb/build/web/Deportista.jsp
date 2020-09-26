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
                <h3>Welcome Deportista!</h3>
                <div class="card">
                    <div class="card-body">
                        <form action="Controlador?menu=Deportista" method="POST">
                            <div class="form-group">
                                <label>ID:</label>
                                <input type="text" value="${deportista.getId()}" name="txtId" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nombres:</label>
                                <input type="text" value="${deportista.getNom()}" name="txtNombres" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Categoria</label>
                                <input type="text" value="${deportista.getCategoria()}" name="txtCategoria" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Posicion</label>
                                <input type="text" value="${deportista.getPosicion()}" name="txtPosicion" class="form-control">
                            </div>  
                            <div class="form-group">
                                <label>Telefono</label>
                                <input type="text" value="${deportista.getTel()}" name="txtTelefono" class="form-control">
                            </div> 
                                <div class="form-group">
                                <label>Direccion</label>
                                <input type="text" value="${deportista.getDireccion()}" name="txtDireccion" class="form-control">
                            </div>  
                            <input type="submit" name="accion" value="Agregar" class="btn btn-primary">
                            <input type="submit" name="accion" value="Actualizar" class="btn btn-primary">
                        </form>
                    </div>                  
                </div>
            </div>                     
            <div class="col-sm-10">
                <div class="card">
                    <div class="card-body">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nombres</th>
                                    <th>Categoria</th>
                                    <th>Posicion</th>                                    
                                    <th>Telefono</th>   
                                    <th>Direccion</th>  
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody> 
                                <c:forEach var="d" items="${deportistas}">
                                    <tr>
                                        <td>${d.getId()}</td>                                      
                                        <td>${d.getNom()}</td>
                                        <td>${d.getCategoria()}</td>
                                        <td>${d.getPosicion()}</td>
                                        <td>${d.getTel()}</td>  
                                        <td>${d.getDireccion()}</td> 
                                        <td>
                                            <a class="btn btn-success" href="Controlador?menu=Deportista&accion=Editar&id=${em.getId()}">Editar</a>
                                            <a class="btn btn-danger" href="Controlador?menu=Deportista&accion=Delete&id=${em.getId()}">Delete</a>
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

