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
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Jump: ${this.jump.number}'),
          ),
          body: CustomScrollView(
            slivers: this._renderChildren(
              sideBySideGraphAndInfo: constraints.maxWidth >= 1024,
            ),
          ),
        );
      },
    );
  }

  List<Widget> _renderChildren({
    bool sideBySideGraphAndInfo = false,
  }) {
    final children = <Widget>[];

    if (sideBySideGraphAndInfo) {
      children.add(
        SliverToBoxAdapter(
          child: IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: JumpInformationGraph(jump: this.jump),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(child: JumpInformationInfoBox(jump: this.jump)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      children.add(
          SliverToBoxAdapter(child: JumpInformationInfoBox(jump: this.jump)));
      children.add(
          SliverToBoxAdapter(child: JumpInformationGraph(jump: this.jump)));
    }

    children.add(JumpInformationFriendsJumpsHeader());
    children.add(JumpInformationFriendsJumpsList());

    return children;
  }
}
