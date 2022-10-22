import 'package:flutter/material.dart';
import 'Home.dart';
import 'Himanshu.dart';
import 'Dhruv.dart';
import 'Manjeet.dart';
import 'Aryan.dart';

void main() {
  runApp(Page0());
}

class Page0 extends StatefulWidget {
  @override
  State<Page0> createState() => _Page0State();
}

class _Page0State extends State<Page0> {
  int _selectedIndex = 0;
  List<Widget> Screens = [Home(), Himanshu(), Dhruv(), Manjeet(), Aryan()];
  // This widget is the root of your application.
  void tapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("WeMail"),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Color(0xFF27598f),
                    Colors.blue
                    // Color(0xFF246EB8),
                    // Color(0xFF227393),
                    // Color(0xFF228e97),
                    // Color(0xFF1c9d99),
                    // Color(0xFF1ca79a)
                  ]),
            ),
          ),
        ),
        body: Screens.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.indigo,
          unselectedItemColor: Colors.black87,
          currentIndex: _selectedIndex,
          onTap: tapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_android),
              label: "Pranjal",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.computer),
              label: "Himanshu",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.code),
              label: "Dhruv",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad),
              label: "Manjeet",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.currency_bitcoin),
              label: "Aryan",
            ),
          ],
        ),
      ),
    );
  }
}
