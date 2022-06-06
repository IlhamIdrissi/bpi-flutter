part of 'livre_bloc.dart';

enum RequestState{Loaded,Loading,Error,NONE}

class LivreState{
  List<Livre> livres;
  RequestState requestState;
  String errorMessage;

  LivreState({required this.livres,required this.requestState, required this.errorMessage});
}
