library fwfd;   // change the library name if you want

import 'dart:html';
import 'dart:math';
import 'dart:async';
//import 'dart:svg';


part 'display.dart';
part 'fish.dart';


// global game object
Display display;

void main() {

  // create game object
  display = new Display();
}


void repaint() {
  display.draw();
}