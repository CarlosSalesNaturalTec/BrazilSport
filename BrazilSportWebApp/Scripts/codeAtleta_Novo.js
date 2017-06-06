document.getElementById("input1").focus();

function SalvarRegistro() {

    document.getElementById("btSalvar").style.cursor = "progress";

    var v1 = document.getElementById("input1").value
    var v2 = document.getElementById("input2").value
    var v3 = document.getElementById("input3").value
    var v4 = document.getElementById("input4").value
    var v5 = document.getElementById("input5").value
    var v6 = document.getElementById("input6").value
    var v7 = document.getElementById("input7").value
    var v8 = document.getElementById("input8").value


    if (v1 == "") {
        alert("Informe Nome do Atleta");
        document.getElementById("input1").focus();
        return;
    }

    $.ajax({
        type: "POST",
        url: "WebService.asmx/AtletaSalvar",
        data: '{param1: "' + v1 + '", param2: "' + v2 + '", param3: "' + v3 + '", param4: "' + v4 + '", param5: "' + v5 +
            '", param6: "' + v6 + '", param7: "' + v7 + '", param8: "' + v8 + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            document.getElementById("btSalvar").style.cursor = "default";
            var linkurl = response.d;
            window.location.href = linkurl;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}

function cancelar() {
    var linkurl = "Atletas_Listagem.aspx";
    window.location.href = linkurl;
}