<%@page language="java" import="java.sql.*" %>

<%
    //Cria variaveis para armazenar as informações digitadas pelo usuario
    String vLogin = request.getParameter("txtLogin") ;
    String vSenha = request.getParameter("txtSenha") ;

    //Variaveis para acessar o banco
    String banco    = "web" ;
    String endereco = "jdbc:mysql://localhost:3306/" + banco ;
    String usuario  = "root" ;
    String senha    = "" ;

    String driver   = "com.mysql.jdbc.Driver" ;

    //Carregar o driver na memoria
    Class.forName( driver ) ;

    //Cria a variavel para conectar com o banco
    Connection conexao ;

    //Abrir a conexao com o banco
    conexao = DriverManager.getConnection(endereco, usuario, senha) ;

    String sql = "SELECT * FROM clientes WHERE email=? and senha=?" ;

    //Cria a Statement para executar o comando no banco
    PreparedStatement stm = conexao.prepareStatement(sql) ;

    stm.setString( 1, vLogin );
    stm.setString( 2, vSenha );

    //Variavel para armazenar as informações que virão do banco
    ResultSet dados = stm.executeQuery() ;

    if ( dados.next() ){
        //LOGIN OK
        session.setAttribute( "usuario" , dados.getString("nome")  ) ;
        response.sendRedirect("pagina_inicial.jsp") ;
    }else{
        //LOGIN incorreto
        out.print("Login incorreto");
    }


%>