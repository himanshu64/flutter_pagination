import 'package:equatable/equatable.dart';
import 'package:flutter_healtcare/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class PaginatedListParams extends Equatable {
  final int limit;
  final int offset;

  const PaginatedListParams({required this.limit, required this.offset});

  @override
  List<Object?> get props => [limit, offset];
}