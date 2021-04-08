import 'package:flutter/material.dart';
import 'package:nordev_2021/presentation/components/new_jump_form.dart';

class NewJumpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Jump'),
      ),
      body: NewJumpForm(),
    );
  }
}
