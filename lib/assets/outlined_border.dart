import 'package:flutter/material.dart';

class OutlineBorder extends OutlineInputBorder {
  final BorderSide side;

  const OutlineBorder({required this.side})
      : super(
          borderSide: side,
        );

  @override
  bool get isOutline => false;
}
