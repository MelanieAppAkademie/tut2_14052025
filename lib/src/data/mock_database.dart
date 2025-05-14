import 'package:tut2_14052025/src/data/database_repository.dart';
import 'package:tut2_14052025/src/features/home/domain/transactions.dart';

class MockDatabase implements DatabaseRepository {
  List<Transaction> transactions = [
    Transaction(amount: 15000, description: "Einzahlung Bank"),
    Transaction(amount: -39.99, description: "Telekom"),
    Transaction(amount: -8.39, description: "Starbucks"),
  ];

  @override
  void addTransaction(Transaction transaction) {}

  @override
  void deleteTransaction(Transaction transaction) {}

  @override
  List<Transaction> getAllTransactions() {
    return transactions;
  }

  @override
  double getTotalAmount() {
    double sum = 0;
    for (Transaction transaction in transactions) {
      sum += transaction.amount;
    }
    return sum;
  }
}
