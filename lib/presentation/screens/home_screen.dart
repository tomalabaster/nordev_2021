import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nordev_2021/data/jumps.dart';
import 'package:nordev_2021/presentation/components/jump_information_list_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jump Logger'),
      ),
      body: ListView.builder(
        itemCount: jumps.length,
        itemBuilder: (context, index) {
          return JumpInformationListItem(
            jump: jumps.reversed.toList()[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final jump = await Navigator.of(context).pushNamed('/new-jump');

          if (jump != null) {
            setState(() {
              jumps.add(jump);
            });
          }
        },
      ),
    );
  }
}
