import 'package:flutter/material.dart';
import 'package:padsou/assets/colors/colors.dart';
import 'homepage.dart';
import 'addPlan.dart';
import 'compte.dart';


class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[

    HomePage(),

    UserCompte(),
    AddPlan(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: CustomColors.primaryColor,

        onTap: _onItemTapped,
      ),
    );
  }
}
