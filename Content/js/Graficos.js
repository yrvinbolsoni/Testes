function desenharGraficos() {

    var tabela = new google.visualization.DataTable();
    tabela.addColumn('string', 'categorias');
    tabela.addColumn('number', 'valores');
    tabela.addRows([

        ['Educação', 2000],
        ['Transporte', 500],
        ['Lazer', 230],
        ['Saúde', 50],
        ['Cartão de crédito', 900],
        ['Alimentação', 260]
    ]);

    var opcoes = {
        'title': 'Tipos de Gastos',
        'height': 400,
        'width': 800,
        'pieHole': 0.4,
        'is3D': true,
        'legend': 'labeled',
        'pieSliceText': 'value',
        //'colors': ['red','grey', 'yellow', 'blue', 'pink', 'purple']
        'slices': {
            0: {},
            1: { color: 'gray' },
            2: { color: '#a6a6a6' },
            3: { color: 'gray' },
            4: { offset: 0.2 },
            5: { color: 'green' }
        }

    };

    var grafico = new google.visualization.PieChart(document.getElementById('graficoPizza'));
    grafico.draw(tabela, opcoes)

    tabela = new google.visualization.DataTable();
    tabela.addColumn('string', 'mês');
    tabela.addColumn('number', 'gastos');

    tabela.addRows([
        ['jan', 800],
        ['fev', 400],
        ['mar', 1100],
        ['abr', 400],
        ['mai', 500],
        ['jun', 750],
        ['jul', 1500],
        ['ago', 650],
        ['set', 850],
        ['out', 400],
        ['nov', 1000],
        ['dez', 720]
    ]);

    var opcoes = {
        title: 'Gastos por mês',
        width: 950,
        height: 300,
        vAxis: {
            format: 'currency', // formato da moeda REAL
            gridlines: { color: 'transparent' }
        },
        curveType: 'function',
        legend: 'none'
    }
    var grafico = new google.visualization.LineChart(document.getElementById('graficoLinha'));
    grafico.draw(tabela, opcoes);

     var  tabelaColuna = google.visualization.arrayToDataTable(
        [
            ['Mês', 'Entrada', 'Saída'],
            ['jan', 2500, 1000],
            ['fev', 1000, 500],
            ['mar', 3000, 1300],
            ['abr', 1500, 1700],
            ['mai', 5000, 2250],
            ['jun', 3567, 3000],
            ['jul', 3452, 1468],
            ['ago', 1833, 5250],
            ['set', 1800, 1000],
            ['out', 1800, 1000],
            ['nov', 3569, 1500],
            ['dez', 3000, 1740]
        ]);

    var opcoes = {
        title: "Entrada e sáida da conta",
        width: 1000,
        height: 400,
        vAxis: {
            format: 'currency',  // formato da moeda REAL
            title:'Valores',
            gridlines: { color: 'transparent' }
        },  
        hAxis: {title:"Mês"} // titulo da horizontal

    }

    var grafico = new google.visualization.ColumnChart(document.getElementById('graficoColuna'));
    grafico.draw(tabelaColuna, opcoes);


    // grafico de colunas  

    var tabela = new google.visualization.DataTable();
    tabela.addColumn('string', 'categorias');
    tabela.addColumn('number', 'valores');
    tabela.addColumn({type:'number',role:'annotation'}); // cria uma anotação para mostrar o numero em cima da coluna
    tabela.addColumn({ type: 'string', role: 'style' });
    tabela.addRows([

        ['Educação', 2000, 2000, 'blue' ], // repiclando valor para ser apresantando no grafico  
        ['Transporte', 500, 500 , 'gray'],
        ['Lazer', 230, 230 ,'gray'] ,
        ['Saúde', 50, 50 , 'gray'],
        ['Cartão de crédito', 900, 900,'#8904B1'],
        ['Alimentação', 260 , 260 ,'gray']
    ]);

    var opcoes = {
        title: 'Tipos de gastos',
        width: 1000,
        height: 400,
        vAxis: { gridlines: { count: 0 }, textPosition: 'none' }, // retira o valor da coluna a direita 
        legend:'none' // retira o valor da legenda 

    };

    var grafico = new google.visualization.ColumnChart(document.getElementById('graficoColunaSurpresa'));
    grafico.draw(tabela, opcoes);



    // Graficco em barras 

    var tabela = new google.visualization.DataTable();
    tabela.addColumn('string', 'categorias');
    tabela.addColumn('number', 'valores');
    tabela.addColumn({ type: 'string', role: 'annotation' }); // cria uma anotação para mostrar o numero em cima da coluna
    tabela.addColumn({ type: 'string', role: 'style' });
    tabela.addRows([
        ['Educação', 2000, 'R$2.000,00', 'blue'],// repiclando valor para ser apresantando no grafico
        ['Transporte', 500, 'R$500,00', 'grey'],
        ['Lazer', 230, 'R$230,00', 'grey'],
        ['Saúde', 50, 'R$50,00', 'grey'],
        ['Cartão de crédito', 900, 'R$900,00', '#8904B1'],
        ['Alimentação', 260, 'R$260,00', 'grey']
    ]);
    // ordenando tabela pelo indice 1
    tabela.sort([{ column: 1, desc: true }]);
    //opcoes que customizam o gráfico
    var opcoes = {
        title: 'Tipos de gastos',
        width: 1000,
        height: 400,
        vAxis: { gridlines: { count: 0 }, }, // retira o valor da coluna a direita
        hAxis: {
            gridlines: { color: 'transparent' },
            format: 'currency',
            textPosition: 'none',
        },
        legend: 'none', /// retira o valor da legenda
        annotations: { alwaysOutside: true, color: 'red' }

    };

    var grafico = new google.visualization.BarChart(document.getElementById('graficoBar'));
    grafico.draw(tabela, opcoes);
    
}