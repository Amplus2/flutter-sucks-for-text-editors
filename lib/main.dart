import 'package:adscriptum/buffer.dart';
import 'package:flutter/material.dart';
import 'package:adscriptum/config.dart' as Config;

void main() {
  runApp(MaterialApp(title: 'Adscriptum', home: ScriptPage()));
}

class ScriptPage extends StatefulWidget {
  ScriptPage({Key key}) : super(key: key);

  @override
  _ScriptPageState createState() => _ScriptPageState();
}

class _ScriptPageState extends State<ScriptPage> {
  //currently this is just a single-buffer editor
  //TODO: change that
  Buffer _buffer = Buffer(['hello', 'this', 'is', 'a', 'test']);

  @override
  Widget build(BuildContext context) {
    final buffer = <Widget>[];
    for (final line in _buffer.buffer)
      buffer.add(Text(
        line,
        style: TextStyle(
          fontFamily: Config.fonts.first,
          fontFamilyFallback: Config.fonts,
          fontSize: Config.fontSize,
          color: Color(Config.foregroundColor),
        ),
      ));
    return Scaffold(
      backgroundColor: Color(Config.backgroundColor),
      body: Column(
        children: buffer,
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
