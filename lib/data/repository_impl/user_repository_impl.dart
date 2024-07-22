
import 'package:flutter_healtcare/core/error/exceptions.dart';
import 'package:flutter_healtcare/core/error/failure.dart';
import 'package:flutter_healtcare/core/network/network_info.dart';
import 'package:flutter_healtcare/core/utils/paginated_response.dart';
import 'package:flutter_healtcare/data/data_sources/user_remote_datasource.dart';
import 'package:flutter_healtcare/domain/entities/user_entity.dart';
import 'package:flutter_healtcare/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserRepositoryImpl extends UserRepository {
  final NetworkInfo networkInfo;
  final UserRemoteDataSource userRemoteDataSource;
  

  UserRepositoryImpl({
    required this.networkInfo,
    required this.userRemoteDataSource
  });

  @override
  Future<Either<Failure, PaginatedResponse>> getUsers({
    required int limit,
    required int page
  }) async {
   if (await networkInfo.isConnected) {
      try {
      
      final paginatedResponse = await userRemoteDataSource.getUsers(
       'application/json', limit, page
      );

        print("UserRepositoryImpl ${paginatedResponse}");

       return right(paginatedResponse);
      } on Exception catch(err) {
        print("${err}");
        return left(const ServerFailure());
      }
    } else {
      return left(const NoInternetConnectionFailure());
    }
  }
}