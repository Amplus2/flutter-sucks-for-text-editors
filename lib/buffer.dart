import 'dart:io';

class Buffer {
  late String buffer;
  String? file;

  Buffer(this.buffer);

  Buffer.fromFile(this.file) {
    //TODO: async
    buffer = File(file!).readAsStringSync();
  }
}
