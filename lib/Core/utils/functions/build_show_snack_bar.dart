import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> buildShowSnackBar(BuildContext context, String errMessage) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(errMessage)),
  );
}