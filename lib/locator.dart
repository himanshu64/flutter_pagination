import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_healtcare/core/network/network_info.dart';
import 'package:flutter_healtcare/data/data_sources/user_remote_datasource.dart';
import 'package:flutter_healtcare/data/repository_impl/user_repository_impl.dart';
import 'package:flutter_healtcare/domain/repository/user_repository.dart';
import 'package:flutter_healtcare/domain/usecases/get_user_usecase.dart';
import 'package:flutter_healtcare/presentation/face_filter/bloc/ar_filter_bloc.dart';
import 'package:flutter_healtcare/presentation/router/app_router.dart';
import 'package:flutter_healtcare/presentation/users/user_bloc/user_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  //dio instance
  locator.registerSingleton(Dio());

  locator.registerLazySingleton<AppRouter>(() => AppRouter());

  //blocs
  locator.registerFactory(() => UserBloc(getUsersUseCase: locator()));

  locator.registerSingleton<ARFilterBloc>(ARFilterBloc());

  // Data Source
  locator.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSource(locator()),
  );

  //repository
  locator.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
      networkInfo: locator(), userRemoteDataSource: locator()));

  //useCases
  locator
      .registerLazySingleton(() => GetUsersUseCase(userRepository: locator()));

  //network connection
  locator.registerLazySingleton(() => Connectivity());
  locator.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectivity: locator()));
}
