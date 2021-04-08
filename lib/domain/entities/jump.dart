import 'package:flutter/foundation.dart';

class Jump {
  final int number;
  final DateTime dateTime;
  final int altitude;
  final int freeFallTimeSeconds;
  final int canopyTimeSeconds;
  final String dropzone;
  final String aircraft;
  final String description;

  Jump({
    @required this.number,
    @required this.dateTime,
    @required this.altitude,
    @required this.freeFallTimeSeconds,
    @required this.canopyTimeSeconds,
    @required this.dropzone,
    @required this.aircraft,
    @required this.description,
  });

  factory Jump.empty() {
    return Jump(
      number: 0,
      dateTime: DateTime.now(),
      altitude: 0,
      freeFallTimeSeconds: 0,
      canopyTimeSeconds: 210,
      dropzone: '',
      aircraft: '',
      description: '',
    );
  }

  Jump copyWith({
    int number,
    DateTime dateTime,
    int altitude,
    int freeFallTimeSeconds,
    int canopyTimeSeconds,
    String dropzone,
    String aircraft,
    String description,
  }) {
    return Jump(
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
