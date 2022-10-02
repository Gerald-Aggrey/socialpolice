// import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:pie_chart/pie_chart.dart';

/// Icons by svgrepo.com (https://www.svgrepo.com/collection/job-and-professions-3/)
class PieChartSample3 extends StatefulWidget {
  const PieChartSample3({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PieChartSample3State();
}

Map<String, double> dataMap = {
  "Desktop": 18.47,
  "Tablet": 17.70,
  "Mobile": 4.25,
};

List<Color> colorList = [
  const Color(0xff1070CA),
  const Color(0xffEC4C47),
  const Color(0xffF7D154),
];

class PieChartSample3State extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.08),
            offset: Offset(0, 2),
            blurRadius: 6,
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width / 5,
      height: MediaQuery.of(context).size.height / 2,
      child: Card(
        child: PieChart(
          chartType: ChartType.ring,
          dataMap: dataMap,
          colorList: colorList,
          chartRadius: MediaQuery.of(context).size.width / 7,
          ringStrokeWidth: 24,
          animationDuration: const Duration(seconds: 3),
          chartValuesOptions: const ChartValuesOptions(
              showChartValues: true,
              showChartValuesInPercentage: true,
              showChartValueBackground: false),
          legendOptions: const LegendOptions(
              showLegends: true,
              legendShape: BoxShape.rectangle,
              legendTextStyle: TextStyle(fontSize: 15),
              legendPosition: LegendPosition.bottom,
              showLegendsInRow: true),
        ),
      ),
    );
  }
}
