import 'package:flutter/material.dart';
import 'package:ballascorp/utils/GlobalColors.dart';
import 'package:ballascorp/screens/splash.dart';
import 'package:ballascorp/screens/home.dart';
import 'package:ballascorp/screens/history.dart';
import 'package:ballascorp/screens/profile.dart';
import 'package:ballascorp/screens/notif.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalColors.ballas05,
        useMaterial3: true,
      ),
      home: Splash(),
    );
  }
}

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomePage(),
    HistoryPage(),
    NotifPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: screens[selectedIndex]),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: GlobalColors.ballas02,
            iconSize: 24,
            backgroundColor: GlobalColors.ballas03,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(Icons.home_filled),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(Icons.history),
                ),
                label: 'Histories',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(Icons.notifications),
                ),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(Icons.person),
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.white,
            selectedFontSize: 12,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
