import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.77,
      child: LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 3.1),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              isCurved: true,
              barWidth: 3,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: false,
              ),
            ),
          ],
          borderData: FlBorderData(
            show: false,
          ),
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Color(0xff37434d),
                strokeWidth: 0.1,
              );
            },
          ),
          titlesData: FlTitlesData(
            show: true,
            leftTitles: SideTitles(
              showTitles: true,
              reservedSize: 20,
              margin: 10,
              getTextStyles: (value) => const TextStyle(
                color: Color(0xff67727d),
                fontSize: 12,
              ),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 1:
                    return '10k';
                  case 3:
                    return '50k';
                  case 5:
                    return '100k';
                }
                return '';
              },
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 20,
              margin: 10,
              getTextStyles: (value) => const TextStyle(
                color: Color(0xff67727d),
                fontSize: 12,
              ),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 2:
                    return '1';
                  case 5:
                    return '11';
                  case 8:
                    return '21';
                }
                return '';
              },
            ),
          ),
        ),
      ),
    );
  }
}
