
import 'package:flutter/material.dart';


class CameraAccess extends StatefulWidget{
  final value;

  CameraAccess({Key key, this.value}) : super(key:key); //costructor
 createState() {
    return CameraAccessState();
  }  
}



class CameraAccessState extends State<CameraAccess>{
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF425c5a), 
      appBar: new AppBar(
         backgroundColor: Color(0xFF425c5a),
        title: new Text("Image Page")
      ), 


      body: new ListView(
        children:[
          new Container(
            height:400.0,

            child: Image.file(widget.value),
          ),
        ]
      )
      );
    }
}


