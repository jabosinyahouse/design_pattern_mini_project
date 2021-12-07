import 'package:dolumns/dolumns.dart';

import 'transaction_factory.dart';

class TransactionLists {
  final List<Transaction> _transactionLists;

  TransactionLists(this._transactionLists);

  List<Transaction> get transaction => _transactionLists;
  Transaction getTransactionByID(int index) => transaction[index];

  void get transactionLists {
    List<List<Object>> newTransactionLists = [];

    newTransactionLists
        .add(['Transaction ID', 'DateTime', 'Category', 'Type', 'Amount']);

    int id = 1;
    for (final Transaction element in _transactionLists) {
      newTransactionLists.add([
        id,
        "${element.date.year}-${element.date.month}-${element.date.day}",
        element.transactionCategory,
        element.transactionOperation.toString(),
        element.balance
      ]);
      id++;
      // TransactionFactory.getTransaction(id);
    }

    final columns = dolumnify(
      newTransactionLists,
      columnSplitter: ' | ',
      headerIncluded: true,
      headerSeparator: '=',
    );

    print("");
    print(columns);
    print("");
  }
}

class Transaction {
  final DateTime date;
  final String transactionCategory;
  final String transactionOperation;
  final double balance;

  Transaction(
    this.date,
    this.transactionCategory,
    this.transactionOperation,
    this.balance,
  );

  @override
  String toString() {
    return "Date: $date\nType: $transactionCategory\nCategory: $transactionOperation";
  }
}

// Dart isn't allow to set the value to the variable inside enum
// So I have to by the approach below.

class TransactionOperation {
  static String get income => "Income";
  static String get expense => "Expense";
  static String get transfer => "Transfer";

  List<String> get listOfOperation => [income, expense, transfer];

  String getOperationList(int index) => listOfOperation[index];

  void get listTable {
    List<List<Object>> newTransactionOperation = [];

    newTransactionOperation.add([
      'ID',
      'Operation',
    ]);

    int id = 1;

    for (final String element in listOfOperation) {
      newTransactionOperation.add([id, element]);
      id++;
    }

    final columns = dolumnify(
      newTransactionOperation,
      columnSplitter: ' | ',
      headerIncluded: true,
      headerSeparator: '=',
    );

    print("");
    print(columns);
    print("");
  }
}

class TransactionCategory {
  static String get automotiveExpenses => "Automotive Expense";
  static String get businessServices => "Business Services";
  static String get educationalExpenses => "Education Expenses";
  static String get foodExpenses => "Food Expenses";
  static String get healthcare => "Healthcare";
  static String get homeExpenses => "Home Expenses";
  static String get insurance => "Insurance";
  static String get miscellaneousExpenses => "Miscellaneous Expenses";
  static String get personalAndFamily => "Personal And Family";
  static List<String> listOfCategory = [
    automotiveExpenses,
    businessServices,
    educationalExpenses,
    foodExpenses,
    healthcare,
    homeExpenses,
    insurance,
    miscellaneousExpenses,
    personalAndFamily,
  ];

  String getCategoryList(int index) => listOfCategory[index];

  void get listTable {
    List<List<Object>> newTranasctionCategoryList = [];

    newTranasctionCategoryList.add([
      'ID',
      'Category',
    ]);

    int id = 1;
    for (final String element in listOfCategory) {
      newTranasctionCategoryList.add([id, element]);
      id++;
    }

    final columns = dolumnify(
      newTranasctionCategoryList,
      columnSplitter: ' | ',
      headerIncluded: true,
      headerSeparator: '=',
    );

    print("");
    print(columns);
    print("");
  }
}
