import 'package:flutter/material.dart';

class InputTextFormulario extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InputTextFormulario();
  }

}

class _InputTextFormulario extends State<InputTextFormulario>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
          top: 5.0,
          left: 10.0
      ),
      padding: EdgeInsets.only(
        left: 20.0
      ),
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black12
      )
      ,

      width: 200.0,
      height: 40,
      child: TextFormField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          border:InputBorder.none,

          
        )
            ,

      ),

    );
  }

}