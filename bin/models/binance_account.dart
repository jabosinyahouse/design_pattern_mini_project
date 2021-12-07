// import 'dart:io';

// import 'account_base.dart';

// class BinanceAccount extends AccountBase {
//   final String _apiKey;
//   final String _apiSecret;

//   BinanceAccount(
//     String accountName,
//     // Map<int, Account> accountLists,
//     this._apiKey,
//     this._apiSecret,
//   ) : super(
//           accountName,
//           0,
//         );

//   String get apiKey => _apiKey;

//   @override
//   void getTransactionList() {
//     super.getTransactionList();
//     stdout.write("from Binance Account");
//   }

//   @override
//   String toString() {
//     return "Account Name: $accountName, Total Balance: $balance, API Key: $apiKey";
//   }

//   @override
//   void setAccount(String newName, double newInitialBalance) {
//     // TODO: implement setAccount
//   }
// }
