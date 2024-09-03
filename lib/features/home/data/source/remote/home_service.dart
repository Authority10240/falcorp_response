import 'package:falcorp_response/features/home/data/models/home_model/load_calender_event_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'home_service.g.dart';


//list endpoints

class HomeEndpoints {
  static const String events = '/events';
}
@injectable
@RestApi(baseUrl: 'http://127.0.0.1:8090/api/')
abstract class HomeService {
  @factoryMethod
  factory HomeService( Dio dio) = _HomeService;

  @GET(HomeEndpoints.events)
  Future<List<EventEntityModel>> getEvents();
}

