import 'package:flutter/material.dart';

import '../../../utils/shared_widget/defaultTextField.dart';

class NewPasswordField extends StatefulWidget {
  bool isObscure;
  String label;
  var controller;
  var validate;
  var onpressed;
  NewPasswordField({required this.label,required this.validate,required this.controller,required this.isObscure,required this.onpressed});

  @override
  State<NewPasswordField> createState() => _NewPasswordFieldState();
}

class _NewPasswordFieldState extends State<NewPasswordField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: defaultTextField(
            controller: widget.controller,
            type: TextInputType.text,
            isObscure: widget.isObscure,
            pressed: widget.onpressed,
            suffix: widget.isObscure?Icons.visibility_off:Icons.visibility,
            label: widget.label,
            validate: widget.validate
        ),
      ),
    );
  }
}