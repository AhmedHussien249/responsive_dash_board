import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeSectionChart extends StatefulWidget {
  const IncomeSectionChart({super.key});

  @override
  State<IncomeSectionChart> createState() => _IncomeSectionChartState();
}

class _IncomeSectionChartState extends State<IncomeSectionChart> {
  int touchIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData:
            PieTouchData(touchCallback: (FlTouchEvent event, pieTouchResponse) {
          touchIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        }),
        sections: [
          PieChartSectionData(
            value: 40,
            showTitle: false,
            radius: touchIndex == 0 ? 60 : 50,
            color: const Color(0xff208CC8),
          ),
          PieChartSectionData(
            value: 25,
            showTitle: false,
            radius: touchIndex == 1 ? 60 : 50,
            color: const Color(0xff4EB7F2),
          ),
          PieChartSectionData(
            value: 20,
            showTitle: false,
            radius: touchIndex == 2 ? 60 : 50,
            color: const Color(0xff064061),
          ),
          PieChartSectionData(
            value: 22,
            showTitle: false,
            radius: touchIndex == 3 ? 60 : 50,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
