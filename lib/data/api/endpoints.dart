import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'endpoints.g.dart';

@RestApi()
abstract class Endpoints {
  factory Endpoints(Dio dio, {String baseUrl}) = _Endpoints;

  @GET("/timezone")
  Future<List<String>> getAllTimezones();

  @GET("/timezone/{area}")
  Future<List<String>> getTimezones({
    @Path("area") required String area,
  });

  @GET("/timezone/{area}/{location}")
  Future<dynamic> getSingleTimezone({
    @Path("area") required String area,
    @Path("location") required String location,
  });

  @GET("/timezone/id")
  Future<dynamic> getUserTimezone();
}
