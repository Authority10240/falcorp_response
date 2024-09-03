
import 'package:intl/intl.dart';




extension DateTimeExtention on DateTime{

  String get toCalenderDate => DateFormat('MMMM, yyyy').format(this).toString();

  String get toEventDate => DateFormat('dd-MMM-yyyy').format(this).toString();
}