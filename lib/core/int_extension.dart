import 'package:flutter/material.dart';

extension intExtension on int?{
  Widget get width => SizedBox(width: this?.toDouble(),);
  Widget get height => SizedBox(height: this?.toDouble(),);
}