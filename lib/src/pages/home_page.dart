import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';
import 'package:components/src/pages/alert_page.dart';
// import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {

        return ListView(
          children: _itemsList(snapshot.data, context),
        );

      },
    );
  }

  List<Widget> _itemsList(List <dynamic> data, BuildContext context) {
    
    final List<Widget> options = [];

    data.forEach((option) { 

      final widgetTemporary = ListTile(
        title: Text(option['texto']),
        leading: getIcon(option['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){

          Navigator.pushNamed(context, option['ruta']);

          // final route = MaterialPageRoute(
          //   builder: (context)=> AlertPage()
          // );
          // Navigator.push(context, route);

        },
      );
      options..add(widgetTemporary)
             ..add(Divider());
    });
    return options;
  }
}
