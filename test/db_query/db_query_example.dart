import 'package:tuda_flow/tuda_flow.dart';

void main() {
  final client = PostgresClient.shared;
  // final results = DyResourceDbQuery.createResource(
  //   client,
  //   creatorId: null,
  //   dyFields: {
  //     'content': 'Hello World 2',
  //   },
  //   structureCode: 'post',
  // );

  // final results = DyResourceDbQuery.updateResourceById(
  //   client,
  //   "2f7a52d0-0a17-4595-96c2-da51defeaad2",
  //   dyFields: {
  //     'contet': 'Hello World 5555555',
  //   },
  //   structureCode: 'post',
  // );

  // final results = DyResourceStructureDbQuery.createStructure(
  //   client,
  //   DyResourceStructure(
  //     code: 'dummy_post_4',
  //     dyFields: [
  //       DyResourceField(
  //         code: 'title',
  //         type: DyResourceFieldDataType.shortText,
  //       ),
  //       DyResourceField(
  //         code: 'content',
  //         type: DyResourceFieldDataType.markdown,
  //       ),
  //     ],
  //   ),
  // );

  // final results =
  //     DyResourceStructureDbQuery.selectStructureByCode(client, 'dummy_cont_1');

  // results.match(
  //   (failure) {
  //     print(failure);
  //   },
  //   (r) {
  //     print(r.runtimeType);
  //     print(r);
  //   },
  // ).run();

  final createResult = DyResourceStructureDbQuery.createStructure(
    client,
    DyResourceStructure(
      code: 'dummy_cont_2',
      dyFields: [
        DyResourceField(
          code: 'code',
          type: DyResourceFieldDataType.shortText,
        )
      ],
    ),
  );

  createResult.match(
    (failure) {
      print(failure);
    },
    (r) {
      print(r.runtimeType);
      print(r);
    },
  ).run();
}
