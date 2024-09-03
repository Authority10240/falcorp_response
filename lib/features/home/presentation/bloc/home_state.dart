part of 'home_bloc.dart';
@immutable
abstract class HomePageState extends BaseState {
  DateTime? selectedDate = DateTime.now();
  DateTime? todaysDate;
  List<EventEntityModel>? eventEntityList;
  String? toggleValue = 'Month';

  HomePageState({this.toggleValue,this.eventEntityList,this.todaysDate,this.selectedDate, super.errorCode, super.errorMessage});
}

class HomePageInitState extends HomePageState  {
  HomePageInitState({super.toggleValue, super.selectedDate});
}

class HomePageLoadCalenderEventsState extends HomePageState{
  HomePageLoadCalenderEventsState({
    super.toggleValue,
    super.eventEntityList,
    super.errorCode,
    super.errorMessage,
    super.selectedDate,
    super.todaysDate
});
}

class HomePageDateSelectedState extends HomePageState{
  HomePageDateSelectedState({
    super.toggleValue,
    super.eventEntityList,
    super.errorCode,
    super.errorMessage,
    super.selectedDate,
    super.todaysDate});
}

class HomePageChangeCalenderViewState extends HomePageState{
  HomePageChangeCalenderViewState({
    super.toggleValue,
    super.eventEntityList,
    super.errorCode,
    super.errorMessage,
    super.selectedDate,
    super.todaysDate
});
}

