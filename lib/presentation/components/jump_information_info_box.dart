import 'package:flutter/material.dart';
import 'package:nordev_2021/domain/entities/jump.dart';

class JumpInformationInfoBox extends StatelessWidget {
  final Jump jump;

  const JumpInformationInfoBox({
    Key key,
    @required this.jump,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [BoxShadow()],
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          this._renderInfo(
            label: 'Jump',
            value: this.jump.number.toString(),
          ),
          this._renderInfo(
            label: 'Altitude',
            value: this.jump.altitude.toString(),
          ),
          this._renderInfo(
            label: 'Free fall time (s)',
            value: this.jump.freeFallTimeSeconds.toString(),
          ),
          this._renderInfo(
            label: 'Canopy time (s)',
            value: this.jump.canopyTimeSeconds.toString(),
          ),
          this._renderInfo(
            label: 'Dropzone',
            value: this.jump.dropzone,
          ),
          this._renderInfo(
            label: 'Aircraft',
            value: this.jump.aircraft,
          ),
          this._renderInfo(
            label: 'Description',
            value: this.jump.description,
          ),
        ],
      ),
    );
  }

  Widget _renderInfo({
    @required String label,
    @required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            '$label:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(flex: 3, child: Text(value)),
      ],
    );
  }
}
