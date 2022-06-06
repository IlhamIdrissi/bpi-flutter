
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../bloc/adherents/adherent_bloc.dart';

class AdherentListView extends StatelessWidget {
  final AdherentState state;
  const AdherentListView({Key? key,required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context,index)=>Divider(color: Colors.grey,height: 3),
        itemCount: state.adherents.length,
        itemBuilder: (context,index){


          return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(state.adherents[index].nom),
            Text(state.adherents[index].prenom),
            Text(state.adherents[index].email),
            Text(state.adherents[index].tel)],
          );
        });
  }
}
