import 'package:flutter/material.dart';

import 'falcorp_app.dart';
import 'injection.dart';

void main() {
  setupLocator();
  runApp(FalcorpApp(env: 'uat'));
}