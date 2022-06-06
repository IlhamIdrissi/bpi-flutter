import 'package:bpi_exam_flutter/bloc/adherents/adherent_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './button_adherent.dart';

class ButtonsBarAdherent extends StatelessWidget {
  const ButtonsBarAdherent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonAdherent(adherentEvent: LoadAllAdherentsEvent(), text: "Charger tout les adherents"),
    ],
    );
  }
}
