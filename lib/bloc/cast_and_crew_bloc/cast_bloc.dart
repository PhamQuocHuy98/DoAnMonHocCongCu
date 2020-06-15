import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:doancongcu/bloc/cast_and_crew_bloc/cast_event.dart';
import 'package:doancongcu/bloc/cast_and_crew_bloc/cast_state.dart';
import 'package:doancongcu/data/model/api_cast_model.dart';
import 'package:doancongcu/data/repositories/movie_repositories.dart';

class CastBloc extends Bloc<CastEvent, CastState> {
  MovieRepository repository;

  CastBloc({@required this.repository});

  @override
  // TODO: implement initialState
  CastState get initialState => CastInitialState();

  @override
  Stream<CastState> mapEventToState(CastEvent event) async* {
    // TODO: implement mapEventToState

    if (event is FetchCastAndCrewEvent) {
      yield CastLoadingState();
      try {
        List<Cast> casts = await repository.getCastList(event.movieId);
        yield CastLoadedState(casts: casts);
      } catch (e) {
        yield CastErrorState(message: e.toString());
      }
    }
  }
}
