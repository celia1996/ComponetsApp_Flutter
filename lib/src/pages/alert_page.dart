import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text('Alert Page'),
   ),
   body: Center(
     child: RaisedButton(
       child: Text('Mostrar Alerta'),
       color: Colors.blue,
       textColor: Colors.white,
       shape: StadiumBorder(),
       onPressed:()=> _showAlert(context),

     ),
   ),
   floatingActionButton: FloatingActionButton(
     child: Icon(Icons.arrow_back_ios),
     onPressed: (){
       Navigator.pop(context);
     },
   ),
 );
  }

void _showAlert(BuildContext context){

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {

      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
        title: Text('Título'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Este es el contenido de la alerta'),
            FlutterLogo(size:100)
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Cancelar'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          FlatButton(
            child: Text('OK'),
            onPressed: ()=> Navigator.of(context).pop()

          )
        ],
      );
    },
    
    );

}

}