// import 'dart:collection';
import 'dart:io';
import 'package:dolumns/dolumns.dart';
import 'account_base.dart';
import 'transaction.dart';

class PhysicalAccount extends AccountBase {
  PhysicalAccount(
    String accountName,
    double totalBalance,
    TransactionLists? transactionLists,
    // Map<int, Account> accountLists,
  ) : super(
          accountName,
          totalBalance,
          transactionLists!,
        );

  @override
  void setAccount(String newName, double newInitialBalance) {
    accountName = newName;
    balance = newInitialBalance;
  }

  @override
  void getTransactionList() {
    super.getTransactionList();
    stdout.write("from Physical Account");
  }

  @override
  String toString() {
    return dolumnify(
      [
        ['Account Name', 'Total Balance'],
        [accountName, balance],
      ],
      columnSplitter: ' | ',
      headerIncluded: true,
      headerSeparator: '=',
    );
  }
}
