import 'binance_account.dart';
import 'physical_account.dart';
import 'transaction.dart';

abstract class AccountBase {
  String accountName;
  double balance;
  TransactionLists transactions;

  AccountBase(
    this.accountName,
    this.balance,
    this.transactions,
  );

  factory AccountBase.physical(
      String accountName, double balance, TransactionLists? transactions) {
    return PhysicalAccount(
      accountName,
      balance,
      transactions!,
    );
  }

  // factory AccountBase.binance(
  //     String accountName, String apiKey, String apiSecret) {
  //   return BinanceAccount(accountName, apiKey, apiSecret);
  // }

  void getTransactionList() {
    print("Lists of all transaction from this account!");
  }

  void setAccount(String newName, double newInitialBalance);

  @override
  String toString() {
    return "Account Name: $accountName, Total Balance: $balance";
  }
}
