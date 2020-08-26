
import 'package:flutter/material.dart';
import 'package:oridsha_ngo/image_widget.dart';
import 'package:oridsha_ngo/login_Form.dart';

class LoginScreen extends StatefulWidget {

  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color(0xFF425c5a), //for violet color//0xFF7A9BEE //0xFF425c5a[fav]

      body: SingleChildScrollView(
              child: SafeArea(
          //Padding(padding: EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0, bottom: 0.0),
          child: Column(children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 1, left: 0)),
                Iconimage(),
                Text(
                    '  \n \n 0DISHA PVTG EMPOWERMENT & LIVELIHOODS IMPROVEMENT \n\n                                              PROGRAMME',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xFFF4D3AE), //Colors.white,
                        fontWeight: FontWeight.w500, //bold
                        letterSpacing: 0,
                        fontSize: 11.7)),
                Padding(padding: EdgeInsets.only(left: 0)),
                Secondimage(),
              ],
            ),
            SizedBox(height: 160.0),
            Text(' First Time user : Activate your device',
                style: TextStyle(
                    fontFamily: 'Californian FB',
                    color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //Colors.black,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2,
                    fontSize: 18.0)),
            SizedBox(
              height: 10.0,
            ),
            LoginForm(),
          ]),
        ),
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
