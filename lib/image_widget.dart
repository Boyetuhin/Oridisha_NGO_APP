import 'package:flutter/material.dart';




class Iconimage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('images/OPELIP.JPG');
    var image = new Image(image: assetsImage,width:35.0, height:35.0);
    return new Container(
      child: image,
      
    );
  }
}




class Secondimage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('images/secondLogo.jpg',);
    var image = new Image(image: assetsImage,width:35.0, height:35.0);
    return new Container(
      child: image,
      
    );
  }
}








class Sportimage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('images/sport-team.png',);
    var image = new Image(image: assetsImage,width:35.0, height:35.0);
    return new Container(
      child: image,
      
    );
  }
}









class Childimage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('images/child.jpg',);
    var image = new Image(image: assetsImage,width:35.0, height:35.0);
    return new Container(
      child: image,

    );
  }
}





class Accountimage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage('images/account2.png',);
    var image = new Image(image: assetsImage,width:125.0, height:115.0);
    return new Container(
      child: image,

    );
  }
}
