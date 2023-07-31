
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/movies/state.dart';
import 'model.dart';

class MoviesCubit extends Cubit<MoviesStates> {
  MoviesCubit() : super(MoviesStates());
  Future<void> getMovie()async{
    emit(GetMoviesLoading());
    var response = await Dio().get('https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=1')
        .catchError((err){emit(GetMoviesFailed(massage:err.toString()));});
    MoviesData model = MoviesData.fromJson(response.data);
    emit(GetMoviesSuccess(list: model.list));
  }

}