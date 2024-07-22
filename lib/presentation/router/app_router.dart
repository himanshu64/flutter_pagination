

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_healtcare/presentation/drags/view/drag_view.dart';
import 'package:flutter_healtcare/presentation/face_filter/view/face_filter_view.dart';
import 'package:flutter_healtcare/presentation/home/home_view.dart';
import 'package:flutter_healtcare/presentation/users/view/posts_page.dart';
part 'app_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  
  final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, 
    path: '/',
    initial: true,
    children: [
       AutoRoute(page: DragRoute.page, path: 'drag-drop',),
        AutoRoute(page: FilterRoute.page, path: 'face-filter'),
        AutoRoute(page: PostsRoute.page, path: 'post-page')
    ]),
  ];
}