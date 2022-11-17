import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.onChange, Key? key}) : super(key: key);
  final Function(String value) onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
        contentPadding: EdgeInsets.zero,
        hintText: 'Поиск',
        prefixIcon: const Icon(Icons.search),
      ),
      onChanged: onChange,
    );
  }
}
