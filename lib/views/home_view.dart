import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Home"),
      ),

      body: Column(
        children: [

          // CARD SALDO
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),

            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Saldo Atual",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "R\$ 5.280,40",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // TÍTULO
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Transações Recentes",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // LISTA
          Expanded(
            child: ListView(
              children: const [

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                  title: Text(
                    "Supermercado",
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    "Alimentação",
                    style: TextStyle(color: Colors.black54),
                  ),
                  trailing: Text(
                    "-R\$ 320",
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.home, color: Colors.white),
                  ),
                  title: Text(
                    "Aluguel",
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    "Moradia",
                    style: TextStyle(color: Colors.black54),
                  ),
                  trailing: Text(
                    "-R\$ 1200",
                    style: TextStyle(color: Colors.red),
                  ),
                ),

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.attach_money, color: Colors.white),
                  ),
                  title: Text(
                    "Salário",
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    "Receita",
                    style: TextStyle(color: Colors.black54),
                  ),
                  trailing: Text(
                    "+R\$ 5000",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),

          // BOTÃO
          Padding(
  padding: const EdgeInsets.all(20),

  child: SizedBox(
    width: double.infinity,

    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,

        padding: const EdgeInsets.symmetric(
          vertical: 18,
        ),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),

      onPressed: () {
        Navigator.pushNamed(context, '/analysis');
      },

      child: const Text(
        "Ver Análises",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
),
        ],
      ),
    );
  }
}