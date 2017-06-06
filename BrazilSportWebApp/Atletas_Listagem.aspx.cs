using System;
using System.Text;

public partial class Atletas_Listagem : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();
    int TotaldeRegistros = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

        //caso não esteja logado, gera um erro em tempo de execução e vai para página de login
        string iduser = Session["UserID"].ToString();

        montaCabecalho();
        dadosCorpo();
        montaRodape();

        Literal1.Text = str.ToString();

    }

    private void montaCabecalho()
    {
        string stringcomaspas = "<table id=\"tabela\" class=\"table table-striped table-hover \">" +
            "<thead>" +
            "<tr>" +
            "<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NOME</th>" +
            "<th>APELIDO</th>" +
            "<th>CLUBE</th>" +
            "<th>NASCIMENTO</th>" +
            "<th>POSIÇÃO</th>" +
            "</tr>" +
            "</thead>" +
            "<tbody>";
        str.Clear();
        str.Append(stringcomaspas);
    }

    private void dadosCorpo()
    {
        string stringselect = "select tbl_Atletas.ID_Atleta, tbl_Atletas.nome, tbl_Atletas.apelido, tbl_Clubes.nome as Clube, " +
                "tbl_Atletas.nascimento, tbl_Atletas.posicao " +
                "from tbl_Atletas INNER JOIN tbl_Clubes ON Tbl_Atletas.ID_Clube = Tbl_Clubes.ID_Clube " +
                "order by Tbl_Atletas.Nome";
        OperacaoBanco operacao = new OperacaoBanco();
        System.Data.SqlClient.SqlDataReader dados = operacao.Select(stringselect);

        while (dados.Read())
        {
            string Coluna0 = Convert.ToString(dados[0]); //id atleta
        
            string Coluna1 = Convert.ToString(dados[1]);
            string Coluna2 = Convert.ToString(dados[2]);
            string Coluna3 = Convert.ToString(dados[3]);
            string Coluna4 = Convert.ToString(dados[4]);
            string Coluna5 = Convert.ToString(dados[5]);
           
            string bt1 = "<a class='w3-btn w3-round w3-hover-blue' href='Atletas_Ficha.aspx?v1=" + Coluna0 + "'><i class='fa fa-id-card-o' aria-hidden='true'></i></a>";

            string stringcomaspas = "<tr>" +
                "<td>" + bt1 + Coluna1 + "</td>" +
                "<td>" + Coluna2 + "</td>" +
                "<td>" + Coluna3 + "</td>" +
                "<td>" + Coluna4 + "</td>" +
                "<td>" + Coluna5 + "</td>" +
                "</tr>";

            str.Append(stringcomaspas);
            TotaldeRegistros += 1;
        }
        ConexaoBancoSQL.fecharConexao();

        lblTotalRegistros.Text = TotaldeRegistros.ToString();

    }

    private void montaRodape()
    {
        string footer = "</tbody></table>";
        str.Append(footer);
    }
}