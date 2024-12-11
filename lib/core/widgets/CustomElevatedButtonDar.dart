import 'package:flutter/material.dart';

class CustomElevatedButtomDark extends StatelessWidget {
  
  final void Function()? onpressed;
  final String text;
  const CustomElevatedButtomDark(
      {super.key, this.onpressed,required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ButtonStyle(
        side: const WidgetStatePropertyAll(
          BorderSide(color: Colors.black),
        ),
        backgroundColor: const WidgetStatePropertyAll(Colors.black),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        fixedSize: const WidgetStatePropertyAll(
          Size.fromWidth(370),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Urbanist-SemiBold",
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
