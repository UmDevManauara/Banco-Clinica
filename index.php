<?php

    if(isset($_POST["submit_pacientes"]))
    {
        include_once("config.php");

        $nome =  $_POST["nome"];
        $cpf =  $_POST["cpf"];
        $telefone =  $_POST["telefone"];
        $endereco =  $_POST["endereco"];
        $responsavel =  $_POST["responsavel"];
        $descricao =  $_POST["descricao"];
        $genero =  $_POST["genero"];
    
        $result = mysqli_query($conexao, "INSERT INTO pacientes(Nome,CPF,Telefone,Endereço,Responsavel,Observações, Genero)
        VALUES('$nome', '$cpf','$telefone','$endereco', '$responsavel','$descricao','$genero')");
    }

    elseif(isset($_POST["submit_estagiarios"]))
    {
        include_once("config.php");

        $nome =  $_POST["nome"];
        $cpf =  $_POST["cpf"];
        $telefone =  $_POST["telefone"];
        $endereco =  $_POST["endereco"];
        $ra = $_POST["ra"];
        $tipo_de_estagio = $_POST["tipo_estagio"];

        $result = mysqli_query($conexao, "INSERT INTO estagiario(Nome,CPF,Telefone,Endereco,RA,TipoEstagio)
        VALUES('$nome', '$cpf','$telefone','$endereco', '$ra','$tipo_de_estagio')");
    }

    elseif(isset($_POST["submit_psicologos"]))
    {
        include_once("config.php");

        $nome =  $_POST["nome"];
        $cpf =  $_POST["cpf"];
        $telefone =  $_POST["telefone"];
        $email =  $_POST["email"];
        $crp = $_POST["crp"];
        $tipo_de_estagio = $_POST["tipo_estagio"];
        $funcional = $_POST["funcional"];

        $result = mysqli_query($conexao, "INSERT INTO psicologos(Nome,CPF,Telefone,Email,CRP,TipoEstagio,Funcional)
        VALUES('$nome', '$cpf','$telefone','$email', '$crp','$tipo_de_estagio', '$funcional')");
    }

    elseif(isset($_POST["submit_sessoes"]))
    {
        include_once("config.php");

        $id =  $_POST["id"];
        $dia =  $_POST["dia"];
        $hora =  $_POST["hora_sessao"];
        $prazo =  $_POST["prazo"];
        $cpf_sessao = $_POST["cpf_sessao"];
        $ra_sessao = $_POST["ra_sessao"];
        $crp_sessao = $_POST["crp_sessao"];
        $status_paciente = $_POST["status"];
        $observacoes = $_POST["observacoes"];

        $result = mysqli_query($conexao, "INSERT INTO sessoes(ID,Dia,Hora,validade,StatusPaciente,Observacoes,cpf_paciente, crp_psicologo, ra_aluno)
        VALUES('$id','$dia','$hora','$prazo','$status_paciente','$observacoes','$cpf_sessao','$ra_sessao','$crp_sessao' )");
    }

?>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="style.css">
    <title>Cadastro de Clientes</title>
</head>
<body>
    <div class="cadastros">
    <h1>Cadastro Pacientes -----------------</h1>
    <button id="incluirButtonPaciente" onclick="toggleFormulario('pacienteForm', 'incluirButtonPaciente')">Incluir</button>
    <br>
    <h1>Cadastro Estagiários ---------------</h1>
    <button id="incluirButtonEstagiarios" onclick="toggleFormulario('estagiariosForm', 'incluirButtonEstagiarios')">Incluir</button>
    <br>
    <h1>Cadastro Psicologos ----------------</h1>
    <button id="incluirButtonPsicologos" onclick="toggleFormulario('psicologosForm', 'incluirButtonPsicologos')">Incluir</button>
    <br>
    <h1>Sessões --------------------------------</h1>
    <button id="incluirButtonSessoes" onclick="toggleFormulario('SessaoForm', 'incluirButtonSessoes')">Incluir</button>
    <br>
    <h1>Histórico Sessões -------------------</h1>
    <button id="incluirButtonHistoricoSessoes" onclick="toggleFormulario('HistoricoForm', 'incluirButtonHistoricoSessoes')">Incluir</button>
    </div> <!--cadastros-->
    
    <!-- Formulário para preencher as informações do paciente-->
    <form action="index.php" method="POST" id="pacienteForm" style="display: none">
        <h1>Pacientes</h1>

        <label for="cpf">CPF:</label>
        <input type="number" id="cpf" name="cpf" required><br><br>

        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="telefone">Telefone:</label>
        <input type="number" id="telefone" name="telefone" required><br><br>

        <label for="endereco">Endereço:</label>
        <input type="text" id="endereco" name="endereco" required><br><br>

        <label for="responsavel">Responsável (se for menor de idade):</label>
        <input type="text" id="responsavel" name="responsavel"><br><br>

        <label for="descricao">Observações:</label>
        <textarea id="descricao" name="descricao"></textarea><br><br>

        
        <label for="descricao">Gênero:</label>
        <input type="text" id="responsavel" name="genero" oninput="this.value = this.value.toUpperCase()"><br><br>
            

        <input type="submit" value="Salvar" name='submit_pacientes'>
    </form>  <!--paciente-->


    <!-- Formulário para preencher as informações do estagiarios-->
    <form action="index.php" method="POST" id="estagiariosForm" style="display: none">
        <h1>Estagiários</h1>
        <label for="cpf">CPF:</label>
        <input type="number" id="cpf" name="cpf" required><br><br>

        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="endereco">Endereço:</label>
        <input type="text" id="endereco" name="endereco" required><br><br>

        <label for="telefone">Telefone:</label>
        <input type="text" id="telefone" name="telefone" required><br><br>

        <label for="r-a">R.A.:</label>
        <input type="text" id="r-a" name="ra"><br><br>

        <label for="tipo_estagio">Tipo de estágio:</label>
        <input type="text" id="tipo_estagio" name="tipo_estagio" required><br><br>

        <input type="submit" value="Salvar" name='submit_estagiarios'>
    </form>  <!--estagiarios-->

    
    <!-- psicologos-->
    <form action="index.php" method="POST" id="psicologosForm" style="display: none">
        <h1>Psicólogos</h1>
        <label for="cpf">CPF:</label>
        <input type="text" id="cpf" name="cpf" required><br><br>

        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="telefone">Telefone:</label>
        <input type="text" id="telefone" name="telefone" required><br><br>

        <label for="email">E-mail:</label>
        <input type="text" id="email" name="email" required><br><br>

        <label for="crp">CRP:</label>
        <input type="text" id="crp" name="crp" required><br><br>

        <label for="tipo_estagio">Tipo de estágio:</label>
        <input type="text" id="tipo_estagio" name="tipo_estagio" required><br><br>

        <label for="funcional">Funcional:</label>
        <input type="text" id="tipo_estagio" name="funcional" required><br><br>

        <input type="submit" value="Salvar" name='submit_psicologos'>
    </form>  <!--psicologos-->

    
    <!-- sessão-->
    <form action="index.php" method="POST" id="SessaoForm" style="display: none">
        <h1>Sessões</h1>

        <label for="id">ID:</label>
        <input type="number" id="id" name="id" required><br><br>

        <label for="dia">Dia da sessão(dd/mm/aa):</label>
        <input type="date" id="dia" name="dia" required><br><br>

        <label for="dados">Hora da sessão(HH/mm):</label>
        <input type="time" id="responsavel" name="hora_sessao"><br><br>

        <label for="prazo">Prazo de validade(Ano):</label>
        <input type="number" id="prazo" name="prazo" required><br><br>

        <label for="prazo">CPF do paciente:</label>
        <input type="number" id="cpf_sessao" name="cpf_sessao" required><br><br>

        <label for="ra_sessao">RA estagiário:</label>
        <input type="text" id="ra_sessao" name="ra_sessao" required><br><br>

        <label for="prazo">CRP Psicólogo:</label>
        <input type="number" id="crp_sessao" name="crp_sessao" required><br><br>


        <label for="status">Status do paciente (Ativo/Inativo):</label>
        <textarea type="text" id="stattus"  name="status" oninput="this.value = this.value.toUpperCase()"></textarea><br><br>

        <label for="observacoes">Observações:</label>
        <textarea type="text" id="observacoes" name="observacoes"></textarea><br><br>

        

        <input type="submit" value="Salvar" name='submit_sessoes'>
    </form>  <!--sessão-->

    
    <!-- historico sessão-->
    <form action="index.php" method="POST" id="HistoricoForm" style="display: none">
        <h1>Histórico Sessões</h1>

        <label for="dadosSessao">Dados da sessão:</label>
        <input type="text" id="dadosSessao" name="dadosSessao" required><br><br>

        <label for="observacao">Observação:</label>
        <textarea id="observacao" name="observacao"></textarea><br><br>

        <input type="submit" value="Salvar" name='submit'>
    </form>  <!--hostorico sessão-->

    <script src="script.js"></script>
    

</body>
</html>
