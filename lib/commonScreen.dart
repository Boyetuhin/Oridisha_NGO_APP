import 'package:flutter/material.dart';
import 'package:oridsha_ngo/image_widget.dart';

class CommonScreen extends StatefulWidget {
  createState() {
    return CommonScreenState();
  }
}

class CommonScreenState extends State<CommonScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF425c5a),
      body: Column(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(right: 1, left: 0)),
              Iconimage(),
              Text(
                  '  \n \n ODISHA PVTG EMPOWERMENT & LIVELIHOODS IMPROVEMENT \n\n                                                PROGRAMME',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xFFF4D3AE), //Colors.white,
                      fontWeight: FontWeight.w500, //bold
                      letterSpacing: 0,
                      fontSize: 13.5)),
              Padding(padding: EdgeInsets.only(left: 0)),
              Secondimage(),
            ],
          )










          
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFF425c5a),
        child: Text(
          'Copyright © Odisha PVTG Empowerment & Livelihood improvement Programme',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white, //Color(0xFFF4D3AE), //color:Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: 'Californian FB',
            letterSpacing: 1.5,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
