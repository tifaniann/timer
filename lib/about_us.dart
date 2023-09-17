import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(TopWidget());
}

class TopWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Home()
    );
  }
}

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('About Us'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.people),
            ),
          ],
        ),
        body: Container(
            padding: EdgeInsets.all(1),
            child: Container(
              color: Colors.brown[50],
              width:600,
              height:150,
            child:
            Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '825210113 - Tifani Anasya Putri',
                        style: GoogleFonts.roboto(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Expanded(
                            child: Image.asset('assets/Logo SI clear.png'),
                          ),
                          Expanded(
                            child: Image.asset('assets/FTI UNTAR.png'),
                          ),
                        ],
                      ),
                    ],
                  ),

                ]
            ),
            ),
        ),

    );
  }
}

