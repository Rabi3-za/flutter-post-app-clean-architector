import 'package:clean_architector_posts_app/features/posts/domain/repositeres/posts_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/post.dart';

class AddPostUsecase {
  final PostRepository repository;

  AddPostUsecase(this.repository);

  Future<Either<Failure, Unit>> call(Post post) async {
    return await repository.addPost(post);
  }
}