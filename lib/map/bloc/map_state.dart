part of 'map_bloc.dart';

enum MapStatus { initial, success, failure }

final class MapState extends Equatable {
  const MapState({
    this.status = MapStatus.initial,
    this.map = const <String>[],
  });

  final MapStatus status;
  final List<String> map;

  MapState copyWith({
    MapStatus? status,
    List<String>? map,
  }) {
    return MapState(
      status: status ?? this.status,
      map: map ?? this.map,
    );
  }

  @override
  List<Object> get props => [status, map];
}
