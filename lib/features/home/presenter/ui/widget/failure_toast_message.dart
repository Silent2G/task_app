import 'package:flutter/material.dart';

class FailureToastMessage extends StatelessWidget {
  const FailureToastMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Text(
        "Something went wrong ...",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
