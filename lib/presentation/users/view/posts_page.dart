import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_healtcare/presentation/users/view/posts_list.dart';



@RoutePage()
class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('users list'),
      ),
      body: const PostsList(),
    );
  }
}