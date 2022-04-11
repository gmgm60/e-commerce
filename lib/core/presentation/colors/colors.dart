import 'package:flutter/material.dart';

Map<int, Color> _color =
const {
  50:Color.fromRGBO(247,127,0, .1),
  100:Color.fromRGBO(247,127,0, .2),
  200:Color.fromRGBO(247,127,0, .3),
  300:Color.fromRGBO(247,127,0, .4),
  400:Color.fromRGBO(247,127,0, .5),
  500:Color.fromRGBO(247,127,0, .6),
  600:Color.fromRGBO(247,127,0, .7),
  700:Color.fromRGBO(247,127,0, .8),
  800:Color.fromRGBO(247,127,0, .9),
  900:Color.fromRGBO(247,127,0, 1),
};

MaterialColor appMainColor = MaterialColor(0xFFF77F00, _color);

const Color appBlue = Color(0xFF40BFFF);
const Color appGrey = Color(0xFF9098B1);
const Color appRed = Color(0xFFD62828);
const Color appDarkBlue = Color(0xFF003049);
