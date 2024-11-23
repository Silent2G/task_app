import 'package:flutter/material.dart';

class RememberCheckBox extends StatelessWidget {
  const RememberCheckBox({
    required this.isChecked,
    required this.onChanged,
    super.key,
  });

  final bool isChecked;
  final Function(bool? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
