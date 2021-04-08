import 'package:flutter/material.dart';
import 'package:nordev_2021/domain/entities/jump.dart';

class NewJumpForm extends StatefulWidget {
  @override
  _NewJumpFormState createState() => _NewJumpFormState();
}

class _NewJumpFormState extends State<NewJumpForm> {
  GlobalKey<FormState> _formKey;
  Jump _jump;

  @override
  void initState() {
    super.initState();

    this._formKey = GlobalKey();
    this._jump = Jump.empty();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: this._formKey,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          this._renderNumberFormField(),
          this._renderAltitudeFormField(),
          this._renderFreeFallFormField(),
          this._renderCanopyTimeSecondsFormField(),
          this._renderDropzoneFormField(),
          this._renderAircraftFormField(),
          this._renderDescriptionFormField(),
        ],
      ),
    );
  }

  Widget _renderNumberFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Jump number',
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        final number = int.tryParse(value);

        if (number != null) {
          this._jump = this._jump.copyWith(number: number);
        }
      },
      validator: this._numberValidator,
    );
  }

  Widget _renderAltitudeFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Altitude',
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        final altitude = int.tryParse(value);

        if (altitude != null) {
          this._jump = this._jump.copyWith(altitude: altitude);
        }
      },
      validator: this._numberValidator,
    );
  }

  Widget _renderFreeFallFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Free fall time',
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        final freeFallTimeSeconds = int.tryParse(value);

        if (freeFallTimeSeconds != null) {
          this._jump =
              this._jump.copyWith(freeFallTimeSeconds: freeFallTimeSeconds);
        }
      },
      validator: this._numberValidator,
    );
  }

  Widget _renderCanopyTimeSecondsFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Canopy time',
      ),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        final canopyTimeSeconds = int.tryParse(value);

        if (canopyTimeSeconds != null) {
          this._jump =
              this._jump.copyWith(canopyTimeSeconds: canopyTimeSeconds);
        }
      },
      validator: this._numberValidator,
    );
  }

  Widget _renderDropzoneFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Dropzone',
      ),
      onChanged: (value) {
        this._jump = this._jump.copyWith(dropzone: value);
      },
    );
  }

  Widget _renderAircraftFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Aircraft',
      ),
      onChanged: (value) {
        this._jump = this._jump.copyWith(aircraft: value);
      },
    );
  }

  Widget _renderDescriptionFormField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Description',
      ),
      onChanged: (value) {
        this._jump = this._jump.copyWith(description: value);
      },
      onFieldSubmitted: (value) {
        if (this._formKey.currentState.validate()) {
          Navigator.of(context).pop(this._jump);
        }
      },
    );
  }

  String _numberValidator(String value) {
    if (int.tryParse(value) == null) {
      return 'Must be a number';
    }

    return null;
  }
}
