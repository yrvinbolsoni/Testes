<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Testes.WebForms.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
 
<body>
    <form id="form1" runat="server">
        <div>
            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
            <script src="../Scripts/jquery-3.3.1.min.js"></script>
<script>
    PieArmardorExp();

    //carregando o pacote primordial (em inglês, core) da versão mais recente do google charts
    google.charts.load('current', { 'packages': ['corechart'] });

  function PieArmardorExp() {
    $.ajax({
        url: "Default.aspx/ArmadorExpGraphic",
        data: "",
        dataType: "json",
        type: "POST",
        contentType: "application/json; chartset=utf-8",
        success: function (data) {
            CharArmardorExp = data.d;
        },
        error: function () {
            alert("Error loading data! Please try again.");
        }
    }).done(function () {
        google.setOnLoadCallback(drawChartPieExp);
    });
}


function drawChartPieExp() {
    var data = google.visualization.arrayToDataTable(CharArmardorExp);

    //criando array de cores basiado em valores 
    var slicesColor = {};
    // setando valores para o array de cores

    var myColors = {
    'EVERGREEN': '#008000',
    'MAERSK LINE': '#4682B4',
    'MSC': '#FFD700',
    'HAPAG LLOYD': '#800080',
    'CMA-CGM': '#FF8C00',
    'HAMBURG-SUD': '#FF0000',
    'ONE': '#FF69B4',
    'COSCO': '#8B4513',
    'PIL': '#90EE90',
    'SAFMARINE': '#87CEFA'
}

    // define uma  palheta de cores confome o array 
    // algo muito legal é que o numero do array é justamente o nome dos Armadores e isso facilita e muito para inserir as cores 
    for (var i = 0; i < data.getNumberOfRows(); i++) {
        slicesColor[i] = {
            offset: (i == 0 || data.getValue(i, 0) == 'EVERGREEN' ? "0.4" : "0.0"),
            color: myColors[data.getValue(i, 0)]
        };
    }

    var options = {
        title: "Top FIVE exportação ",
         height: 500,
        width: 1000,
        'is3D': true,
        'legend': 'labeled', fontSize: 10,
        'pieSliceText': 'none',
        legend: { position: 'labeled', labeledValueText: 'value' },
        tooltip: {
            text: 'value'
        },
        slices: slicesColor,
        pointSize: 5
    };

    var columnChartEXP = new google.visualization.PieChart(document.getElementById('PieArmadorExportacao'));
    columnChartEXP.draw(data, options);



     var dataColumn = google.visualization.arrayToDataTable(CharArmardorExp);
            var dados = []

            // colocando os dados em um array para ser usado no dataTable
            // da mesma forma pode ser usado no grafico de coluna 
            for (var i = 0; i < dataColumn.getNumberOfRows() ; i++) {
                dados[i] = [dataColumn.getValue(i, 0), dataColumn.getValue(i, 1), dataColumn.getValue(i, 1), myColors[dataColumn.getValue(i, 0)]]
            }


            // criando data table para a coluna 
            // nessa parte temos que fazer uma desconstrução do array datable para que possamos inserir as cores corretamentes 
            var tabela = new google.visualization.DataTable();
            tabela.addColumn('string', 'Armador');
            tabela.addColumn('number', 'Teus');
            tabela.addColumn({ type: 'number', role: 'annotation' }); // cria uma anotação para mostrar o numero em cima da coluna
            tabela.addColumn({ type: 'string', role: 'style' });

            // Associando valores 
            tabela.addRows(dados);

      
            var optionsColunm = {
                title: 'Top FIve ' ,
                height: 500,
                width: 1000,
                vAxis: { gridlines: { count: 0 }, textPosition: 'none' }, // retira o valor da coluna a direita
                legend: 'none' , // retira o valor da legenda
            };

            var columnChart = new google.visualization.ColumnChart(document.getElementById('chart_Col'));
    columnChart.draw(tabela, optionsColunm);


 
    ///////////////// fim PIE exportação////////////////////////////////////////////////////////////////////////////////////////////////////
}

   
</script>
            <h3>Grafico com uma consulta via AJAX </h3>

    <div id="PieArmadorExportacao"></div>
            <hr />
    <div id="chart_Col"></div>


        </div>
    </form>
</body>
</html>
