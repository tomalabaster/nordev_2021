import 'package:flutter/foundation.dart';
import 'package:nordev_2021/domain/entities/jump.dart';

class FriendsJump extends Jump {
  final String name;

  FriendsJump({
    @required this.name,
    @required int number,
    @required DateTime dateTime,
    @required int altitude,
    @required int freeFallTimeSeconds,
    @required int canopyTimeSeconds,
    @required String dropzone,
    @required String aircraft,
    @required String description,
  }) : super(
          number: number,
          dateTime: dateTime,
          altitude: altitude,
          freeFallTimeSeconds: freeFallTimeSeconds,
          canopyTimeSeconds: canopyTimeSeconds,
          dropzone: dropzone,
          aircraft: aircraft,
          description: description,
        );

  FriendsJump copyWith({
    String name,
    int number,
    DateTime dateTime,
    int altitude,
    int freeFallTimeSeconds,
    int canopyTimeSeconds,
    String dropzone,
    String aircraft,
    String description,
  }) {
    return FriendsJump(
      name: name ?? this.name,
      number: number ?? this.number,
      dateTime: dateTime ?? this.dateTime,
      altitude: altitude ?? this.altitude,
      freeFallTimeSeconds: freeFallTimeSeconds ?? this.freeFallTimeSeconds,
      canopyTimeSeconds: canopyTimeSeconds ?? this.canopyTimeSeconds,
      dropzone: dropzone ?? this.dropzone,
      aircraft: aircraft ?? this.aircraft,
      description: description ?? this.description,
    );
  }
}
