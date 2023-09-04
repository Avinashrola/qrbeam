import 'package:flutter/material.dart';

textField(
        {required String text,
        TextEditingController? controller,
        TextInputType? keyboardType,
        Widget? prefix,
        TextInputAction? textInputAction,
        int? maxLength,
        void Function(String)? onChanged,
        bool? upperCash,
        bool? enabled,
        Widget? prefixIcon,
        Widget? suffix,
        Widget? suffixIcon,
        TextStyle? style}) =>
    TextField(
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      controller: controller,
      maxLength: maxLength,
      onChanged: onChanged,
      enabled: enabled,
      style: style ?? const TextStyle(fontSize: 14),
      decoration: InputDecoration(
        prefix: prefix,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        suffix: suffix,
        isDense: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.blueGrey.withOpacity(0.3))),
        label: Text(text),
      ),
    );
