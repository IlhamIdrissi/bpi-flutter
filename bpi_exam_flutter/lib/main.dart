import 'package:bpi_exam_flutter/repositories/adherent_repository.dart';
import 'package:bpi_exam_flutter/repositories/livre_repository.dart';
import 'package:bpi_exam_flutter/ui/pages/adherents_page.dart';
import 'package:bpi_exam_flutter/ui/pages/home_page.dart';
import 'package:bpi_exam_flutter/ui/pages/livres_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/adherents/adherent_bloc.dart';
import 'bloc/livres/livre_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>LivreBloc( LivreState(livres: [], requestState: RequestState.NONE, errorMessage: ""), LivreRepository())),
          BlocProvider(create: (context)=>AdherentBloc( AdherentState(adherents: [], requestStateAd: RequestStateAd.NONE, errorMessage: ""), AdherentRepository()))
        ],
        child: MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.green
          ),
          routes: {
            "/":(context)=>HomePage(),
            "/livres":(context)=> LivrePage(),
            "/adherents":(context)=>AdherentPage(),
          },
        ));
  }
}


