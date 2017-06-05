<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Painel.aspx.cs" Inherits="Painel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BrazilSport - Painel de Controle</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

    <!-- Menu -->
    <div> 
        <div class="w3-bar w3-black">

            <a href="#" class="w3-bar-item w3-btn w3-hover-green w3-right" onclick="sair()">Sair <i class="fa fa-sign-out"></i></a>

            <div class="w3-dropdown-hover w3-right">
                <button class="w3-btn w3-hover-green">Relatórios</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Centros de Custos</a>
                </div>
            </div>

            <div class="w3-dropdown-hover w3-right">
                <button class="w3-btn w3-hover-green">Fnanceiro</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Contas a Pagar</a>
                    <a href="#" class="w3-bar-item w3-button">Contas a Receber</a>
                </div>
            </div>

            <div class="w3-dropdown-hover w3-right">
                <button class="w3-btn w3-hover-green">Clubes</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Cadastro de Clubes</a>
                    <a href="#" class="w3-bar-item w3-button">Pesquisa</a>
                </div>
            </div>

            <div class="w3-dropdown-hover w3-right">
                <button class="w3-btn w3-hover-green">Atletas</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="Atletas_Listagem.aspx" target="iframe" class="w3-bar-item w3-button">Cadastro de Atletas</a>
                    <a href="#" class="w3-bar-item w3-button">Documentação</a>
                    <a href="#" class="w3-bar-item w3-button">Pesquisa</a>
                </div>
            </div>

            <a href="Home.aspx" target="iframe" class="w3-bar-item w3-btn w3-hover-green w3-right"><i class="fa fa-home"></i></a>

        </div>
    </div>

    <!-- page content -->
    <div>
        <iframe src="Home.aspx" width="100%" height="820px" frameborder="0" name="iframe">Atualize seu Navegador!</iframe>
    </div>

    <!-- Footer -->
    <div class="w3-bottom">
        <div class="w3-bar w3-black">
            <div class="w3-left">
                <h6 class="w3-small" style="margin-left:14px"><i class="fa fa-user w3-small w3-text-green"></i>&nbsp;Usuário: <asp:Label ID="lblWelcome" CssClass="w3-text-green" runat="server"></asp:Label></h6>
            </div>
            <div class="w3-right">
                <h6 class="w3-small" style="margin-right:14px" ><img src="images/brazilsport_logo_small.png" class="w3-animate-fading" /></h6>
            </div>
        </div>
    </div>

    <!-- Scripts Diversos -->
    <script type="text/javascript" src="Scripts/codePainel.js"></script>

</body>
</html>
