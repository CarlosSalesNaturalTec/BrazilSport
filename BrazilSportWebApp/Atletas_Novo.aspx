<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Atletas_Novo.aspx.cs" Inherits="Atletas_Novo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro de Atleta - BrazilSport</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        body {
            background-image: url("images/fundo.jpg");
            background-repeat: repeat;
        }
    </style>

</head>
<body>

    <div>
        <header class="w3-container w3-green w3-center w3-padding-small">
            <h4><strong>Novo Atleta</strong></h4>
        </header>
    </div>
    
    <div class="w3-sidebar w3-bar-block w3-green w3-card-2" style="width: 150px">
        <br />
        <button class="w3-bar-item w3-button tablink w3-hover-light-green" onclick="openLink(event, 'grupo1')"><i class="fa fa-user-o" aria-hidden="true"></i>&nbsp;Dados Pessoais</button>
        <button class="w3-bar-item w3-button tablink w3-hover-light-green" onclick="openLink(event, 'grupo2')"><i class="fa fa-futbol-o" aria-hidden="true"></i>&nbsp;Clube</button>
        <button class="w3-bar-item w3-button tablink w3-hover-light-green" onclick="openLink(event, 'grupo3')"><i class="fa fa-address-card-o" aria-hidden="true"></i>&nbsp;Documentos</button>
        <button class="w3-bar-item w3-button tablink w3-hover-light-green" onclick="openLink(event, 'grupo4')"><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Características</button>
    </div>

    <div style="margin-left: 150px">

        <div id="grupo1" class="w3-container grupo w3-animate-left" style="display: block">
            <h3><i class="fa fa-user-o" aria-hidden="true"></i>&nbsp;Dados Pessoais</h3>
            <hr /><br />
            <form class="form-horizontal">

                <fieldset>

                    <div class="form-group">

                        <label for="input1" class="col-md-1 control-label">Nome</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" id="input1">
                        </div>

                        <label for="input2" class="col-md-1 control-label">Apelido</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="input2">
                        </div>

                    </div>

                    <div class="form-group">

                        <label for="input3" class="col-md-1 control-label">Nascimento</label>
                        <div class="col-md-2">
                            <input type="date" class="form-control" id="input3">
                        </div>

                        <label for="input4" class="col-md-1 control-label">Posição</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="input4">
                        </div>

                        <label for="input5" class="col-md-1 control-label">Registro CBF</label>
                        <div class="col-md-2">
                            <input type="text" class="form-control" id="input5">
                        </div>

                    </div>

                    <div class="form-group">

                        <label for="input6" class="col-md-1 control-label">Clube</label>
                        <div class="col-md-3">
                            <input type="text" class="form-control" id="input6">
                        </div>

                        <label for="input7" class="col-md-1 control-label">Inicio Contrato</label>
                        <div class="col-md-2">
                            <input type="date" class="form-control" id="input7">
                        </div>

                        <label for="input8" class="col-md-1 control-label">Final Contrato</label>
                        <div class="col-md-2">
                            <input type="date" class="form-control" id="input8">
                        </div>

                    </div>

                    <hr />

                    <div class="form-group">
                        <div class="col-md-4 col-md-offset-1">
                            <button type="button" class="w3-btn w3-round w3-border w3-red" onclick="cancelar()"><i class="fa fa-undo"></i>&nbsp;CANCELAR</button>
                            <button type="button" class="w3-btn w3-round w3-border w3-green" onclick="SalvarRegistro()" id="btSalvar"><i class="fa fa-save"></i>&nbsp;&nbsp;&nbsp;SALVAR&nbsp;&nbsp;&nbsp;&nbsp;</button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>

        <div id="grupo2" class="w3-container grupo w3-animate-left" style="display: none">
            <h3><i class="fa fa-futbol-o" aria-hidden="true"></i>&nbsp;Clube</h3>
        </div>

        <div id="grupo3" class="w3-container grupo w3-animate-left" style="display: none">
            <h3><i class="fa fa-address-card-o" aria-hidden="true"></i>&nbsp;Documentos</h3>
        </div>

        <div id="grupo4" class="w3-container grupo w3-animate-left" style="display: none">
            <h3><i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;Características</h3>
        </div>

    </div>

    <script>
        function openLink(evt, animName) {
            var i, x, tablinks;
            x = document.getElementsByClassName("grupo");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < x.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" w3-light-green", "");
            }
            document.getElementById(animName).style.display = "block";
            evt.currentTarget.className += " w3-light-green";
        }
    </script>







    <!-- Scripts Diversos  -->
    <script type="text/javascript" src="Scripts/codeAtleta_Novo.js"></script>

</body>
</html>
