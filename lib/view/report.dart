


import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:task_tracker_app/utils/apputils.dart';

void main() => runApp(MaterialApp(home: ReportPage()));

class ReportPage extends StatelessWidget {
  const ReportPage({Key? key}) : super(key: key);

  // Data for Pie Chart
  List<PieChartSectionData> _getPieChartData() {
    return [
      PieChartSectionData(
        value: 40,
        color: Colors.red,
        title: '',
        radius: 30,
      ),
      PieChartSectionData(
        value: 35,
        color: Colors.green,
        title: '',
        radius: 30,
      ),
      PieChartSectionData(
        value: 25,
        color: Colors.yellow,
        title: '',
        radius: 30,
      ),
    ];
  }

  // Data for Bar Chart
  List<BarChartGroupData> _getBarChartData() {
    return [
      BarChartGroupData(x: 1990, barRods: [BarChartRodData(toY: 40, color: Colors.orange)]),
      BarChartGroupData(x: 2000, barRods: [BarChartRodData(toY: 35, color: Colors.green)]),
      BarChartGroupData(x: 2010, barRods: [BarChartRodData(toY: 30, color: Colors.blue)]),
      BarChartGroupData(x: 2020, barRods: [BarChartRodData(toY: 25, color: Colors.grey)]),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Task Report',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors.normal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Priority Pie Chart
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              elevation: 2,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Priority',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: PieChart(
                      PieChartData(
                        sections: _getPieChartData(),
                        centerSpaceRadius: 50,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IndicatorWidget(color: Colors.red, text: 'High'),
                        IndicatorWidget(color: Colors.green, text: 'Medium'),
                        IndicatorWidget(color: Colors.yellow, text: 'Low'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Status Bar Chart
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              elevation: 2,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Status',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: BarChart(
                       BarChartData(
  barGroups: _getBarChartData(),
  titlesData: FlTitlesData(
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
      ),
    ),
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          return Text(
            value.toInt().toString(),
            style: const TextStyle(fontSize: 12),
          );
        },
      ),
    ),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  ),
  borderData: FlBorderData(show: false),
  gridData: FlGridData(show: false),
)

                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IndicatorWidget(color: Colors.blue, text: 'Open'),
                        IndicatorWidget(color: Colors.orange, text: 'In Progress'),
                        IndicatorWidget(color: Colors.green, text: 'Done'),
                        IndicatorWidget(color: Colors.grey, text: 'Close'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IndicatorWidget extends StatelessWidget {
  final Color color;
  final String text;

  const IndicatorWidget({Key? key, required this.color, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
