import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: scaffold(),
      ),
    );
  }

  Widget scaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${today.day.toString().padLeft(2, '0')} | ${today.month} | ${today.year}",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(6, 4, 0, 6),
          child: ElevatedButton(
              child: Icon(Icons.menu_open_rounded, color: Theme.of(context).colorScheme.surface),
              onPressed: () {
                // toggleMenu();
              }),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.api_outlined),
              onPressed: () {
                retrieveFromApi();
              }),
          IconButton(
              onPressed: () {
                logOut(context);
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: ListView(
        children: const [
          Text('Hello'),
        ],
      ),
    );
  }

  void retrieveFromApi() async {
    QuickAlert.show(
      context: context,
      type: QuickAlertType.success,
      text: "Transaction Completed Successfully!",
      autoCloseDuration: const Duration(seconds: 2),
    );
  }

  void logOut(BuildContext context) {
    QuickAlert.show(
      onCancelBtnTap: () {
        Navigator.pop(context);
      },
      context: context,
      type: QuickAlertType.confirm,
      text: 'Do you want to logout',
      titleAlignment: TextAlign.right,
      textAlignment: TextAlign.right,
      confirmBtnText: 'Yes',
      cancelBtnText: 'No',
      confirmBtnColor: Colors.white,
      backgroundColor: Colors.black,
      headerBackgroundColor: Colors.grey,
      confirmBtnTextStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      barrierColor: Colors.white,
      titleColor: Colors.white,
      textColor: Colors.white,
    );
  }
}
