import 'package:flutter/material.dart';

class ButtonAceptar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ButtonAceptar();
  }

}

class _ButtonAceptar extends State<ButtonAceptar>{
  void onPressedCargar(){
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Guardando...")));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: 15.0
      ),
      width: 130,
      alignment: Alignment.center,
      child: RaisedButton(onPressed: onPressedCargar,
        elevation: 10,
        child:
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Aceptar",
            style: TextStyle(
              color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
            Container(
              margin: EdgeInsets.only(left: 6.0),
              child: Icon(
                Icons.save,
                color: Colors.white,
              )
              ,
            ),
          ],
        ),
        color: Colors.green,

      ),
    );
  }

}