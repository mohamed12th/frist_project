import 'model.dart';

class PostsStates{}
class GetPostsLoading extends PostsStates {}
class GetPostsSuccess extends PostsStates{
  final List<Posts>list;

  GetPostsSuccess({required this.list});

}
class GetPostsFailed extends PostsStates{
  final String massage ;

  GetPostsFailed({required this.massage});

}
