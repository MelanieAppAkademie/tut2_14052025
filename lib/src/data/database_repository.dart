import 'package:tut2_14052025/src/features/home/domain/transactions.dart';

abstract class DatabaseRepository {
  List<Transaction> getAllTransactions();
  void addTransaction(Transaction transactions);
  void deleteTransaction(Transaction transactions);
  double getTotalAmount();
}
