using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testes.WebForms
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static object[] ArmadorExpGraphic()
        {

            // dados da consuta SQL retornando um DataTable
            //DataTable DadosGraphic = BuildGraphics(sql);



            List<GoogleChartData> GraphicJason = new List<GoogleChartData> {

                new GoogleChartData {Descricao = "EVERGREEN" , Valor = 600},
                new GoogleChartData {Descricao = "MAERSK LINE" , Valor = 300},
                new GoogleChartData {Descricao = "CMA-CGM" , Valor = 500},
                new GoogleChartData {Descricao = "PIL" , Valor = 150},
                new GoogleChartData {Descricao = "MSC" , Valor = 450},

            };




            // no caso de uma consulta sql passar os dados para um classe 
            //foreach (DataRow row in DadosGraphic.Rows)
            //{
            //    GraphicJason.Add(new GoogleChartData
            //    {
            //        Descricao = Convert.ToString(row[Descicao]),
            //        Valor = Convert.ToInt32(row[valor]),
            //    });

            //}

            GraphicJason = GraphicJason.ToList();

            var chartData = new object[GraphicJason.Count + 1];
            chartData[0] = new object[]{
                "Country",
                "Total Teus",
            };

            int j = 0;
            foreach (var i in GraphicJason)
            {
                j++;
                chartData[j] = new object[] { i.Descricao, i.Valor };
            }
            return chartData;

        }


    

        private class GoogleChartData
        {
            public string Descricao { get; set; }
            public int Valor { get; set; }
            public string Cor { get; set; }
        }
    }
}