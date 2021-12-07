import 'models/account_base.dart';
import 'models/saving_app_facade.dart';
import 'models/user_singleton.dart';

void main(List<String> arguments) {
  // print('Hello world!');
  // bool endApp = false;
  // int i = 0;
  UserSingleton? user = UserSingleton.getUserInstance();
  print(user.hashCode);
  UserSingleton? user2 = UserSingleton.getUserInstance();
  print(user2.hashCode);
  UserSingleton? user3 = UserSingleton.getUserInstance();
  print(user3.hashCode);

  if (user != null) {
    print("WELCOME TO SAVINGAPP!\n");

    print("------------------------");
    print("Name: ${user.name}\nUsername: ${user.username}");
    print("------------------------\n");

    print("Select Your Account:");
    user.accountListsTable;

    AccountBase selectedAccount = user.account;
    SavingAppFacade(selectedAccount);
  } else {
    print("Try to login again");
  }
}
