
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../bloc/livres/livre_bloc.dart';

class LivreListView extends StatelessWidget {
  final LivreState state;
  const LivreListView({Key? key,required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context,index)=>Divider(color: Colors.grey,height: 3),
        itemCount: state.livres.length,
        itemBuilder: (context,index){

          return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(state.livres[index].titre),
            Text(state.livres[index].auteur),
            Text(state.livres[index].anne_publication),
            Text((state.livres[index].prix).toString()),],
          );
        });
  }
}
