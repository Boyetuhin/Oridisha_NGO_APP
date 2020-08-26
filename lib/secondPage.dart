// import 'dart:html';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'camera_functio.dart';
import 'image_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';//for 'File'
import 'package:geolocator/geolocator.dart';

List<CameraDescription> cameras;






class SecondPage extends StatefulWidget {
  final value;
  SecondPage({Key key, this.value}) : super(key: key);

  createState() {
    return SecondPageState();
  }
}




class SecondPageState extends State<SecondPage> {


 



  String _locationMessage = ""; 
  void _getCurrentLocation() async {
    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
    setState(() {
      _locationMessage = "${position.latitude}, ${position.longitude}";
    });
  }




  File imagefile;
  openCamera(BuildContext context)async{
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imagefile = picture;
    }
    );
  }





 showImage(){
  if(imagefile == null){
    return Text(" My image  here");
  }else {
    Image.file(imagefile,width:400,height:400);
  }
}





  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xFF425c5a),
      // appBar: new AppBar(
      //    backgroundColor: Color(0xFF425c5a),
      //   title: new  //text('jjhj') ,
      
      
      //         Row(
      //         children: [
      //           Padding(padding: EdgeInsets.only(right: 1, left: 0)),
      //           Iconimage(),
      //           Text(
      //               '  \n \n 0DISHA PVTG EMPOWERMENT & LIVELIHOODS IMPROVEMENT \n\n                                              PROGRAMME',
      //               style: TextStyle(
      //                   fontFamily: 'Montserrat',
      //                   color: Color(0xFFF4D3AE), //Colors.white,
      //                   fontWeight: FontWeight.w500, //bold
      //                   letterSpacing: 0,
      //                   fontSize: 9.9)),//13.5
      //           Padding(padding: EdgeInsets.only(left: 0)),
      //           Secondimage(),
      //         ],
      //       ),
      // ),

      body: 
        SafeArea(
                  child: Container(margin: EdgeInsets.only(top: 0,left: 00),
            child:
            Column(
              children: [


                    Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 1, left: 0)),
                Iconimage(),
                Text(
                    '  \n \n ODISHA PVTG EMPOWERMENT & LIVELIHOODS IMPROVEMENT \n\n                                              PROGRAMME',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xFFF4D3AE), //Colors.white,
                        fontWeight: FontWeight.w500, //bold
                        letterSpacing: 0,
                        fontSize: 11.6)),//13.5
                Padding(padding: EdgeInsets.only(left: 0)),
                Secondimage(),
              ],
            ),


 SizedBox(height: 60.0),


                //LoginForm(),
                //CommonScreen(),

                Accountimage(),


                SizedBox(height: 40.0),


                 Text('PBDA, Jamardihi',
                style: TextStyle(
                    fontFamily: 'Californian FB',
                    color: Colors.white,//color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //Colors.black,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2,
                    fontSize: 18.0)),


                     SizedBox(height: 10.0),


                     Text('Test User(000000)',
                style: TextStyle(
                    fontFamily: 'Californian FB',
                    color: Colors.white,//color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //Colors.black,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2,
                    fontSize: 18.0)),


                    SizedBox(height: 10.0),



                     Text('Sample Designation',
                style: TextStyle(
                    fontFamily: 'Californian FB',
                    color: Colors.white,//color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //Colors.black,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2,
                    fontSize: 18.0)),



                    SizedBox(height: 10.0),




                     Text('test.user@domain.com',
                style: TextStyle(
                    fontFamily: 'Californian FB',
                    color: Colors.white,//color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //Colors.black,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2,
                    fontSize: 18.0)),



                    SizedBox(height: 10.0),




                     Text('9830098300',
                style: TextStyle(
                    fontFamily: 'Californian FB',
                    color: Colors.white,//color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //Colors.black,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2,
                    fontSize: 18.0)),





                    SizedBox(height: 10.0),
                    Text ('My location here'),
                  
                    Text(_locationMessage),





                    



                    SizedBox(height: 40.0),


                    Row(
                      children: [
                        Spacer(),
                        cameraButton(),
                        Spacer(),
                         deviceButton(),
                        Spacer(),
                          exitButton(),
                        Spacer(),
                          locationButton(),
                      ],
                    ),
       
            ],
            ),


            
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




 Widget cameraButton() {
    return RaisedButton(
      color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //DARK GREEN COLOR
      child: new Text('Camera',
          style: TextStyle(
            fontFamily: 'Californian FB',
            color: Colors.black, //Color(0xFF425c5a),
            fontWeight: FontWeight.normal, //bold
            letterSpacing: 2.0,
            fontSize: 17.0,
          ),),
          

      padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical:
              13.0
              ),//Activate button box will take more space horizontally & vertically.

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),



      onPressed: () {

         openCamera(context);
        

        var value = new MaterialPageRoute(
          builder: (BuildContext context) => new CameraAccess(value:imagefile ),
          );

          Navigator.of(context).push(value);



      },
      
    );
   
 }




 Widget deviceButton() {
    return RaisedButton(
      color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //DARK GREEN COLOR
      child: new Text('Device',
          style: TextStyle(
            fontFamily: 'Californian FB',
            color: Colors.black, //Color(0xFF425c5a),
            fontWeight: FontWeight.normal, //bold
            letterSpacing: 2.0,
            fontSize: 17.0,
          )),

      padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical:
              13.0
              ),//Activate button box will take more space horizontally & vertically.

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),



      onPressed: () {

        {Navigator.of(context).pushNamed("/DeviceDetails");}

        //{Navigator.of(context).pushNamed("/SecondPage");}
        
      },
    );
 }





 Widget exitButton() {
    return RaisedButton(
      color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //DARK GREEN COLOR
      child: new Text('Exit',
          style: TextStyle(
            fontFamily: 'Californian FB',
            color: Colors.black, //Color(0xFF425c5a),
            fontWeight: FontWeight.normal, //bold
            letterSpacing: 2.0,
            fontSize: 17.0,
          )),

      padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical:
              13.0
              ),//Activate button box will take more space horizontally & vertically.

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),



      onPressed: () {
        exit(0);
        //{Navigator.of(context).pushNamed("/SecondPage");}
        
      },
    );
 }






Widget locationButton() {
    return RaisedButton(
      color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //DARK GREEN COLOR
      child: new Text('Loc',
          style: TextStyle(
            fontFamily: 'Californian FB',
            color: Colors.black, //Color(0xFF425c5a),
            fontWeight: FontWeight.normal, //bold
            letterSpacing: 2.0,
            fontSize: 17.0,
          )),

      padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical:
              13.0
              ),//Activate button box will take more space horizontally & vertically.

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),



      onPressed: () {

        _getCurrentLocation();
        
      },
    );
 }








}




















