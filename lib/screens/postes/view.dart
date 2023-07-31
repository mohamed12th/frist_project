import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trannin_poject/screens/postes/cubit.dart';
import 'package:trannin_poject/screens/postes/state.dart';

import 'component/view.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Posts"),),
      body: BlocProvider(
        create: (context) => PostsCubit()..getPosts(),
        child: BlocBuilder<PostsCubit,PostsStates>(
          builder: (context, state) {
            if (state is GetPostsLoading){
              return const Center(child: CircularProgressIndicator());
            }
            else if (state is GetPostsSuccess){
              return ListView.builder(itemBuilder: (context, index) => ItemPost(model:state.list[index]),
                itemCount: state.list.length,);
            }else if (state is GetPostsFailed){
              return Center(child: Text(state.massage),);
            }
            else{
              return const Center(child: Text("error"),);
            }
          },
        ),
      ),
    );
  }
}

