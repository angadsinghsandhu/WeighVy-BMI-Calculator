// imports
import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  // variables
  final int value;

  // constructor
  HeightSlider(this.value);

  @override
  _HeightSliderState createState() => _HeightSliderState(value);
}

class _HeightSliderState extends State<HeightSlider> {
  // variables
  final int value;

  // constructor
  _HeightSliderState(this.value);

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
