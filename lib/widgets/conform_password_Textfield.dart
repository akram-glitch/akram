import 'package:flutter/material.dart';
import 'package:paramacy_project/widgets/password_textField.dart';

class ConformPasswordTextfield extends StatefulWidget {
  const ConformPasswordTextfield({super.key});

  @override
  State<ConformPasswordTextfield> createState() => _ConformPasswordTextfieldState();
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

class _ConformPasswordTextfieldState extends State<ConformPasswordTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: _obscured,
        focusNode: textFieldFocusNode,
        decoration: InputDecoration(
          labelText: 'Conform Password',
          contentPadding:
          const EdgeInsets.symmetric(vertical: 10),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          hintText: 'Conform Password',
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
              color: Color(0xff4F46A3),
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
