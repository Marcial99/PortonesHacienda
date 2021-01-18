import 'package:flutter/material.dart';

class InputVisita extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _InputVisita();
  }

}

class _InputVisita extends State<InputVisita>{

  String dropdownValue = '1';


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black12
      ),
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(
        top: 5.0,
        left: 10.0
      ),
      child:
      DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black,fontSize: 13.0),
        underline: Container(
          height: 0,
          color: Colors.black,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['0', '1', '2', '3','4','5','6']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

  }

}


