import 'dart:io';

List<String> fonts = ['Ubuntu Mono', 'Monospace', 'SF Mono', 'Consolas'];
double fontSize = 20;

int backgroundColor = 0xff202020;
int foregroundColor = 0xffffffff;

load([String path = '~/.adscript']) {
  final lines = File(path).readAsLinesSync();
  //TODO: parse
}
