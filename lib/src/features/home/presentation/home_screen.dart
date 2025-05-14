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
  // TODO: 1. Instanz von Mockdatabase erstellen
  final DatabaseRepository db = MockDatabase();
  @override
  Widget build(BuildContext context) {
    // TODO: 2. Alle Transaktionen vom MockDB holen und in einer Variable speichern
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
            children: [
              const Text("aktuelles Guthaben"),
              Text(
                currencyFormat.format(
                  // TODO: 3. aktuelles Guthaben anzeigen lassen aus MockDB
                  db.getTotalAmount(),
                ),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 20),
              const Text(
                "Transaktionen",

                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: db.getAllTransactions().length,
                  itemBuilder: (context, index) {
                    // TODO: 4. Hilfsvariable verwenden, die jeweils einen Wer der MockDB repräsentiert, Tipp: Schritt 2 ansehen & transactions[index]
                    final transaction = transactions[index];
                    return ListTile(
                      // TODO: 5. Beschreibung der Transaktion einbauen:
                      title: Text(transaction.description),
                      trailing: Text(
                        currencyFormat.format(
                          // TODO: 5. Transaktions-Summe anzeigen lassen
                          transaction.amount,
                        ),
                        style: TextStyle(
                          color:
                              // TODO: 6. Bonus! Wenn die Summe negativ ist, soll sie Rot sein, wenn sie positiv ist soll sie grün sein
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
