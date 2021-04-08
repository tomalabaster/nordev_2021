import 'package:nordev_2021/domain/entities/friends_jump.dart';
import 'package:nordev_2021/domain/entities/jump.dart';

final _jump = Jump(
  number: 1,
  dateTime: DateTime.now().toUtc(),
  altitude: 13000,
  freeFallTimeSeconds: 50,
  canopyTimeSeconds: 210,
  dropzone: 'Beccles',
  aircraft: 'Caravan 208B',
  description: '2-way FS with Sam Doe, completed 8 points, deployed at 4000',
);

final jumps = [
  _jump,
  _jump.copyWith(number: 2),
  _jump.copyWith(number: 3),
  _jump.copyWith(number: 4),
  _jump.copyWith(number: 5),
  _jump.copyWith(number: 6),
  _jump.copyWith(number: 7),
];

final friendsJump = FriendsJump(
  name: 'Sam Doe',
  number: 1,
  dateTime: DateTime.now().toUtc(),
  altitude: 13000,
  freeFallTimeSeconds: 50,
  canopyTimeSeconds: 210,
  dropzone: 'Beccles',
  aircraft: 'Caravan 208B',
  description: '2-way FS with Tom, completed 8 points, deployed at 4000',
);
