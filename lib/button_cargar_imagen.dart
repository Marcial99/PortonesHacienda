import 'package:flutter/material.dart';

class ButtonCargar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ButtonCargar();
  }

}

class _ButtonCargar extends State<ButtonCargar>{
  void onPressedCargar(){
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Cargar")));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
          left: 15.0
      ),
      child: RaisedButton(onPressed: onPressedCargar,
        child: Row(
          children: [
            Text("Cargar"),
            Container(
              margin: EdgeInsets.only(
                left: 8.0,
              ),
              child: Icon(
                  Icons.attach_file
              ),
            )

          ],
        ),
        color: Colors.yellow,

      ),
    );

  }

}