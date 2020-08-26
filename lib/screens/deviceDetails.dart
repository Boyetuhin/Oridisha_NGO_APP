import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';








class DeviceDetails extends StatefulWidget {
  final value;

  DeviceDetails({Key key, this.value}) : super(key: key); //costructor
  createState() {
    return DeviceDetailsState();
  }
}





class DeviceDetailsState extends State<DeviceDetails> {


DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

List<Widget> textWidgets = [];
    
 




 





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

      body: SingleChildScrollView(
        child: SafeArea(
                  child: Container(margin: EdgeInsets.only(top: 0,left: 00),
            child:
            Column(
              children: [


                    Row(
              children: [
                Padding(padding: EdgeInsets.only(right: 1, left: 0)),
               
                // Text(
                //     '  \n \n ODISHA PVTG EMPOWERMENT & LIVELIHOODS IMPROVEMENT \n\n                                              PROGRAMME',
                //     style: TextStyle(
                //         fontFamily: 'Montserrat',
                //         color: Color(0xFFF4D3AE), //Colors.white,
                //         fontWeight: FontWeight.w500, //bold
                //         letterSpacing: 0,
                //         fontSize: 13.2)),//13.5
                Padding(padding: EdgeInsets.only(left: 0)),
                
              ],
            ),


 SizedBox(height: 60.0),


                //LoginForm(),
                //CommonScreen(),

                


                SizedBox(height: 10.0),


                //  Text('PBDA, Jamardihi',
                // style: TextStyle(
                //     fontFamily: 'Californian FB',
                //     color: Colors.white,//color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //Colors.black,
                //     fontWeight: FontWeight.normal,
                //     letterSpacing: 2,
                //     fontSize: 18.0)),


                     SizedBox(height: 0.0,),


                   

                    Row(
                      children: [
                        devicedetailsButton(),
                      ],
                    ),
       
            ],
            ),


            
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







Widget devicedetailsButton() {
    return RaisedButton(
      color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //DARK GREEN COLOR
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[



          Text('Ddevice info\n',
          style: TextStyle(
            fontFamily: 'Californian FB',
            color: Colors.black, //Color(0xFF425c5a),
            fontWeight: FontWeight.normal, //bold
            letterSpacing: 2.0,
            fontSize: 17.0,
          )
          ),

          ...textWidgets,
          



        ],
      ),

      padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical:
              9.0
              ),//Activate button box will take more space horizontally & vertically.

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),



      onPressed: () async {

        AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;

        setState(() {
            textWidgets.add(Text('androidId: ${androidInfo.androidId}',    ),);
            textWidgets.add(Text('board: ${androidInfo.board}'));

            textWidgets.add(Text('OS VERSION: ${androidInfo.version.release}',     
            
            style: TextStyle(
            fontFamily: 'Californian FB',
            color: Colors.black, //Color(0xFF425c5a),
            fontWeight: FontWeight.normal, //bold
            letterSpacing: 2.0,
            fontSize: 27.0,
          )    ));


            textWidgets.add(Text('bootloader: ${androidInfo.bootloader}'));
            textWidgets.add(Text('brand: ${androidInfo.brand}'));
            textWidgets.add(Text('device: ${androidInfo.device}'));
            textWidgets.add(Text('display: ${androidInfo.display}'));
            textWidgets.add(Text('fingerprint: ${androidInfo.fingerprint}'));
            textWidgets.add(Text('hardware: ${androidInfo.hardware}'));
            textWidgets.add(Text('hashCode: ${androidInfo.hashCode}'));
            textWidgets.add(Text('host: ${androidInfo.host}'));
            textWidgets.add(Text('id: ${androidInfo.id}'));
            textWidgets
                .add(Text('isPhysicalDevice: ${androidInfo.isPhysicalDevice}'));
            textWidgets.add(Text('manufacturer: ${androidInfo.manufacturer}'));
            textWidgets.add(Text('model: ${androidInfo.model}'));
            textWidgets.add(Text('product: ${androidInfo.product}'));
          });
        
      },
    );
 }








}




















