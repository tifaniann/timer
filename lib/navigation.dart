import 'package:flutter/material.dart';
import 'package:timer/timer.dart';
import 'about_us.dart';
import 'stopwatch.dart';


/// Flutter code sample for [BottomNavigationBar].


class BottomNavigationBarExampleApp extends StatelessWidget {
  final String name;
  final String email;

  const BottomNavigationBarExampleApp({Key? key, required this.name, required this.email})
      : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}



class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [MyApp(), StopWatch(), TopWidget(),];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            label: 'Timer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Stopwach',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'About Us',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
