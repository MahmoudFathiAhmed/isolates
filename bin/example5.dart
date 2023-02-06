import 'dart:isolate';

void main(List<String> args) async {
  final uri = Uri.parse('package:isolates/isolates.dart');
  final rp = ReceivePort();
  Isolate.spawnUri(uri, [], rp.sendPort);
  final message = await rp.first;
  print(message);
}
