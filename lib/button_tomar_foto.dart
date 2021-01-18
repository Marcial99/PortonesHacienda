import 'package:flutter/material.dart';

class ButtonTomarFoto extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ButtonTomarFoto();
  }

}

class _ButtonTomarFoto extends State<ButtonTomarFoto>{
  void onPressedCargar(){
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Tomar foto")));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15.0
      ),
      width: 135,
      alignment: Alignment.center,
      child: RaisedButton(onPressed: onPressedCargar,
        child: Row(
          children: [
            Text("Tomar foto"),
            Container(
              margin: EdgeInsets.only(left: 6.0),
              child:Icon(
                  Icons.camera
              ) ,
            )

          ],
        ),
        color: Colors.yellow,

      ),
    );
  }

}