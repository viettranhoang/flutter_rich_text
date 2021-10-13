import 'package:flutter/widgets.dart';
import 'package:flutter_rich_text/spanner.dart';

class GapoRichText {
  final List<InlineSpan> inlineSpans;

  GapoRichText(this.inlineSpans);

}

class RichTextBuilder {
  late List<InlineSpan> _inlineSpans;
  List<RichTextMetadataSpanner>? spanners;

  void addSpanner(RichTextMetadataSpanner spanner) {
    spanners?.add(spanner);
  }

  GapoRichText build() {

    return GapoRichText(_inlineSpans);
  }
}

