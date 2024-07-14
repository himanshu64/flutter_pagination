import 'package:dio/dio.dart';
import 'package:flutter_healtcare/core/network/network_client.dart';
import 'package:flutter_healtcare/core/shared/contants.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

setupServiceLocator() async {
  serviceLocator.registerFactory<Constant>(() => Constant());
  serviceLocator.registerFactory<Dio>(
    () => NetworkClient(Dio(), constant: serviceLocator()).dio,
  );


}