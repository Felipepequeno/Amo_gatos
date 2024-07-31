<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amo Gatos Sp</title>
    <link rel="stylesheet" href="./src/reset.css">
    <link rel="stylesheet" href="./src/header.css">
    <link rel="stylesheet" href="./src/main.css">
    <script src="https://kit.fontawesome.com/6a1a716d23.js" crossorigin="anonymous"></script>

</head>

<body>

    <%
        if( session.getAttribute("usuario") == null ) 
        {
            out.print("<h2>Bloqueado</h2>") ;
            out.print("<br><br>") ;
            out.print("Faca o login para acessar") ;
            out.print("<br><br>") ;
            out.print("<a href='login.html'>Fazer Login</a>") ;

        }else {

    %>
    
    <header>
        <div class="logo">
            <a href="index.html">
                <span class="fa fa-heart"></span>
                <span>Amo Gatos </span>
            </a>
        </div>
        <div class="botoes">
            <a href="gatinhos.html">Gatinhos</a>
            <a href="como_ajudar.HTML">Como ajudar</a>
        </div>
    </header>

    <main>
        <div class="formulario">
            <h1>Login</h1>
            <form name="form1" method="post" action="verifica.jsp">
                <h2>Voce esta conectado!</h2>
                <br>
                <h2>Seja bem vindo!</h2>
            </form>
        </div>
        
        <div class="image">
            <img src="<%=request.getContextPath()%>/assets/logo/nao_nos_deixe.png" alt="gato solicitando ajuda">
        </div>

    </main>

    <footer>
        <div class="logo__footer">
            <a href="">
                <span class="fa fa-heart"></span>
                <span>Amo Gatos </span>
            </a>
        </div>
        <div class="insta">
            <a href="https://instagram.com/amogatossp/">
                <span class="fab fa-instagram"></span>
                <span>Instagram</span>
            </a>
        </div>
    </footer>

    <%
        }
    %>

</body>
</html>