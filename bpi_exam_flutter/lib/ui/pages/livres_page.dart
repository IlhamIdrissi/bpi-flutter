
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_bloc.dart';
import '../widgets/livre/buttons_bar_livre.dart';
import '../widgets/livre/livre_list.dart';


class LivrePage extends StatelessWidget {
  const LivrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Livres")),
      body: Column(
          children: [
            BlocBuilder<LivreBloc,LivreState>(
                builder: (context, state) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: ButtonsBarLivre(),
                  );
                }),
            BlocBuilder<LivreBloc,LivreState>(
                builder: (context, state) {
                  if(state.requestState==RequestState.Loading){
                    return CircularProgressIndicator();
                  }else if(state.requestState==RequestState.Loaded){
                    return Expanded(
                      child: LivreListView(state: state),
                    );
                  }
                  else{
                    return Center(child: Text("Aucun élément"),);
                  }
                }),

          ])
      ,
    );
  }
}