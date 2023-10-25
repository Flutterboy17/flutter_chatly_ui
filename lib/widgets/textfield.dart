import 'package:chat_app_complete_ui/constants/colors_page.dart';
import 'package:flutter/material.dart';

class UniversalTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final IconData prefixIcon;

  UniversalTextField({
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    required this.prefixIcon,
  });

  @override
  _UniversalTextFieldState createState() => _UniversalTextFieldState();
}

class _UniversalTextFieldState extends State<UniversalTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText && _obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(color: AppColors.dimColor)),
        prefixIcon: Icon(widget.prefixIcon),
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: widget.obscureText
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
              )
            : null,
      ),
    );
  }
}
