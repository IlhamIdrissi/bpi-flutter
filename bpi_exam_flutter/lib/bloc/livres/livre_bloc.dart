import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bpi_exam_flutter/repositories/livre_repository.dart';

import '../../model/livre_model.dart';

part 'livre_event.dart';
part 'livre_state.dart';


class LivreBloc extends Bloc<LivreEvent,LivreState> {
  LivreRepository livreRepository;
  String lastEvent = "";

  LivreBloc(LivreState livreState, this.livreRepository) :super(livreState) {
    on<LivreEvent>((event, emit) async {
      if (event is LoadAllLivresEvent) {
        lastEvent = "All";
        emit(LivreState(
            livres: [], requestState: RequestState.Loading, errorMessage: ""));
        try {
          List<Livre> livres = await livreRepository.allLivres();
          emit(LivreState(livres: livres,
              requestState: RequestState.Loaded,
              errorMessage: ""));
        } catch (e) {
          emit(LivreState(livres: [],
              requestState: RequestState.Error,
              errorMessage: e.toString()));
        }
      }
    });
  }
}
