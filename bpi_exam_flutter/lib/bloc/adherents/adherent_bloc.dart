import 'dart:async';
import 'package:bloc/bloc.dart';
import '../../model/adherent_model.dart';
import '../../repositories/adherent_repository.dart';

part 'adherent_event.dart';
part 'adherent_state.dart';




class AdherentBloc extends Bloc<AdherentEvent,AdherentState> {
  AdherentRepository adherentRepository;
  String lastEvent = "";

  AdherentBloc(AdherentState adherentState, this.adherentRepository) :super(adherentState) {
    on<AdherentEvent>((event, emit) async {
      if (event is LoadAllAdherentsEvent) {
        lastEvent = "All";
        emit(AdherentState(
            adherents: [], requestStateAd: RequestStateAd.Loading, errorMessage: ""));
        try {
          List<Adherent> adherents = await adherentRepository.allAdherents();
          emit(AdherentState(adherents: adherents,
              requestStateAd: RequestStateAd.Loaded,
              errorMessage: ""));
        } catch (e) {
          emit(AdherentState(adherents: [],
              requestStateAd: RequestStateAd.Error,
              errorMessage: e.toString()));
        }
      }
    });
  }
}

