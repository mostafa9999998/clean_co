import 'package:flutter/material.dart';

Widget defaultTextField({
  // final String? Function(String?)? validator,
  TextEditingController? controller,
  required TextInputType type,
  Function(String)? onChange,
  FormFieldValidator? validate,
  String? label,
  String? hint,
  IconData? prefix,
  bool isObscure = false,
  IconData? suffix,
  Function()? pressed,
  Function()? tap,
  Function(String)? fieldSubmitted ,
  bool? enable,
  Color background = const Color(0xFF001C38) ,
  Color border = Colors.white,
  double radius = 10,
}) =>
    TextFormField(
      onTap: tap,
      onFieldSubmitted: fieldSubmitted ,
      enabled: enable,
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
        floatingLabelStyle: TextStyle(color: Color(0xFF270008)),
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[500],fontSize: 14),
        prefixIcon: prefix != null? Icon(prefix,color: Color(0xFF001E2F),) : null,
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: pressed,
          icon: Icon(
            suffix,
            color: background,
          ),
        )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: border, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
      ),
      keyboardType: type,
      onChanged: onChange,
      validator: validate,
    );