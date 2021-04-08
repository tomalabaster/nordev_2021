import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nordev_2021/domain/entities/jump.dart';
import 'package:nordev_2021/data/jumps.dart';
import 'package:nordev_2021/presentation/components/jump_information_list_item.dart';
import 'package:nordev_2021/presentation/components/new_jump_form.dart';
import 'package:nordev_2021/presentation/screens/jump_information_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Jump _selectedJump;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jump Logger'),
      ),
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: jumps.length,
              itemBuilder: (context, index) {
                final jump = jumps.reversed.toList()[index];

                return JumpInformationListItem(
                  jump: jump,
                  onTap: () {
                    if (MediaQuery.of(context).size.width < 1024) {
                      Navigator.of(context).pushNamed('/jump/${jump.number}');
                    } else {
                      setState(() {
                        this._selectedJump = jump;
                      });
                    }
                  },
                );
              },
            ),
          ),
          if (this._selectedJump != null &&
              MediaQuery.of(context).size.width >= 1024)
            Container(
              decoration: BoxDecoration(
                  border: Border(left: BorderSide(color: Colors.grey))),
              width: 350,
              child: Column(
                children: [
                  Expanded(
                      child: JumpInformationScreen(jump: this._selectedJump)),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: RaisedButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed('/jump/${this._selectedJump.number}'),
                      child: Text('View full screen'),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          var jump;

          if (MediaQuery.of(context).size.width >= 640) {
            jump = await showDialog(
              context: context,
              builder: (context) => Container(
                constraints: BoxConstraints(maxWidth: 400),
                padding: const EdgeInsets.all(80),
                child: Material(
                  child: NewJumpForm(),
                ),
              ),
            );
          } else {
            jump = await Navigator.of(context).pushNamed('/new-jump');
          }

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
