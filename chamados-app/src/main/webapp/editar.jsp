<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ordem de Serviços</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <div id="title">
        <br>
        <h2>Ordem de Serviços</h2>
        <br><br><br>
    </div>
    <div id="form">
        
        <form action="editarChamado">
    id = <input type="text" name="id" readonly="readonly" value="<% out.print(request.getAttribute("id")); %>" style="width: 30px; background-color: rgb(255, 255, 255); border-radius: 40px; border: none;"> 
    <br><br>
    Setor:<input type="text" name="setor" readonly="readonly" required value="<% out.print(request.getAttribute("setor")); %>">
    Equipamento:<input type="text" name="equipamento" value="<% out.print(request.getAttribute("equipamento")); %>">
    Motivo:<input type="text" name="motivo" value="<% out.print(request.getAttribute("motivo")); %>">
    
    <br><br>
    
    Tipo de serviço:<input type="text" name="tipo" value="<% out.print(request.getAttribute("tipo")); %>">

    Causa:<input type="text" name="causa" value="<% out.print(request.getAttribute("causa")); %>">

    <br><br> <br>

    <textarea name="descricao" placeholder="Descrição"><%= request.getAttribute("descricao") %></textarea>
    
    <br><br>

    <textarea name="evitado" placeholder="Como poderia ser evitado e como sou informado?"><%= request.getAttribute("evitado") %></textarea>
    
    <br><br>
    
    <textarea name="observacao" placeholder="Observação"><%= request.getAttribute("observacao") %></textarea>
	
	<br><br>

    <div id="ocorrencia-box">
    <div id="ocorrencia-inicio">
        <p>
        <h3>início da ocorrência:</h3> <br>
        Data: <input type="text" name="dataocorrencia" readonly="readonly" value="<% out.print(request.getAttribute("dataocorrencia")); %>">
        Hora da ocorrência: <input type="time" name="horaocorrencia" readonly="readonly" value="<% out.print(request.getAttribute("horaocorrencia")); %>">
        </p>
    </div>
    
        <div id="ocorrencia-section">
            <h3 >Resolução</h3>
        Data de Início:<input type="date" name="datainicio" value="<% out.print(request.getAttribute("datainicio")); %>">
        Hora de Início:<input type="time" name="horainicio" value="<% out.print(request.getAttribute("horainicio")); %>">
        <br><br>
        Data de término:<input type="date" name="datatermino" value="<% out.print(request.getAttribute("datatermino")); %>">
        Hora de término:<input type="time" name="horatermino" value="<% out.print(request.getAttribute("horatermino")); %>">
        <br><br>
        </div>
        <p> Operador: <input type="text" name="operador" value="<% out.print(request.getAttribute("operador")); %>"> 
            Técnico: <input type="text" name="tecnico" value="<% out.print(request.getAttribute("tecnico")); %>">
        </p>
</div>
    <br><br>

    <button type="submit">Salvar</button>

</form>
</div>
</body>
</html>