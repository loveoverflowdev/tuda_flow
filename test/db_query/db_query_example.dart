import 'package:tuda_flow/tuda_flow.dart';

void main() async {
  // final results = await DyResourceDbQuery.createResource(
  //   conn,
  //   creatorId: null,
  //   fields: {
  //     'content': 'Hello World',
  //   },
  //   structureCode: 'post',
  // );
  final client = PostgresClient();
  final results = await DyResourceDbQuery.selectResources(
    client,
  );

  results.forEach(
    (element) => print(
      element.toEntity(),
    ),
  );
}
