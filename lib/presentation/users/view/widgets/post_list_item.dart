import 'package:flutter/material.dart';
import 'package:flutter_healtcare/domain/entities/user_entity.dart';


class PostListItem extends StatelessWidget {
  const PostListItem({required this.user,required this.index, super.key});

  final User user;
  final int index;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        key: UniqueKey(),
        trailing: Text(user.id),
        leading: Text('$index', style: textTheme.bodySmall),
        title: Text('${user.name} ${user.avatar}'),
        isThreeLine: true,
        subtitle: Text(user.email),
        dense: true,
      ),
    );
  }
}