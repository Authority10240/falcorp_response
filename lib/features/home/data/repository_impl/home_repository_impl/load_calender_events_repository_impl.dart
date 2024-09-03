
import 'package:falcorp_response/core/base_classes/back_end_calls.dart';
import 'package:falcorp_response/core/failures/base_failure.dart';
import 'package:falcorp_response/features/home/data/models/home_model/load_calender_event_model.dart';
import 'package:falcorp_response/features/home/data/source/remote/home_service.dart';
import 'package:falcorp_response/features/home/domain/repository/home_repository/load_calender_events_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable(as: LoadCalenderEventsRepository)
class LoadCalenderEventsRepositoryImpl extends LoadCalenderEventsRepository {

  LoadCalenderEventsRepositoryImpl({required this.homeService});

  final HomeService homeService;

  @override
  Future<void> call(
      {
        Function(List<EventEntityModel>? model)? onSuccess,
        Function(BaseFailure error)? onError,
        LoadCalenderEventsRepositoryParams? params
      }) {
        return safeBackEndCalls(
        apiRequest:homeService.getEvents()  ,
        onSuccess: (model) => onSuccess!.call(model),
        onError: (error) => onError!.call(error!),
    );
  }
}
