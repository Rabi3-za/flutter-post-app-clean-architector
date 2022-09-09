import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entites/post.dart';
import '../repositeres/posts_repository.dart';

class GetAllPostsUseCase {
  final PostRepository repository;

  GetAllPostsUseCase(this.repository);

  Future<Either<Failure, List<Post>>> call() async {
    return await repository.getAllPosts();
  }
}