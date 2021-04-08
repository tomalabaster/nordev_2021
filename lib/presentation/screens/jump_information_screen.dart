import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nordev_2021/domain/entities/jump.dart';
import 'package:nordev_2021/presentation/components/jump_information_friends_jumps_header.dart';
import 'package:nordev_2021/presentation/components/jump_information_graph.dart';
import 'package:nordev_2021/presentation/components/jump_information_info_box.dart';
import 'package:nordev_2021/presentation/components/jump_information_friends_jumps_list.dart';

class JumpInformationScreen extends StatelessWidget {
  final Jump jump;

  const JumpInformationScreen({
    Key key,
    @required this.jump,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jump: ${this.jump.number}'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: JumpInformationInfoBox(jump: this.jump)),
          SliverToBoxAdapter(child: JumpInformationGraph(jump: this.jump)),
          JumpInformationFriendsJumpsHeader(),
          JumpInformationFriendsJumpsList(),
        ],
      ),
    );
  }
}
