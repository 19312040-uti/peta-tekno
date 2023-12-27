import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:peta_teknokrat/class_repository.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc({required this.classRepository}) : super(const MapState()) {
    on<MapLoaded>(_onLoaded);
  }

  final ClassRepository classRepository;

  Future<void> _onLoaded(
    MapLoaded event,
    Emitter<MapState> emit,
  ) async {
    try {
      if (state.status == MapStatus.initial) {
        final maps = await _fetchMaps();
        final directions = await _fetchDirections();
      }
    } catch (_) {
      emit(state.copyWith(status: MapStatus.failure));
    }
  }

  Future<List<String>> _fetchMaps([int index = 0]) async {
    final response = classRepository.getMaps();
    return response;
  }

  Future<List<String>> _fetchDirections([int index = 0]) async {
    final response = classRepository.getDirections();
    return response;
  }
}
