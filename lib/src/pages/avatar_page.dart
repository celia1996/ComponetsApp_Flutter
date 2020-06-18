import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://t2.ea.ltmcdn.com/es/razas/0/4/3/img_340_beagle_0_orig.jpg'),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child:
                CircleAvatar(child: Text('SL'), backgroundColor: Colors.brown),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
        image: NetworkImage(
            'https://wallpaperstock.net/reproducci%C3%B3n-de-beagle-wallpapers_33159_1920x1200.jpg'),
        placeholder: AssetImage('assets/jar-loading.gif.gif'),
        fadeInDuration: Duration(milliseconds: 200),
      )),
    );
  }
}
