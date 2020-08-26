import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class LoginForm extends StatefulWidget {
  @override
  createState() {
    return LoginFormState();
  }
}




class LoginFormState extends State<LoginForm> {



//  File imagefile;





  // _openCamera(BuildContext context)async{
  //   var picture = await ImagePicker.pickImage(source: ImageSource.camera);
  //   setState(() {
  //     imagefile = picture;
  //   }
  //   );
  // }






//  showImage(){
//   if(imagefile == null){
//     return Text(" My image  here");
  
//   }else {
//     Image.file(imagefile,width:400,height:400);
//   }
// }




   var textLength = 6;
   var mobileLength = 10;

   //final formKey = GlobalKey<FormState>();                  //Form 

   @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.only(
          top: 0.0,
          right: 43.0,
          left: 43), //gap b/w userId & 'Fist time user'//also box size

      //child: Form(
      // key: formKey,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,    //gonna make it in center and stretchable
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          
          userField(),

          Container(margin: EdgeInsets.only(top: 40.0)),

          numberField(),


          Container(margin: EdgeInsets.only(top: 60.0, )),



          activateButton(),
          Container(margin: EdgeInsets.only(top: 60.0, )),

          //showImage(),

        ],
      ),
      // ),  Form
    );
  }














  Widget userField() {
    return TextFormField(



      onChanged: (text) {
        setState(
          () {
            textLength = text.length;
          },
        );
      },





      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.blueGrey //greenAccent//Color(0xFF425c5a),
              ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[100]),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),

        suffixIcon: Icon(textLength <= 5 ? Icons.cancel : Icons.check,
            color: textLength >= 6 ? Colors.green : Colors.redAccent),

        labelText: 'User ID',
        labelStyle: TextStyle(
          fontFamily: 'Californian FB',
          color: Colors.white38, //Color(0xFF425c5a),
          fontWeight: FontWeight.normal,
          letterSpacing: 2.0,
          fontSize: 13.0,
        ),
        hintText: 'Enter your 6 digit user id',
        hintStyle: TextStyle(
          fontFamily: 'Californian FB',
          color: Colors.white38, //Color(0xFF425c5a),
          fontWeight: FontWeight.normal,
          letterSpacing: 2.0,
          fontSize: 13.0,
        ),
        //filled: true,
        //fillColor: Colors.grey[200],
        prefixIcon: Icon(
          Icons.account_circle,
          color: Color(0xFFF4D3AE),
        ),
      ),

      keyboardType: TextInputType.number,
      inputFormatters: [
        //only numeric keyboard.
        LengthLimitingTextInputFormatter(6), //only 6 digit
        WhitelistingTextInputFormatter.digitsOnly,
      ],

      // validator: (String value) {
      //   if (value.length < 6) {
      //     return 'Enter your vaild 6 digit User ID';
      //   }
      //   return null;
      // },                                                                              // Active button validation
    );
  }

  Widget numberField() {
    return TextFormField(


      onChanged: (text) {
        setState(
          () {
            mobileLength = text.length;
          },
        );
      },



      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey //Color(0xFF425c5a),
              ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
//
//
//
//
//
//
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red[100]),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),



        suffixIcon: Icon(mobileLength <= 9 ? Icons.cancel : Icons.check,
            color: mobileLength >= 10 ? Colors.green : Colors.redAccent),

        labelText: 'Mobile Number',
        labelStyle: TextStyle(
          fontFamily: 'Californian FB',
          color: Colors.white38, //Color(0xFF425c5a),
          fontWeight: FontWeight.normal,
          letterSpacing: 2.0,
          fontSize: 13.0,
        ),

        hintText: '10 digit mobile number',
        hintStyle: TextStyle(
          fontFamily: 'Californian FB',
          color: Colors.white38, //Color(0xFF425c5a),
          fontWeight: FontWeight.normal,
          letterSpacing: 2.0,
          fontSize: 13.0,
        ),

        //filled: true,
        //fillColor: Colors.grey[200],
        prefixIcon: Icon(
          Icons.phone,
          color: Color(0xFFF4D3AE),
        ),
      ),

      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        WhitelistingTextInputFormatter.digitsOnly
      ],

      // validator: (String value) {
      //   if (value.length < 10) {
      //     return 'Enter 10 digit mobile number';
      //   }
      //   return null;
      // },
    );
  }

  Widget activateButton() {
    return RaisedButton(
      color: Color(0xFFF4D3AE), //Color(0xFF425c5a), //DARK GREEN COLOR
      child: new Text('Activate',
          style: TextStyle(
            fontFamily: 'Californian FB',
            color: Colors.black, //Color(0xFF425c5a),
            fontWeight: FontWeight.normal, //bold
            letterSpacing: 2.0,
            fontSize: 17.0,
          )),

      padding: EdgeInsets.symmetric(
          horizontal: 55.0,
          vertical:
              15.0
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

        {Navigator.of(context).pushNamed("/SecondPage");}
        // _openCamera(context);

        // var value = new MaterialPageRoute(
        //   builder: (BuildContext context) => new CameraAccess(value:imagefile ),
        //   );

        //   Navigator.of(context).push(value);










        //  Navigator.of(context).pushNamed("/CameraAccess");
        //   print(formKey.currentState.validate()
        //   ); // if form valid it will print true in terminal.
      },
    );
  }
}