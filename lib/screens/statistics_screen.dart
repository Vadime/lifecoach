import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:lifecoach/lifecoach.dart';
import 'package:widgets/widgets.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWidget(
      title: "Statistics",
      body: ColumnWidget(
        safeArea: true,
        padding: EdgeInsets.all(context.config.padding),
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          TextWidget.bodyLarge(context, "Workout Statistics"),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: BarChart(
              BarChartData(
                  gridData: const FlGridData(
                    show: true,
                    drawHorizontalLine: true,
                    drawVerticalLine: false,
                  ),
                  borderData: FlBorderData(show: false),
                  titlesData: FlTitlesData(
                    show: true,
                    topTitles: const AxisTitles(),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Center(
                            child: TextWidget.labelSmall(
                                context, value.toInt().toString()),
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      axisNameSize: 20,
                      axisNameWidget: Center(
                        child: TextWidget.bodyLarge(
                          context,
                          "Workouts",
                          align: TextAlign.center,
                        ),
                      ),
                      sideTitles: const SideTitles(
                        showTitles: false,
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      axisNameSize: 20,
                      axisNameWidget:
                          Center(child: TextWidget.bodyLarge(context, "Days")),
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          Widget child;
                          switch (value.toInt()) {
                            case 1:
                              child = TextWidget.labelSmall(context, 'Mon');
                            case 2:
                              child = TextWidget.labelSmall(context, 'Tue');
                            case 3:
                              child = TextWidget.labelSmall(context, 'Wed');
                            case 4:
                              child = TextWidget.labelSmall(context, 'Thu');
                            case 5:
                              child = TextWidget.labelSmall(context, 'Fri');
                            case 6:
                              child = TextWidget.labelSmall(context, 'Sat');
                            case 7:
                              child = TextWidget.labelSmall(context, 'Sun');
                            default:
                              child = TextWidget.labelSmall(context, '');
                          }
                          return Center(child: child);
                        },
                      ),
                    ),
                  ),
                  barGroups: [
                    BarChartGroupData(
                      x: 1,
                      groupVertically: true,
                      barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 1,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 2,
                      groupVertically: true,
                      barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 1,
                          color: Colors.blue,
                        ),
                        BarChartRodData(
                          fromY: 1,
                          toY: 2,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 3,
                      groupVertically: true,
                      barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 1,
                          color: Colors.blue,
                        ),
                        BarChartRodData(
                          fromY: 1,
                          toY: 2,
                          color: Colors.blue,
                        ),
                        BarChartRodData(
                          fromY: 2,
                          toY: 3,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 4,
                      groupVertically: true,
                      barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 1,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 5,
                      groupVertically: true,
                      barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 1,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 6,
                      groupVertically: true,
                      barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 1,
                          color: Colors.blue,
                        ),
                        BarChartRodData(
                          fromY: 1,
                          toY: 2,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    BarChartGroupData(
                      x: 7,
                      groupVertically: true,
                      barRods: [
                        BarChartRodData(
                          fromY: 0,
                          toY: 1,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          const SizedBox(height: 20),
          const Spacer(),
          TextWidget.bodyLarge(context, "Weight Statistics"),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    color: Colors.blue,
                    spots: [
                      const FlSpot(1, 70),
                      const FlSpot(2, 70.2),
                      const FlSpot(3, 70.4),
                      const FlSpot(4, 70.2),
                      const FlSpot(5, 70.6),
                      const FlSpot(6, 70.8),
                      const FlSpot(7, 70.7),
                    ],
                    isCurved: true,
                    preventCurveOverShooting: true,
                    curveSmoothness: 0.4,
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
                lineTouchData: const LineTouchData(handleBuiltInTouches: false),
                gridData: const FlGridData(
                  show: true,
                  drawHorizontalLine: true,
                  drawVerticalLine: false,
                ),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    drawBelowEverything: false,
                    axisNameSize: 20,
                    axisNameWidget: Center(
                      child: TextWidget.bodyLarge(context, "Days"),
                    ),
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        Widget child;
                        switch (value.toInt()) {
                          case 1:
                            child = TextWidget.labelSmall(context, 'Mon');
                          case 2:
                            child = TextWidget.labelSmall(context, 'Tue');
                          case 3:
                            child = TextWidget.labelSmall(context, 'Wed');
                          case 4:
                            child = TextWidget.labelSmall(context, 'Thu');
                          case 5:
                            child = TextWidget.labelSmall(context, 'Fri');
                          case 6:
                            child = TextWidget.labelSmall(context, 'Sat');
                          case 7:
                            child = TextWidget.labelSmall(context, 'Sun');
                          default:
                            child = TextWidget.labelSmall(context, '');
                        }
                        return Center(child: child);
                      },
                    ),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        getTitlesWidget: (d, w) => Center(
                              child:
                                  TextWidget.labelSmall(context, d.toString()),
                            )),
                  ),
                  topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(
                    axisNameWidget:
                        Center(child: TextWidget.bodyLarge(context, "Weight")),
                  ),
                ),
                borderData: FlBorderData(show: false),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
