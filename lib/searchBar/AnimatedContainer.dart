import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lynight/searchBar/bar.dart';

void main() => runApp(AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  // Define the various properties with default values. Update these properties
  // when the user taps a FloatingActionButton.
  double _width = 50;
  double _height = 50;
  Color _color = Colors.deepOrange;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(50);

  double _width2 = 0;
  double _height2 = 0;
  double _opacity = 0;

  @override
  Widget build(BuildContext context) {
    //var assetsImage = new AssetImage('assets/loupe.png');
    //var imageLoupe = new Image(image: assetsImage);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer Demo'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _borderRadius = BorderRadius.circular(8);
                _width = 300;
                _height = 80;
                MyHomePage();
                //_opacity = 0.5;
              });
            },
            child: AnimatedContainer(
              // Use the properties stored in the State class.
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: _borderRadius
                ),
              ),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              // Define how long the animation should take.
              duration: Duration(seconds: 1),
              // Provide an optional curve to make the animation feel smoother.
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        /*floatingActionButton: FloatingActionButton(
          child: Icon(Icons.search),
          // When the user taps the button
          onPressed: () {
            // Use setState to rebuild the widget with new values.
            setState(() {
              // Create a random number generator.
              final random = Random();

              // Generate a random width and height.
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              // Generate a random color.
              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              // Generate a random border radius.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ),*/
      ),
    );
  }
}
