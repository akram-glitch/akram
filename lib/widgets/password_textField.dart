import 'package:flutter/material.dart';

class CustomPasswordTextfield extends StatefulWidget {
  const CustomPasswordTextfield({super.key});

  @override
  State<CustomPasswordTextfield> createState() => _CustomPasswordTextfieldState();
}

final textFieldFocusNode = FocusNode();
bool _obscured = true;
void _toggleObscured() {
  setState(() {
    _obscured = !_obscured;
    if (textFieldFocusNode.hasPrimaryFocus) {
      return;
    }
    textFieldFocusNode.canRequestFocus =
    false;
  });
}

void setState(Null Function() param0) {
}
class _CustomPasswordTextfieldState extends State<CustomPasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: _obscured,
              focusNode: textFieldFocusNode,
              decoration: InputDecoration(
                labelText: 'Password',
                contentPadding:
                const EdgeInsets.symmetric(vertical: 10),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: 'Password',
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
                  borderSide: const BorderSide(
                    color: Color(0xff4F46A3)
                  ),
                ),
                prefixIcon: const Icon(Icons.lock_rounded, size: 24),
                suffixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                  child: GestureDetector(
                    onTap: _toggleObscured,
                    child: Icon(
                      _obscured
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}















  //
  // @override
  // Widget build(BuildContext context) {
  //   return

  
