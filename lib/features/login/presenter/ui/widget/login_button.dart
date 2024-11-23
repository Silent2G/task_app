import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final void Function()? onPressed;
  final Widget? child;

  const LoginButton({
    required this.text,
    this.width,
    this.height,
    this.onPressed,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: text,
      enabled: onPressed != null,
      child: SizedBox(
        height: height ?? 52,
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          child: SelectionContainer.disabled(
            child: child ??
                Text(
                  text,
                  textAlign: TextAlign.center,
                ),
          ),
        ),
      ),
    );
  }
}
