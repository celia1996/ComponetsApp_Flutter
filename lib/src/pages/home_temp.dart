import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

final options = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _createItemsShort()
      ),
    );
  }

List<Widget> _createItems(){

  List<Widget> list = new List<Widget>();

  for (String option in options) {
    
    final tempWidget = ListTile(
      title: Text(option),
    );

    list.add(tempWidget);
    list..add(Divider());
  }

  return list;
}

List<Widget> _createItemsShort(){

  return options.map(( item ){

    return Column(
      children: <Widget>[
        ListTile(
          title: Text( item + '!'),
          subtitle: Text('subtitle'),
          leading: Icon(Icons.account_box),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){},
        ),
        Divider()
      ],
    );

  }).toList();

}

}