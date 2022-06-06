

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/adherents/adherent_bloc.dart';
import '../widgets/adherent/adherent_list.dart';
import '../widgets/adherent/buttons_bar_adherent.dart';



class AdherentPage extends StatelessWidget {
  const AdherentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adherents")),
      body: Column(
          children: [
            BlocBuilder<AdherentBloc,AdherentState>(
                builder: (context, state) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: ButtonsBarAdherent(),
                  );
                }),
            BlocBuilder<AdherentBloc,AdherentState>(
                builder: (context, state) {
                  if(state.requestStateAd==RequestStateAd.Loading){
                    return CircularProgressIndicator();
                  }else if(state.requestStateAd==RequestStateAd.Loaded){
                    return Expanded(
                      child: AdherentListView(state: state),
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
