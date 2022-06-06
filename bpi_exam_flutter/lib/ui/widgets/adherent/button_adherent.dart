
import 'package:bpi_exam_flutter/bloc/adherents/adherent_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ButtonAdherent extends StatelessWidget {
  final AdherentEvent adherentEvent;
  final String text;
  const ButtonAdherent({Key? key,required this.adherentEvent,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      context.read<AdherentBloc>().add(adherentEvent);
    }, child: Text(text),
      style: ElevatedButton.styleFrom(primary: (context.read<AdherentBloc>().lastEvent ==text)? Colors.amber:Colors.green),);
  }
}
