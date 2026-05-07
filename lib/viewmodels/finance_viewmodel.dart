import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class FinanceViewModel extends ChangeNotifier {
  double saldo = 3500;
  double receitas = 5800;
  double despesas = 2300;

  Map<String, double> gastosCategoria = {
    "Alimentação": 350,
    "Moradia": 1200,
    "Transporte": 300,
    "Lazer": 200,
    "Educação": 500,
  };
}