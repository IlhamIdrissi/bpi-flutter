import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/livres/livre_bloc.dart';
import 'button_livre.dart';


class ButtonsBarLivre extends StatelessWidget {
  const ButtonsBarLivre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonLivre(livreEvent: LoadAllLivresEvent(), text: "Charger tout les livres"),
    ],
    );
  }
}
