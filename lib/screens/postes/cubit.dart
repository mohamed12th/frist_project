import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/postes/model.dart';

import 'state.dart';


class PostsCubit extends Cubit <PostsStates>{
  PostsCubit() : super(PostsStates());
  Future<void> getPosts()async{
    emit(GetPostsLoading());
    var response = await Dio().get("https://jsonplaceholder.typicode.com/photos")
        .catchError((err){
          emit(GetPostsFailed(massage: err.toString()));
    });
    List<Posts>postsList = [];
    List<dynamic> jsonList = response.data;
    jsonList.forEach((element) {
      postsList.add(Posts.fromJson(element));
    });
    emit(GetPostsSuccess(list:postsList ));
  }

}
