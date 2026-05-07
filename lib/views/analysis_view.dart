import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({super.key});

  // FUNÇÃO FORA DO BUILD
  Widget buildPieChart() {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(value: 800, color: Colors.green),
          PieChartSectionData(value: 1200, color: Colors.blue),
          PieChartSectionData(value: 300, color: Colors.orange),
          PieChartSectionData(value: 200, color: Colors.purple),
          PieChartSectionData(value: 500, color: Colors.red),
        ],
        centerSpaceRadius: 40,
      ),
    );
  }

  // BUILD NORMAL
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Análises"),
        backgroundColor: Colors.green,
      ),
      body: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

    Container(
  margin: const EdgeInsets.all(20),
  padding: const EdgeInsets.all(20),

  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
  ),

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      const Text(
        "Distribuição de Gastos",
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),

      const SizedBox(height: 30),

      SizedBox(
        height: 350,
        child: buildPieChart(),
      ),

      const SizedBox(height: 30),

      // LEGENDA
      Wrap(
        spacing: 20,
        runSpacing: 10,
        children: const [

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.circle, color: Colors.green, size: 14),
              SizedBox(width: 5),
              Text(
                "Alimentação",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.circle, color: Colors.blue, size: 14),
              SizedBox(width: 5),
              Text(
                "Moradia",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.circle, color: Colors.orange, size: 14),
              SizedBox(width: 5),
              Text(
                "Transporte",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.circle, color: Colors.purple, size: 14),
              SizedBox(width: 5),
              Text(
                "Lazer",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.circle, color: Colors.red, size: 14),
              SizedBox(width: 5),
              Text(
                "Educação",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
),

    const SizedBox(height: 20),

    // LEGENDA
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(Icons.circle, color: Colors.green, size: 14),
        SizedBox(width: 5),
        Text("Alimentação"),

        SizedBox(width: 15),

        Icon(Icons.circle, color: Colors.blue, size: 14),
        SizedBox(width: 5),
        Text("Moradia"),

      ],
    ),

    const SizedBox(height: 10),

    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(Icons.circle, color: Colors.orange, size: 14),
        SizedBox(width: 5),
        Text("Transporte"),

        SizedBox(width: 15),

        Icon(Icons.circle, color: Colors.purple, size: 14),
        SizedBox(width: 5),
        Text("Lazer"),

        SizedBox(width: 15),

        Icon(Icons.circle, color: Colors.red, size: 14),
        SizedBox(width: 5),
        Text("Educação"),
      ],
    ),
  ],
),
    );
  }
}
