import 'package:flutter/widgets.dart';
import 'package:nordev_2021/jumps.dart';
import 'package:nordev_2021/presentation/components/jump_information_friends_jump_list_item.dart';

class JumpInformationFriendsJumpsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return JumpInformationFriendsJumpListItem(jump: friendsJump);
        },
      ),
    );
  }
}
