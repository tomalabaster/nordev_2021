import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:nordev_2021/domain/entities/jump.dart';

class JumpInformationListItem extends StatelessWidget {
  final Jump jump;

  const JumpInformationListItem({
    Key key,
    @required this.jump,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Jump: ${this.jump.number}'),
      subtitle: Text(
          '${this.jump.dropzone} on ${DateFormat.yMMMd().format(this.jump.dateTime)}'),
      onTap: () {
        Navigator.of(context).pushNamed('/jump/${this.jump.number}');
      },
    );
  }
}
