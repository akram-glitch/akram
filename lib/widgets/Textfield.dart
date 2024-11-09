import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
   CustomTextfield({super.key,required this.hintText,required this.labelText,required this.icons});
  String hintText;
   String labelText;
   var icons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10),
          fillColor:const Color(0xff4F46A3),
          prefixIcon: icons,
          suffixIcon: const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 4, 0),
          ),
          labelText: labelText,
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                width: 2,
                color: Color(0xff4F46A3)
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(),
          ),
        ),
      ),
    );
  }
}
