import 'model.dart';

class MoviesStates{}

class GetMoviesLoading extends MoviesStates{}
class GetMoviesSuccess extends MoviesStates {
  final List<Movies> list ;
  GetMoviesSuccess({required this.list});

}
class GetMoviesFailed extends MoviesStates {
  final String massage ;
  GetMoviesFailed({required this.massage});
}