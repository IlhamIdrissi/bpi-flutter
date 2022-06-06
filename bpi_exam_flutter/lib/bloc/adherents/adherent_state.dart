
part of 'adherent_bloc.dart';

enum RequestStateAd{Loaded,Loading,Error,NONE}

class AdherentState{
  List<Adherent> adherents;
  RequestStateAd requestStateAd;
  String errorMessage;

  AdherentState({required this.adherents,required this.requestStateAd, required this.errorMessage});
}
