import 'package:app/shared/variables/colors.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartCard extends StatefulWidget {
  const PieChartCard({super.key});

  @override
  State<PieChartCard> createState() => _PieChartCardState();
}

class _PieChartCardState extends State<PieChartCard> {

  static const dataMap = <String, double>{
    "Protein": 4.5,
    "Fat": 3.5,
    "Carbs": 2.0,
  };

  static const colorList = <Color>[
    AppColors.red,
    AppColors.blue,
    AppColors.yellow,

  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 110.0, vertical: 7.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
      child: const PieChart(
        
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 800),
          chartLegendSpacing: 32,
          initialAngleInDegree: 0,
          chartType: ChartType.disc,
          ringStrokeWidth: 22,
          colorList: colorList,
          legendOptions: LegendOptions(
            showLegendsInRow: true,
            legendPosition: LegendPosition.bottom,
            showLegends: false,
            legendTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              
            ),
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: false,
            showChartValues: true,
            showChartValuesInPercentage: true,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
        ),
       

    );
  }
}