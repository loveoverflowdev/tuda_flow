import 'package:fpdart/fpdart.dart';
import 'package:tuda_flow_core_hub/tuda_flow_core_hub.dart';

abstract interface class PostRepository {
  TaskEither<PostFailure, Post> getPostById(String id);
  TaskEither<PostFailure, Iterable<Post>> getPosts();
}
