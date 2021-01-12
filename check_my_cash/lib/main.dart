import 'package:check_my_cash/backend/DataBaseServices.dart';
import 'package:check_my_cash/screens/Home_Screen.dart';
import 'package:check_my_cash/screens/New_Transaction.dart';
import 'package:check_my_cash/screens/Transaction_History.dart';
import 'package:check_my_cash/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => DatabaseServices(),
      child: CheckMyCash(),
    ),
  );
}

class CheckMyCash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: "Check My Cash",
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/new': (context) => NewTransactionScreen(),
        '/history': (context) => TransactionHistoryScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
