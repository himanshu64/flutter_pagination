import 'package:dio/dio.dart';
import 'package:flutter_healtcare/core/utils/paginated_response.dart';
import 'package:flutter_healtcare/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'user_remote_datasource.g.dart';

@RestApi(baseUrl: 'https://node-mongo-pagination.onrender.com/api/v1')
abstract class UserRemoteDataSource {

  factory UserRemoteDataSource(Dio dio, {String baseUrl}) = _UserRemoteDataSource;
  @GET('/users/getUsers?limit={limit}&page={page}')
  Future<PaginatedResponse> getUsers(
    @Header('Content-Type') String? optionalHeader,
    @Path('limit') int limit, @Path('page') int page
  );
}


