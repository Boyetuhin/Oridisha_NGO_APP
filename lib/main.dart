import 'package:flutter/material.dart';
import 'package:oridsha_ngo/screens/deviceDetails.dart';
import 'package:oridsha_ngo/screens/login_page.dart';
import 'package:oridsha_ngo/secondPage.dart';
// import 'package:camera/camera.dart';
// import 'dart:async';



void main() => runApp(MyApp());





class MyApp extends StatelessWidget{

  Widget build(context){
    return MaterialApp(
      title: 'ODISHA',
      debugShowCheckedModeBanner: false,
       home: LoginScreen(),

    routes:<String,WidgetBuilder>{
       "/SecondPage": (BuildContext context) => new SecondPage(),
       "/DeviceDetails": (BuildContext context) => new DeviceDetails(),
       // "/CameraAccess":(BuildContext context) => new CameraAccess(),   
         }

    );
  }
}