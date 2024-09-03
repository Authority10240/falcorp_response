


import 'package:falcorp_response/core/base_classes/base_repository.dart';
import 'package:falcorp_response/features/home/data/models/home_model/load_calender_event_model.dart';

abstract class LoadCalenderEventsRepository  extends BaseRepository<LoadCalenderEventsRepositoryParams, List<EventEntityModel>>{}

class LoadCalenderEventsRepositoryParams extends BaseRepositoryParams{}
