import 'package:tuda_flow/tuda_flow.dart';

void main() {
  final client = PostgresClient();
  // final results = DyResourceDbQuery.createResource(
  //   client,
  //   creatorId: null,
  //   fields: {
  //     'content': 'Hello World 2',
  //   },
  //   structureCode: 'post',
  // );

  final results = DyResourceDbQuery.updateResourceById(
    client,
    "2f7a52d0-0a17-4595-96c2-da51defeaad2",
    fields: {
      'contet': 'Hello World 5555555',
    },
    structureCode: 'post',
  );

  results.match(
    (failure) {
      print(failure);
    },
    (r) {
      print(r.toEntity());
    },
  ).run();
}
