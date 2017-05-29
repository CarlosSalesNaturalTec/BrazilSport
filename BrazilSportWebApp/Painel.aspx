<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Painel.aspx.cs" Inherits="Painel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BrazilSport - Painel de Controle</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <!-- Corpo -->
    <div>
        <!-- Menu -->
        <div class="w3-bar w3-light-grey">

            <a class="w3-bar-item w3-small w3-text-blue">
                <asp:Literal ID="lblWelcome" runat="server"></asp:Literal></a>

            <a href="#" class="w3-bar-item w3-button w3-right" onclick="sair()">Sair <i class="fa fa-sign-out"></i></a>

            <div class="w3-dropdown-hover w3-right">
                <button class="w3-button">Relatórios</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Centros de Custos</a>
                </div>
            </div>

            <div class="w3-dropdown-hover w3-right">
                <button class="w3-button">Fnanceiro</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Contas a Pagar</a>
                    <a href="#" class="w3-bar-item w3-button">Contas a Receber</a>
                </div>
            </div>

            <div class="w3-dropdown-hover w3-right">
                <button class="w3-button">Clubes</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Cadastro de Clubes</a>
                    <a href="#" class="w3-bar-item w3-button">Pesquisa</a>
                </div>
            </div>

            <div class="w3-dropdown-hover w3-right">
                <button class="w3-button">Atletas</button>
                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Cadastro de Atletas</a>
                    <a href="#" class="w3-bar-item w3-button">Documentação</a>
                    <a href="#" class="w3-bar-item w3-button">Pesquisa</a>
                </div>
            </div>


        </div>
    </div>

    <!-- page content -->
    <div>
        <iframe src="Home.aspx" width="100%" height="820px" frameborder="0" name="iframe">Atualize seu Navegador!</iframe>
    </div>
    <!-- page content -->

    <!-- Footer -->
    <div class="w3-bottom">
        <div class="w3-bar w3-center w3-bottom w3-black">
            <h6 class="w3-small">Powered by &nbsp;
                <img src="images/brazilsport_logo_small.png" />
            </h6>
        </div>
    </div>

    <script type="text/javascript">
        function sair() {
            var r = confirm("SAIR ?");
            if (r == true) {
                window.open('Default.aspx', '_parent');
            }
        }
    </script>

</body>
</html>
