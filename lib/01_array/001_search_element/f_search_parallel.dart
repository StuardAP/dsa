import 'dart:isolate';

void _searchIsolate(Map<String, dynamic> params) {
  final list = params['list'] as List<int>;
  final target = params['target'] as int;
  final sendPort = params['sendPort'] as SendPort;

  final index = list.indexWhere((element) => element == target);
  Isolate.exit(sendPort, index);
}

Future<int?> searchParallel(List<int> list, int target) async {
  final receivePort = ReceivePort();

  await Isolate.spawn(_searchIsolate,
      {'list': list, 'target': target, 'sendPort': receivePort.sendPort});

  return await receivePort.first;
}


void main() {
  final largeList = List.generate(1000000, (index) => index);
  final target = 450821;
  final result = searchParallel(largeList, target);
  print(result.toString());
}
