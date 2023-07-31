import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/movies/state.dart';

import 'component/item_movie.dart';
import 'cubite.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MoviesCubit()..getMovie(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Movies"),),
        body: BlocBuilder<MoviesCubit, MoviesStates>(
          builder: (context , state){
            if(state is GetMoviesLoading){
              return const Center(child: CircularProgressIndicator());
            }else if (state is GetMoviesSuccess){
              return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 195/300,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
                  itemCount: state.list.length,
                  itemBuilder:(context , index)=>ItemMovie(
                    model: state.list[index],
                  ));
            }else if (state is GetMoviesFailed){
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(state.massage),
                    ElevatedButton(onPressed: () {
                    }, child: const Text("Try Again"))
                  ],
                ),
              );
            }else {
              return const Center(child: Text("erorr"),);
            }
          },
        ),

      ),
    );
  }
}
