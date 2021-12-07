import 'dart:io';
import 'transaction.dart';
import 'account_base.dart';
import 'physical_account.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:dolumns/dolumns.dart';

class User {
  late String _name;
  late String _username;
  late String _password;

  final Map<int, AccountBase> _accountLists = {
    1: PhysicalAccount(
      "myAccount",
      1000,
      TransactionLists([
        Transaction(
          DateTime.utc(2021, 12, 7),
          TransactionCategory.businessServices,
          TransactionOperation.expense,
          12341.12,
        ),
        Transaction(
          DateTime.utc(2021, 12, 7),
          TransactionCategory.educationalExpenses,
          TransactionOperation.expense,
          456.72,
        ),
        Transaction(
          DateTime.utc(2021, 12, 8),
          TransactionCategory.automotiveExpenses,
          TransactionOperation.expense,
          300,
        ),
        Transaction(
          DateTime.utc(2021, 12, 9),
          TransactionCategory.businessServices,
          TransactionOperation.expense,
          2346.92,
        ),
      ]),
    ),
    // 2: BinanceAccount(
    //   "BinanceAccount",
    //   "public_key",
    //   "secret_key",
    // ),
  };

  void setName(String newName) => _name = newName;
  void setUsername(String newUsername) => _username = newUsername;
  void setPassword(String newPassword) => _password = newPassword;

  String get name => _name;
  String get username => _username;
  String get password => _password;
  AccountBase get account {
    stdout.write("Enter number > ");
    String? index = stdin.readLineSync();
    return _accountLists.values.toList()[int.parse(index!) - 1];
  }

  void addAccount() {
    print("Total # of Account: ${_accountLists.length}");
    print("Added account successfully");
    print('Select account type (P/B)');

    String? choice = stdin.readLineSync();

    AccountBase newAccount;

    // Handle user's input inside this
    if (choice!.toLowerCase() == "p") {
      print("Please Enter");
      stdout.write("Account Name: ");
      final String? newName = stdin.readLineSync();
      stdout.write("Initial Balance: ");
      final String? initialBalance = stdin.readLineSync();
      newAccount =
          AccountBase.physical(newName!, double.parse(initialBalance!), null);
      print("Add account successfully!");
      print(newAccount.toString());
    } else if (choice.toLowerCase() == "b") {
      print("Service available soon...");
    }
  }

  void get accountListsTable {
    List<List<Object>> newAccountLists = [];

    newAccountLists.add(['ID', 'Account Name', 'Balance']);
    _accountLists.forEach((key, value) {
      newAccountLists.add([
        key,
        value.accountName,
        value.balance,
      ]);
    });

    final columns = dolumnify(
      newAccountLists,
      columnSplitter: ' | ',
      headerIncluded: true,
      headerSeparator: '=',
    );

    print("");
    print(columns);
    print("");
  }
}
