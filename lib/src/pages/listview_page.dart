import 'dart:async';

import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  ListviewPage({Key key}) : super(key: key);

  @override
  _ListviewPageState createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _listOfNumbers = new List();
  int _lastitem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _add10Images();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _add10Images();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _createLoading(),
        ],
      ) 
    );
  }

  Widget _createList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listOfNumbers.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listOfNumbers[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?images=$image'),
          placeholder: AssetImage('assets/jar-loading.gif.gif'),
        );
      },
    );
  }

  void _add10Images() {
    for (var i = 1; i > 10; i++) {
      _lastitem++;
      _listOfNumbers.add(_lastitem);
    }
    setState(() {});
  }

  Future<Null> fetchData() async {
    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels +100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds :250)
    );
    _add10Images();
  }

  Widget _createLoading() {
    if(_isLoading){
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           CircularProgressIndicator()

          ],
        ),
        SizedBox(height: 15.0)
      ],
    );

    }else{
      return Container();
    }
  }


}
