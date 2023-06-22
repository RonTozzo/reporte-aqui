import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NonBorderTextField extends StatelessWidget {
  final void Function(String)? onChange;
  final TextEditingController? controller;
  final TextInputFormatter? formatter;
  final TextInputType? textInputType;
  final int? maxLength;
  final String? hint;
  final List<String>? erros;

  const NonBorderTextField({
    super.key,
    this.controller,
    this.erros,
    this.hint,
    this.textInputType,
    this.onChange,
    this.formatter,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[300],
          ),
          child: TextFormField(
            controller: controller,
            onChanged: onChange,
            maxLength: maxLength,
            keyboardType: textInputType,
            inputFormatters: [if (formatter != null) formatter!],
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              hintText: hint,
              hintStyle: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ),
        if ((erros ?? []).isNotEmpty) _Errors(erros: erros!)
      ],
    );
  }
}

class _Errors extends StatelessWidget {
  final List<String> erros;
  const _Errors({required this.erros});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          erros.length,
          (index) => Text(
            erros[index],
            style: const TextStyle(color: Colors.red, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
