import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingComponent extends StatelessWidget {
  const LoadingComponent({
    this.size = 52,
    this.color,
    super.key,
  });

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: size,
        child: CupertinoActivityIndicator(
          animating: true,
          color: color ?? Colors.blue,
        ),
      );
}
