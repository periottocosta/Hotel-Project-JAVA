<%-- 
    Document   : cadUsuario
    Created on : 27/02/2013, 09:42:41
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="imagens/favicon.ico" type="image/x-icon" />

        <link rel="stylesheet" type="text/css" href="css/Styles.css">
        <link rel="stylesheet" type="text/css" href="cssMenu/styles.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Cadastro de Usuário</title>
    </head>
    <body>
        <div id="Principal">
            <div id="Conteudo">
                <div id='cssmenu'>
                    <ul>
                        <li class='active'><a href='menu.jsp'><span>Home</span></a></li>
                        <li class='has-sub'><a href='#'><span>Cadastrar</span></a>
                            <ul>
                                <li><a href='cadCliente.jsp'><span>Clientes</span></a></li>
                                <li><a href='FuncionarioControle?cmd=combo'><span>Funcionarios</span></a></li>
                                <li><a href='cadQuarto.jsp'><span>Quartos</span></a></li>
                                <li><a href='novoUsuario.jsp'><span> Usuário</span></a></li>
                                <li><a href='cadFuncao.jsp'><span>Função</span></a></li>
                                <li><a href='cadTurno.jsp'><span>Turno</span></a></li>
                                <li class='last'><a href='cadPerfil.jsp'><span>Perfil</span></a></li>
                            </ul>
                        </li>
                        <li class='has-sub'><a href='#'><span>Pesquisar</span></a>
                            <ul>
                                <li><a href='pesqCliente.jsp'><span>Cliente</span></a></li>
                                <li><a href='pesqFunc.jsp'><span>Funcionario</span></a></li>
                                <li><a href='pesqQuarto.jsp'><span>Quarto</span></a></li>
                                <li><a href='pesqUsuario.jsp'><span> Usuário</span></a></li>
                                <li><a href='FuncaoControle?cmd=comboFuncao'><span>Função</span></a></li>
                                <li><a href='TurnoControle?cmd=comboTurno'><span>Turno</span></a></li>
                                <li class='last'><a href='PerfilControle?cmd=comboPerfil'><span>Perfil</span></a></li>
                            </ul>
                        </li>
                        <li class='has-sub last'><a href='#'><span>Reservar</span></a>
                            <ul>
                                <li><a href='fazReserva.jsp'><span>Fazer Reserva</span></a></li>
                                <li class='last'><a href='pesqReserva.jsp'><span>Pesquisar Reserva</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div id="pequenocad">
                    <form method="post" action="UsuarioControle?cmd=salvar">
                        <fieldset >       

                            <div id="cadPequeno">
                            <legend  class="legendPesq">Cadastro de Usuário</legend>
                                <input  type="hidden" value="${id}" name="id"/><br />
                                <label>Nome :</label><br />
                                <input class="cad"type="text" readonly="readonly" name="nome" value="${nome}"/><br />
                                <label>Perfil</label><br />
                                <select class="select" name="idPerfil">   
                                    <option value="" >
                                        Escolha um Perfil                     
                                    </option>   
                                    <c:forEach var="perfil" items="${requestScope.perfis}">                           
                                        <option value="${perfil.id}" >
                                            ${perfil.tipo}                            
                                        </option>                        
                                    </c:forEach>
                                </select><br />     
                                <label>Login </label><br/>
                                <input class="cad" type="text"  name="login"/><br />
                                <label>Senha :</label><br />
                                <input class="cad" type="text" readonly="readonly" name="senha" value="${senha}"/><br />
                                <label>E-mail</label><br/>
                                <input class="cad" type="text" readonly="readonly" name="email" value="${email}"/><br />
                                <input class="salvarimg" type="submit" title="Salvar Dados" value=""/>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

<