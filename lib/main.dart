import 'package:falcorp_response/falcorp_app.dart';
import 'package:flutter/cupertino.dart';

import 'injection.dart';


void main() {
  setupLocator();
  runApp(FalcorpApp(env: 'test'));
}



