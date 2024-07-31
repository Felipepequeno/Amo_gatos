<%@page language="java" import="java.sql.*" %>

<%

    String vnome = request.getParameter ("firstname") ;
    String vsobrenome = request.getParameter ("lastname") ;
    String vemail = request.getParameter ("email");
    String vcelular = request.getParameter ("number");
    String vsenha = request.getParameter ("password");

    String database = "web" ;
    String endereco = "jdbc:mysql://localhost:3306/" + database ;
    String usuario = "root" ;
    String senha = "" ;

    String driver = "com.mysql.jdbc.Driver" ;

    Class.forName (driver) ;

    Connection conexao ;

    conexao = DriverManager.getConnection(endereco ,usuario, senha) ;

    String sql = "INSERT INTO clientes (nome, sobrenome, email, celular, senha) values (?,?,?,?,?)" ;

    PreparedStatement stm = conexao.prepareStatement(sql) ;
    stm.setString(1, vnome );
    stm.setString(2, vsobrenome );
    stm.setString(3, vemail );
    stm.setString(4, vcelular );
    stm.setString(5, vsenha );

    stm.execute();
    stm.close();

    out.print("<h2> Cadastro confirmado com sucesso!</h2>");
    out.print("<br><br>");
    out.print("<a href='index.html'>Voltar</a>");
%>  