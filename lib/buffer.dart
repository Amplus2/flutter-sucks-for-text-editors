import 'dart:io';

class Buffer {
  List<String> buffer;
  String file;

  Buffer(this.buffer);

  Buffer.fromFile(this.file) {
    //TODO: async
    buffer = File(file).readAsLinesSync();
  }
}
