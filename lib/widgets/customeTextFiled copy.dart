import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeTextField2 extends StatelessWidget {
  const CustomeTextField2({
    super.key,
    required TextEditingController controller,
    required String? errorText,
    required TextInputType textInputType,
    required bool obscureText,
    required bool expands,
    required String lable,
    required void Function() suffixIcononPressed,
    required IconData suffixIconData,
  })  : _controller = controller,
        _errorText = errorText,
        _textInputType = textInputType,
        _obscureText = obscureText,
        _expands = expands,
        _lable = lable,
        _suffixIcononPressed = suffixIcononPressed,
        _suffixIconData = suffixIconData;

  final TextEditingController _controller;
  final String? _errorText;
  final TextInputType _textInputType;
  final bool _obscureText;
  final bool _expands;
  final String _lable;
  final void Function() _suffixIcononPressed;
  final IconData _suffixIconData;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      obscureText: _obscureText,
      controller: _controller,
      onTap: () {},
      textInputAction: TextInputAction.done,
      cursorColor: Colors.grey,
      cursorRadius: const Radius.circular(10),
      keyboardType: _textInputType,
      maxLength: 30,
      enabled: true,
      minLines: _obscureText ? 1 : null,
      maxLines: _obscureText ? 1 : null,
      expands: _expands,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(64, 238, 238, 238),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        constraints: BoxConstraints(
          maxHeight: _errorText == null ? 60 : 75,
        ),
        counterText: '',
        hintText: _lable,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
        hintMaxLines: 1,
        suffixIcon: IconButton(
          onPressed: _suffixIcononPressed,
          icon: Icon(
            _suffixIconData,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        errorText: _errorText,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
            )),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
