import 'package:flutter/material.dart';
import 'package:adscriptum/config.dart' as Config;

void main() {
  runApp(MaterialApp(home: ScriptPage()));
}

class ScriptPage extends StatefulWidget {
  ScriptPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ScriptPageState createState() => _ScriptPageState();
}

class _ScriptPageState extends State<ScriptPage> {
  //currently this is just a single-buffer editor
  //TODO: change that
  List<String> _buffer = ['hello', 'this', 'is', 'a', 'test'];

  @override
  Widget build(BuildContext context) {
    final buffer = <Widget>[];
    for (final line in _buffer)
      buffer.add(Text(
        line,
        style: TextStyle(
          fontFamily: Config.fonts.first,
          fontFamilyFallback: Config.fonts,
          fontSize: Config.fontSize,
        ),
      ));
    return Scaffold(body: Column(children: buffer));
  }
}
