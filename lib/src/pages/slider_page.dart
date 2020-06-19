import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100.0;
  bool _lockImage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage())
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: (_lockImage)
          ? null
          : (value) {
              setState(() {
                _sliderValue = value;
              });
            },
    );
  }

  Widget _createCheckBox() {
    // return Checkbox(
    //   value: _lockImage,
    //   onChanged: (value){
    //     setState(() {
    //     _lockImage = value;
    //     });
    //   },
    //   );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _lockImage,
      onChanged: (value) {
        setState(() {
          _lockImage = value;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://p4.wallpaperbetter.com/wallpaper/441/29/100/red-mushroom-between-two-large-and-small-mushrooms-on-green-grasses-near-tree-wallpaper-preview.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _lockImage,
      onChanged: (value) {
        setState(() {
          _lockImage = value;
        });
      },
    );
  }
}
