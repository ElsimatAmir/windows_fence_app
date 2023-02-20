import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveTextInput extends StatelessWidget {
  const ReactiveTextInput({
    required this.formControlName,
    this.hint,
    this.readOnly = false,
    super.key,
    this.inputFormatters,
    this.prefix,
    this.onChanged,
    this.validationMessages,
  });
  final String formControlName;
  final String? hint;
  final bool readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefix;
  final Function(FormControl<dynamic>)? onChanged;
  final Map<String, String Function(Object)>? validationMessages;
  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      inputFormatters: inputFormatters,
      validationMessages: validationMessages,
      readOnly: readOnly,
      style: const TextStyle(fontSize: 18, color: Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(20.0),
        ),
        fillColor: const Color.fromARGB(255, 223, 223, 223),
        filled: true,
        labelText: hint,
        prefix: prefix,
      ),
      formControlName: formControlName,
      onChanged: onChanged,
    );
  }
}
