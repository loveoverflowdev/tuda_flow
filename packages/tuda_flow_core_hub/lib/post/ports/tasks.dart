import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart';

ReaderTaskEither<PostRepository, PostFailure, Iterable<Post>> getPostsTask() {
  return ReaderTaskEither(
    (repo) => repo.getPosts().run(),
  );
}

ReaderTaskEither<PostRepository, PostFailure, Post> getPostByIdTask(String id) {
  return ReaderTaskEither(
    (repo) => repo.getPostById(id).run(),
  );
}
