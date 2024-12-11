import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final bool obsecureText;
  final String? hintText;
  final TextStyle? hintTextStyle ;
  final Widget? sufixIcon;
  const CustomTextfield({super.key, this.controller, required this.obsecureText,required this.hintText,required this.hintTextStyle,this.sufixIcon});

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obsecureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(18),
        suffixIcon: widget.sufixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(12)
        ),hintText: widget.hintText,
        hintStyle: widget.hintTextStyle,
         
      ),
    );
  }
}