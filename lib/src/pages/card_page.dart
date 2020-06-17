import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipe1(),
          SizedBox(height: 30),
          _cardTipe2(),
          _cardTipe1(),
          SizedBox(height: 30),
          _cardTipe2(),
          _cardTipe1(),
          SizedBox(height: 30),
          _cardTipe2(),
          _cardTipe1(),
          SizedBox(height: 30),
          _cardTipe2(),
          _cardTipe1(),
          SizedBox(height: 30),
          _cardTipe2()
          ],
      ),
    );
  }

  Widget _cardTipe1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo, color: Colors.blue,),
            title: Text('Soy el título de esta tarjeta'),
            subtitle: Text('En esta descripción vamos a explicar por qué hemos subido esta tarjeta como si fuese una story de instagram'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('OK'),
                onPressed: (){},
              )
            ],
          )
        ],
      )
    );
  }

  Widget _cardTipe2() {
    final card2 = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://www.vespa.com/mediaObject/vespa/travel/travel-valle-aosta/01-Cover-Image/cover-image/original/cover-image.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://www.vespa.com/mediaObject/vespa/travel/travel-valle-aosta/01-Cover-Image/cover-image/original/cover-image.jpg') ,
          // ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text('Breve descripción')
            )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius:10,
            spreadRadius: 2,
            offset: Offset(2, 10)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card2,
      ),
    );
  }
}
