import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartCard extends StatefulWidget {
  const PieChartCard({super.key, required this.dataMap, required this.colorList});
  final Map<String, double> dataMap;
  final List<Color> colorList;

  @override
  State<PieChartCard> createState() => _PieChartCardState();
}

class _PieChartCardState extends State<PieChartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 7.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
      child: Container(
        
        child: PieChart(
          
            dataMap: widget.dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32,
            initialAngleInDegree: 0,
            chartType: ChartType.disc,
            ringStrokeWidth: 22,
            colorList: widget.colorList,
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
          ),),
       

    );
  }
}