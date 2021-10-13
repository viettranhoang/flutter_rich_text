import 'package:flutter/widgets.dart';
import 'package:flutter_rich_text/spanner/rich_text_metadata_spanner.dart';

class GapoRichText {
  final List<InlineSpan>? spans;
  final List<InlineSpan>? seeMoreSpans;

  GapoRichText(this.spans, this.seeMoreSpans);
}

class RichTextBuilder {
  List<InlineSpan>? _seeMoreSpans;
  String? _text;
  List<RichTextMetadataSpanner>? spanners;

  void addSpanner(RichTextMetadataSpanner spanner) {
    spanners?.add(spanner);
  }

  void setText(String text) {
    _text = text;
  }

  GapoRichText build() {
    if (_text == null || spanners == null) return GapoRichText(null, null);
    List<InlineSpan> spans = parseListTextSpan(_text!, spanners!);
    return GapoRichText(spans, _seeMoreSpans);
  }
}

List<InlineSpan> parseListTextSpan(
    String text, List<RichTextMetadataSpanner> spanners) {
  List<InlineSpan> widgets = [];

  return widgets;
}
