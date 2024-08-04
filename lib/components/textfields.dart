import 'package:flutter/material.dart';
import 'colors.dart';


Widget createTextField(
  String label,
  TextEditingController control,
  TextInputType? textInputType,
)
{
  return TextField(
    controller: control,
    keyboardType: textInputType,
    
    decoration: getInputDecoration(label),
    style: const TextStyle(
      color: AppColors.text,
      fontSize: 15.0
    ),

  );
}


InputDecoration getInputDecoration(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: AppColors.formBG,
    filled: true,
    labelStyle: const TextStyle(color: AppColors.text),
    contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.buttonBG, width: 2)
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColors.text, width: 3)
    ),
  );
}