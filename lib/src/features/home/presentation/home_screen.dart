import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tut2_14052025/src/data/database_repository.dart';
import 'package:tut2_14052025/src/data/mock_database.dart';
import 'package:tut2_14052025/src/features/home/domain/transactions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final NumberFormat currencyFormat = NumberFormat.currency(
    locale: 'de_DE',
    symbol: '€',
    decimalDigits: 2,
  );

  final DatabaseRepository db = MockDatabase();
  @override
  Widget build(BuildContext context) {
    List<Transaction> transactions = db.getAllTransactions();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontoübersicht"),
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 20,
            children: [
              Wrap(
                direction: Axis.vertical,
                children: [
                  const Text("aktuelles Guthaben"),
                  Text(
                    currencyFormat.format(db.getTotalAmount()),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),

              const Text(
                "Transaktionen",

                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: db.getAllTransactions().length,
                  itemBuilder: (context, index) {
                    final transaction = transactions[index];
                    return ListTile(
                      title: Text(transaction.description),
                      trailing: Text(
                        currencyFormat.format(transaction.amount),
                        style: TextStyle(
                          color:
                              (transaction.amount > 0)
                                  ? Colors.green
                                  : Colors.red,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
