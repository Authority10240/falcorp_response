import 'package:falcorp_response/core/base_classes/base_page.dart';
import 'package:falcorp_response/core/date_extension.dart';
import 'package:falcorp_response/core/int_extension.dart';
import 'package:falcorp_response/features/home/presentation/widgets/event_widget.dart';
import 'package:falcorp_response/features/home/presentation/widgets/home_toggle.dart';
import 'package:falcorp_response/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/classes/multiple_marked_dates.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'bloc/home_bloc.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeBloc> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBloc().add(HomePageLoadCalenderEvent(dateTime: DateTime.now()));
  }

  List<String> views = ['Month', 'Week'];

  @override
  Widget buildView(BuildContext context) {
    return BlocConsumer<HomeBloc, HomePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  state.selectedDate != null
                      ? state.selectedDate!.toCalenderDate
                      : DateTime.now().toCalenderDate,
                  style: const TextStyle(color: Colors.blue, fontSize: 14),
                ),
                10.height,
                const Divider(
                  height: 0.3,
                ),
                10.height,
                CalendarCarousel(
                  weekFormat: state.toggleValue == 'Week',
                  height: state.toggleValue == 'Month' ? 350 : 80,
                  weekdayTextStyle: const TextStyle(color: Colors.black),
                  weekendTextStyle: const TextStyle(color: Colors.black),
                  selectedDayButtonColor: Colors.blue,
                  selectedDateTime: state.selectedDate,
                  selectedDayTextStyle: const TextStyle(color: Colors.white),
                  todayButtonColor: Colors.white,
                  todayTextStyle: const TextStyle(color: Colors.black),
                  showHeader: false,
                  onDayPressed: (dateTime, eventList) {
                    getBloc()
                        .add(HomePageDateSelectedEvent(dateTime: dateTime));
                  },
                  onCalendarChanged: (dateTime) => getBloc()
                      .add(HomePageDateSelectedEvent(dateTime: dateTime)),
                  markedDateShowIcon: true,
                  markedDateWidget: const CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                  multipleMarkedDates: MultipleMarkedDates(markedDates: [
                    MarkedDate(color: Colors.black, date: DateTime.now())
                  ]),
                ),
                10.height,
                if (state.eventEntityList != null)
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.eventEntityList!.length,
                      itemBuilder: (context, index) {
                        return EventWidget(
                            eventEntityModel: state.eventEntityList![index]);
                      }),
                SizedBox(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        FalcorpToggle(
                            values: views,
                            value: state.toggleValue!,
                            onChanged: (String value) {
                              getBloc().add(HomePageChangeCalenderViewEvent());
                            }),
                        30.width,
                        InkWell(
                          onTap: () => getBloc().add(HomePageDateSelectedEvent(
                              dateTime: DateTime.now())),
                          child: Text(
                            'Today',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        20.width
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  HomeBloc initBloc() {
    return locator<HomeBloc>();
  }

  @override
  PreferredSizeWidget? buildAppbar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        'Team Leaves',
        style: TextStyle(fontSize: 16),
      ),
      actions: [
        InkWell(
          child: Icon(
            Icons.search,
            color: Colors.blue,
          ),
        ),
        10.width,
        InkWell(
          child: Icon(
            Icons.add,
            color: Colors.blue,
          ),
        ),
        10.width,
      ],
    );
  }
}
