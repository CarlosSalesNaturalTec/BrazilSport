<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <header class="w3-black w3-card-4 w3-center">
        <img src="images/brazilsport_logo.png" alt="BrazilSport Logomarca" />
    </header>

    <div id="divLogin" class="w3-display-middle">
        <section class="w3-padding w3-center w3-animate-opacity" style="max-width: 300px">
            <h2><strong>Painel de Controle</strong> </h2>
            <hr />

            <p>
                <input id="inputUser" placeholder="Usuário" class="w3-input" type="text" />
            </p>
            <p>
                <input id="inputPwd" placeholder="Senha" class="w3-input" type="password" />
            </p>
            <p>
                <button id="btLogin" class="w3-btn w3-green w3-round" onclick="TentarLogin()" >Entrar</button>
            </p>
            <hr />
            <h4><i class="fa fa-futbol-o" aria-hidden="true"></i>&nbsp;BrazilSport</h4>
        </section>
    </div>


    <div id="divRetornoSenha" class="w3-display-middle" style="display:none">
        <section class="w3-padding w3-center w3-animate-left" style="max-width: 300px">
            <h2><strong>Atenção !</strong> </h2>
            <hr />
            <p>
                <span  id="lblMsgRetorno"></span>
            </p>
            <p>
                <button id="btVoltar" class="w3-btn w3-green w3-round" onclick="LoginVoltar()" >Tentar Novamente</button>
            </p>
            <hr />
            <h4><i class="fa fa-futbol-o" aria-hidden="true"></i>&nbsp;BrazilSport</h4>
        </section>
    </div>

    <script src="Scripts/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="Scripts/codeLogin.js"></script>

</body>
    
</html>
