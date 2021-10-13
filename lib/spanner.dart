import 'package:flutter/material.dart';

class RichTextMetadataSpanner {
  String? pattern;
  TextStyle? style;
  Function(String)? onTap;

  RichTextMetadataSpanner({
    this.pattern,
    this.style,
    this.onTap
  });
}