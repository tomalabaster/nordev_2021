import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:nordev_2021/domain/entities/friends_jump.dart';

class JumpInformationFriendsJumpListItem extends StatelessWidget {
  final FriendsJump jump;

  const JumpInformationFriendsJumpListItem({
    Key key,
    @required this.jump,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${this.jump.name}\'s jump'),
      subtitle: Text(
          '${this.jump.dropzone} on ${DateFormat.yMMMd().format(this.jump.dateTime)}'),
    );
  }
}
