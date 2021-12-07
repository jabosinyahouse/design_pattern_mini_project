import 'dart:io';

import 'account_base.dart';
import 'transaction.dart';

class SavingAppFacade {
  SavingAppFacade(AccountBase account) {
    TransactionCategory transactionCategory = TransactionCategory();
    TransactionOperation transactionOperation = TransactionOperation();
    bool userChoice = true;

    // print(account.runtimeType);
    while (userChoice) {
      print("\n--------------------------");
      print("1. Account Details");
      print("2. Transaction");
      print("3. Savings Plan");
      print("0. Exit");
      stdout.write("Enter number > ");

      String? choice = stdin.readLineSync();

      // Inside this switch case I think I should wrap all the logic for each class seperate them into some class
      switch (int.parse(choice!)) {
        case 1:
          {
            print("\n------ ACCOUNT DETAILS ------");
            // Account Management Menu
            while (true) {
              print(account.toString());
              print("-----------------------------\n");
              print("1. Edit Account");
              print("0. Back To Main Menu");
              stdout.write("Enter number > ");
              final backToMenu = stdin.readLineSync();
              print("--------------------------");
              if (int.parse(backToMenu!) == 0) {
                break;
              } else if (int.parse(backToMenu) == 1) {
                stdout.write("Enter new account name > ");
                final String? newName = stdin.readLineSync();
                stdout.write("Enter new initial balance > ");
                final String? newInitialBalance = stdin.readLineSync();
                account.setAccount(
                  newName!,
                  double.parse(newInitialBalance!),
                );
              } else {
                print("Invalid input, please try again");
              }
            }
          }
          break;
        case 2:
          {
            while (true) {
              print("-----------------------");
              print("1. View Transactions");
              print("2. Add Transaction");
              print("3. Edit Transaction");
              print("4. Delete Transaction");
              print("0. Back To Main Menu");
              print("-----------------------");
              stdout.write("Enter number > ");
              final choice = stdin.readLineSync();
              if (int.parse(choice!) == 1) {
                print("Listss of transaction!");
                account.transactions.transactionLists;
                // print();
                while (true) {
                  stdout.write(("Back to the main menu? (Y/N)"));
                  final String? choice = stdin.readLineSync();
                  if (choice!.toLowerCase() == "y") {
                    break;
                  } else if (choice.toLowerCase() != "n") {
                    print("Invalid input... please try again!");
                  } else {
                    account.transactions.transactionLists;
                  }
                }
                break;
              } else if (int.parse(choice) == 2) {
                while (true) {
                  // print("Select category:");
                  // transactionCategory.listTable; // Display list of operation
                  // stdout.write("Enter ID > ");
                  // String? id = stdin.readLineSync();
                  // final String category =
                  //     transactionCategory.getCategoryList(int.parse(id!) - 1);
                  // transactionOperation.listTable; // Display list of operation
                  // stdout.write("Enter ID > ");
                  // id = stdin.readLineSync();
                  // final String operation =
                  //     transactionOperation.getOperationList(int.parse(id!) - 1);

                  // Display list of category
                  // account.transactions.transaction.add(
                  //   Transaction(
                  //     DateTime.now(),
                  //   ),
                  // );
                  print("Service is unavailable!! Please select other...");
                  break;
                }
                // break;
              } else if (int.parse(choice) == 3) {
                print("Service is unavailable!! Please select other...");
              } else if (int.parse(choice) == 4) {
                print("Service is unavailable!! Please select other...");
              } else if (int.parse(choice) == 0) {
                break;
              }
            }
            break;
          }
        // break;
        case 3:
          {
            print("Transaction Menu");
          }
          break;
        case 0:
          print("Seeee ya later!!");
          userChoice = false;
          break;
      }
    }
  }
}
