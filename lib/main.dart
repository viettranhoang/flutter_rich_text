import 'package:flutter/material.dart';
import 'package:flutter_rich_text/richtext.dart';
import 'package:flutter_rich_text/spanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RichTextBuilder builder = RichTextBuilder()
      ..addSpanner(RichTextMetadataSpanner(
        pattern: r"\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b", // email
        style: const TextStyle(
          color: Colors.purple,
          fontSize: 24,
        ),
        onTap: (value) {},
      ));

    GapoRichText richText = builder.build();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gapo Rich Text"),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              text: '',
              children: <InlineSpan>[...richText.inlineSpans],
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
