import 'package:flutter/material.dart';

class JumpInformationFriendsJumpsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'Jumps from your friends',
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.start,
      ),
      backgroundColor: Colors.grey.shade50,
      snap: true,
      floating: true,
      pinned: true,
      automaticallyImplyLeading: false,
      centerTitle: false,
      elevation: 0,
    );
  }
}
