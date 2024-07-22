
import 'package:flutter_healtcare/core/error/failure.dart';
import 'package:flutter_healtcare/core/usecase/usecase.dart';
import 'package:flutter_healtcare/core/utils/paginated_response.dart';
import 'package:flutter_healtcare/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetUsersUseCase extends UseCase<PaginatedResponse, PaginatedListParams> {
  final UserRepository userRepository;

  GetUsersUseCase({required this.userRepository});

  @override
  Future<Either<Failure, PaginatedResponse>> call(PaginatedListParams params) async {

    return await userRepository.getUsers(limit: params.limit, page: params.offset);
  }

}