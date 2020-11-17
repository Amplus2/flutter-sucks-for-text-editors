import 'package:adscriptum/buffer.dart';
import 'package:adscriptum/mode.dart';
import 'package:args/args.dart';
import 'package:flutter/material.dart';
import 'package:adscriptum/config.dart' as Config;
import 'package:flutter/rendering.dart';

void main(final List<String> argv) {
  final argParser = ArgParser()
    ..addOption('config', abbr: 'C')
    ..addOption('command', abbr: 'c');
  final args = argParser.parse(argv);
  for (final option in args.options) {
    if (option == 'config')
      Config.file = argParser.options['config'].getOrDefault('WTFHAPPENED');
    else if (option == 'command') ; //TODO: run command
  }
  runApp(MaterialApp(title: 'Adscriptum', home: ScriptPage()));
}

class ScriptPage extends StatefulWidget {
  ScriptPage({Key key}) : super(key: key);

  @override
  _ScriptPageState createState() => _ScriptPageState();
}

class _ScriptPageState extends State<ScriptPage> {
  //TODO: implement buffer switching
  int _currentBuffer = 0;
  List<Buffer> _buffers = [
    Buffer('hello\nthis\nis\na\ntest'),
  ];
  Mode _mode = Mode.normal;
  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: _buffers[_currentBuffer].buffer);
  }

  @override
  Widget build(BuildContext context) {
    //TODO: implement basic editing
    return Scaffold(
      backgroundColor: Color(Config.backgroundColor),
      body: Expanded(
        child: Column(
          children: [
            TextField(
              autofocus: true,
              maxLines: null,
              controller: _controller,
              cursorColor: Color(Config.foregroundColor),
              autocorrect: false,
              cursorWidth: _mode == Mode.insert ? 1 : Config.fontSize,
              decoration: null,
              expands: true,
              readOnly: _mode != Mode.insert,
              style: TextStyle(
                fontFamily: Config.fonts.first,
                fontFamilyFallback: Config.fonts,
                fontSize: Config.fontSize,
                color: Color(Config.foregroundColor),
                decorationColor: Color(Config.foregroundColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
