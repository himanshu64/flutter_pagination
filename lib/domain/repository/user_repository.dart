
import 'package:flutter_healtcare/core/error/failure.dart';
import 'package:flutter_healtcare/core/utils/paginated_response.dart';
import 'package:fpdart/fpdart.dart';

abstract class UserRepository {
  Future<Either<Failure, PaginatedResponse>> getUsers({
      required int limit,
    required int page
  });
}