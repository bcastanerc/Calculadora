<%@ page import="Calculador.Calculadora"%>

<DOCTYPE html>
  <html>
    <head>
      <title>Calculadora Web</title>
      <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <%
    	Calculadora c = new Calculadora();
    	String boton=request.getParameter("boton");
    	if(boton == null) boton = "";
    	String acumulado = request.getParameter("acumulado");
    	if(acumulado == null) acumulado = "";
    	if(boton.equals("CE")) acumulado = "";
    	acumulado = acumulado+boton;
    	if(boton.equals("=")) acumulado = c.Spliting(acumulado);
    	
    	
    %>
    <body>
      <div class="contenedor">
        <form method="GET">
          <table>
            <tr>
              <td colspan="4">
                <input class="text" id="texto" name="acumulado" type="textfield" value="<%out.print(acumulado);%>" />
                <input type="hidden" value="<%out.print(acumulado); %>" name="acumulado"/>
              </td>
            </tr>
            <tr>
              <td><input id="1" type="submit" name="boton" value="1" /></td>
              <td><input id="2" type="submit" name="boton" value="2" /></td>
              <td><input id="3" type="submit" name="boton" value="3" /></td>
              <td><input id="multiplicacion" name="boton" type="submit" value="*" /></td>
            </tr>
            <tr>
              <td><input id="4" type="submit" name="boton" value="4" /></td>
              <td><input id="5" type="submit" name="boton" value="5" /></td>
              <td><input id="6" type="submit" name="boton" value="6" /></td>
              <td><input id="menos" type="submit" name="boton" value="-" /></td>
            </tr>
            <tr>
              <td><input id="7" type="submit" name="boton" value="7" /></td>
              <td><input id="8" type="submit" name="boton" value="8" /></td>
              <td><input id="9" type="submit" name="boton" value="9" /></td>
              <td><input id="suma" type="submit" name="boton" value="S" /></td>
            </tr>
            <tr>
              <td><input id="clear" type="submit" name="boton" value="CE" /></td>
              <td><input id="0" type="submit" name="boton" value="0" /></td>
              <td><input id="igual" type="submit" name="boton" value="=" /></td>
              <td><input id="division" type="submit" name="boton" value="/" /></td>
            </tr>
          </table>
        </form>
      </div>
    </body>
    </html>
    </DOCTYPE>
