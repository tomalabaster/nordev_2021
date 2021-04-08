import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Not found'),
      ),
      body: Center(
        child:
            Text('Unfortunately the jump you\'re looking for can\'t be found.'),
      ),
    );
  }
}
