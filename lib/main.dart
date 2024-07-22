import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_healtcare/locator.dart';
import 'package:flutter_healtcare/presentation/face_filter/bloc/ar_filter_bloc.dart';
import 'package:flutter_healtcare/presentation/router/app_router.dart';
import 'package:flutter_healtcare/presentation/users/user_bloc/user_bloc.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _appRouter = locator<AppRouter>();
    return MultiBlocProvider(
      providers: [
         BlocProvider(create: (_) => locator<ARFilterBloc>()),
         BlocProvider(create: (_) => locator<UserBloc>()..add(UsersFetched()))
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
