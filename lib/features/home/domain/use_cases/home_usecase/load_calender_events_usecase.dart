

import 'package:falcorp_response/core/base_classes/base_usecase.dart';
import 'package:falcorp_response/core/failures/base_failure.dart';
import 'package:falcorp_response/features/home/data/models/home_model/load_calender_event_model.dart';
import 'package:falcorp_response/features/home/domain/repository/home_repository/load_calender_events_repository.dart';
import 'package:injectable/injectable.dart';


@Injectable()
class LoadCalenderEventsUseCase extends BaseUseCase<LoadCalenderEventsUseCaseParams, List<EventEntityModel>>{

  final LoadCalenderEventsRepository loadCalenderEventsRepository;

  LoadCalenderEventsUseCase({required this.loadCalenderEventsRepository});

  @override
  Future<void> call({Function(List<EventEntityModel> model)? onSuccess, Function(BaseFailure error)? onError, LoadCalenderEventsUseCaseParams? params}) async {
    await loadCalenderEventsRepository.call(
      onSuccess: (model)=> onSuccess?.call(model!),
      onError: (error)=> onError?.call(error!),
    );
  }


}

class LoadCalenderEventsUseCaseParams extends BaseUseCaseParams{
  final DateTime dateTime;

  LoadCalenderEventsUseCaseParams({required this.dateTime});
}
