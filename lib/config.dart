import 'dart:io';

String file = '~/.adscript';
List<String> fonts = ['Ubuntu Mono', 'Monospace', 'SF Mono', 'Consolas'];
double fontSize = 20;

int backgroundColor = 0xff202020;
int foregroundColor = 0xffffffff;

load() {
  final lines = File(file)
      .readAsLinesSync()
      .map((e) => e.replaceFirst(RegExp(r'#.*$'), '').trim())
      .where((e) => e.isNotEmpty);
  print(lines);
  //TODO: parse remaining lines
}
