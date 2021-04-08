import 'package:flutter/material.dart';
import 'package:nordev_2021/jumps.dart';
import 'package:nordev_2021/presentation/screens/home_screen.dart';
import 'package:nordev_2021/presentation/screens/jump_information_screen.dart';
import 'package:nordev_2021/presentation/screens/new_jump_screen.dart';
import 'package:nordev_2021/presentation/screens/not_found_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jump Logger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/new-jump': (context) => NewJumpScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name.startsWith('/jump/')) {
          final jumpNumber = int.tryParse(settings.name.split('/jump/')[1]);

          if (jumpNumber != null) {
            final jump = jumps.firstWhere(
              (jump) => jump.number == jumpNumber,
              orElse: () => null,
            );

            if (jump != null) {
              return MaterialPageRoute(
                builder: (context) => JumpInformationScreen(jump: jump),
              );
            }
          }
        }

        return MaterialPageRoute(builder: (context) => NotFoundScreen());
      },
    );
  }
}
