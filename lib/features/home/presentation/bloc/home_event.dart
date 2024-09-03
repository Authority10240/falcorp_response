part of 'home_bloc.dart';
 @immutable
abstract class HomePageEvent extends BaseEvent {}


class HomePageDateSelectedEvent extends HomePageEvent{
  final DateTime dateTime;

  HomePageDateSelectedEvent({required this.dateTime});
}

class HomePageChangeCalenderViewEvent extends HomePageEvent{
}

class HomePageLoadCalenderEvent extends HomePageEvent{
   final DateTime dateTime;

   HomePageLoadCalenderEvent({required this.dateTime});
}