import 'package:falcorp_response/core/date_extension.dart';
import 'package:falcorp_response/features/home/data/models/home_model/load_calender_event_model.dart';
import 'package:flutter/material.dart';

class EventWidget extends StatelessWidget {
   EventWidget({this.onMoreClicked,required this.eventEntityModel,super.key});
  final Function({String emloyeeid})? onMoreClicked;
  final EventEntityModel eventEntityModel;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 24,
          color: Colors.grey,
          child:Text(eventEntityModel.dateTime!.toEventDate)
          ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(eventEntityModel.employeeId!),
             InkWell(
               onTap: ()=> onMoreClicked,
              child: const Icon(Icons.more_horiz),
            ),
            Container(
              height: 24,
              color: Colors.grey,
              child:Text(eventEntityModel.leaveReason!)
              ,),
          ],
        )
      ],
    );
  }
}
