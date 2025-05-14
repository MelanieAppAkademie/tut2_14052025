import 'package:tut2_14052025/src/features/home/domain/transactions.dart';

abstract class DatabaseRepository {
  List<Transaction> getAllTransactions(); // read
  void addTransaction(Transaction transactions); // create
  void deleteTransaction(Transaction transactions); // delete
  double getTotalAmount(); // read
}
