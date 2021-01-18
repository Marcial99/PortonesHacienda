import 'package:flutter/material.dart';
import 'date_picker.dart';
import 'input_text.dart';
import 'input_visita.dart';
import 'input_transporte.dart';
import 'button_cargar_imagen.dart';
import 'button_tomar_foto.dart';
import 'button_aceptar.dart';
import 'button_cancelar.dart';
class Registro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final formulario = ListView(
      children: [
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
              top: 35.0, left: 30.0,
              right: 30.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    width: 110.0,
                    child: Text("Fecha:",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                      ),),
                  ),

                  MyTextFieldDatePicker(labelText: "Date",
                    prefixIcon: Icon(Icons.date_range),
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    lastDate: DateTime.now().add(Duration(days: 366)),
                    firstDate: DateTime.now(),
                    initialDate: DateTime.now().add(Duration(days: 1)),
                    onDateChanged: (selectedDate) {
                      // Do something with the selected date
                    },)
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    width: 110.0,
                    child: Text(
                        "Domicilio:",
                        textAlign:  TextAlign.end,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        )),
                  ),

                  Container(
                    child: InputTextFormulario(),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    width: 110.0,
                    child: Text(
                        "Nombre de visita:",
                        textAlign:  TextAlign.end,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        )),
                  ),

                  Container(

                    child: InputTextFormulario(),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    width: 110.0,
                    child: Text(
                        "Acompañantes:",
                        textAlign:  TextAlign.end,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        )),
                  ),

                  Container(

                    child: InputVisita(),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    width: 110.0,
                    child: Text(
                        "Transporte:",
                        textAlign:  TextAlign.end,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        )),
                  ),

                  Container(

                    child: InputTransporte(),
                  )
                ],
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    width: 110.0,
                    child: Text(
                        "Credencial:",
                        textAlign:  TextAlign.end,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        )),
                  ),

                  Container(
                    child: Column(
                      children: [
                        ButtonCargar(),
                        ButtonTomarFoto()
                      ],
                    ),
                  )
                ],
              ),

                  Container(
                    width: 300,
                    height: 150,
                    margin: EdgeInsets.only(
                        top: 20
                    ),

                    color: Colors.black12,

                    alignment: Alignment.center,
                    child: Text("Frontal INE"),
                  ),



                  Container(
                    width: 300,
                    height: 150,

                    margin: EdgeInsets.only(
                        top: 20
                    ),
                    color: Colors.black12,
                    alignment: Alignment.center,
                    child: Text("Trasera INE"),
                  ),
              Container(
                margin: EdgeInsets.only(
                  top: 20.0,
                  bottom: 15.0,
                  left: 10.0
                ),
                alignment: Alignment.center,
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ButtonAceptar(),
                    ButtonCancelar()
                  ],
                ) ,
              ),



            ],
          )
          ,
        )
      ],

    );

    return formulario;
  }


}