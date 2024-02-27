import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/obsidian.dart';
import 'package:highlight/languages/dart.dart';

import './snippet.dart';

void main() {
  runApp(const CodeEditor());
}

final controller = CodeController(
  text: javaFactorialSnippet,
  language: dart,
);

class CodeEditor extends StatelessWidget {
  const CodeEditor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: MediaQuery.sizeOf(context).height * 0.4,
          width: MediaQuery.sizeOf(context).width * 0.8,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.center,
          margin: const EdgeInsets.all(40),
          padding: const EdgeInsets.all(10),
          child: CodeTheme(
            data: CodeThemeData(styles: obsidianTheme),
            child: SingleChildScrollView(
              child: TextField(
                controller: controller,
                maxLines: null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
