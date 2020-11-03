import 'dart:io';

String file = '~/.adscript';
List<String> fonts = ['Ubuntu Mono', 'Monospace', 'SF Mono', 'Consolas'];
double fontSize = 20;

int backgroundColor = 0xff202020;
int foregroundColor = 0xffffffff;

load() {
  final lines = File(file).readAsLinesSync();
  for (var i = 0; i < lines.length; i++)
    lines[i] = lines[i].replaceFirst(RegExp(r'#.*$'), '').trim();
  lines.removeWhere((element) => element.isEmpty);
  print(lines);
  //TODO: parse remaining lines
}
