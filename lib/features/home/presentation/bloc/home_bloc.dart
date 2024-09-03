

import 'package:bloc/bloc.dart';
import 'package:falcorp_response/core/base_classes/base_bloc.dart';
import 'package:falcorp_response/core/base_classes/base_event.dart';
import 'package:falcorp_response/core/base_classes/base_state.dart';
import 'package:falcorp_response/features/home/data/models/home_model/load_calender_event_model.dart';
import 'package:falcorp_response/features/home/domain/use_cases/home_usecase/load_calender_events_usecase.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';


part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc
    extends BaseBloc<HomePageEvent, HomePageState> {
    HomeBloc({
      required this.loadCalenderEventsUseCase
    }): super(HomePageInitState(toggleValue: 'Month', selectedDate: DateTime.now())) {
        on<HomePageChangeCalenderViewEvent>((event, emit)=> _onHomePageChangeCalenderViewEvent(event, emit));
        on<HomePageDateSelectedEvent>((event, emit)=> _onHomePageDateSelectedEvent(event, emit));
        on<HomePageLoadCalenderEvent>((event, emit)=> _onHomePageLoadCalenderEvent(event, emit));

    }

    final LoadCalenderEventsUseCase loadCalenderEventsUseCase;

    Future<void> _onHomePageLoadCalenderEvent(
          HomePageLoadCalenderEvent event,
        Emitter<HomePageState> emit
        )async{

      emit(HomePageLoadCalenderEventsState(toggleValue: state.toggleValue)..dataState = DataState.loading);
      await loadCalenderEventsUseCase.call(
        params: LoadCalenderEventsUseCaseParams(dateTime: event.dateTime),
        onSuccess: (success){
          emit(HomePageLoadCalenderEventsState(
            eventEntityList: success,
            todaysDate: state.todaysDate,
            toggleValue: state.toggleValue,
            selectedDate: state.selectedDate
          )..dataState = DataState.success);
        },
        onError: (error){
          emit(HomePageLoadCalenderEventsState(
            toggleValue: state.toggleValue,
            errorMessage: error.message,
            errorCode: error.errorCode
          )..dataState = DataState.error);
        }
      );

    }

    Future<void> _onHomePageChangeCalenderViewEvent(
        HomePageChangeCalenderViewEvent event,
        Emitter<HomePageState> emit
        )async{
        emit(HomePageChangeCalenderViewState(
            eventEntityList: state.eventEntityList,
        selectedDate: state.selectedDate,
        todaysDate: state.todaysDate,
        toggleValue: state.toggleValue == 'Month'? 'Week': 'Month'));
    }

    Future<void > _onHomePageDateSelectedEvent(
        HomePageDateSelectedEvent event,
        Emitter<HomePageState> emit
        )async{
        emit(
            HomePageDateSelectedState(
                selectedDate: event.dateTime,
                toggleValue: state.toggleValue,
                todaysDate: state.todaysDate,
                eventEntityList: state.eventEntityList,
            )
        );
    }
} 
