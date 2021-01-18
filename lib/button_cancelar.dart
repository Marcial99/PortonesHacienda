import 'package:flutter/material.dart';

class ButtonCancelar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ButtonCancelar();
  }

}

class _ButtonCancelar extends State<ButtonCancelar>{
  void onPressedCargar(){
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Cancelar")));
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Cancelar",
              style: TextStyle(
                  color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            Container(
              margin: EdgeInsets.only(left: 6.0),
              child: Icon(
                Icons.cancel,
                color: Colors.white,
              )
              ,
            ),

          ],
        ),
        color: Colors.red,

      ),
    );
  }

}