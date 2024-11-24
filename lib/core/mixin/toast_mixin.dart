import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

mixin ToastMixin {
  void showToast({
    required BuildContext context,
    required Widget body,
  }) {
    FToast fToast = FToast();
    fToast.init(context);

    fToast.showToast(
      child: body,
      gravity: ToastGravity.BOTTOM,
      toastDuration: const Duration(seconds: 3),
    );
  }
}
