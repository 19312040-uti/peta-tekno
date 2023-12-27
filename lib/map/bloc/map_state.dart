part of 'map_bloc.dart';

enum MapStatus { initial, searching, success, failure }

final class MapState extends Equatable {
  const MapState({
    this.status = MapStatus.initial,
    this.map = const <Map>[],
  });

  final MapStatus status;
  final List<Map> map;

  MapState copyWith({
    MapStatus? status,
    List<Map>? map,
  }) {
    return MapState(
      status: status ?? this.status,
      map: map ?? this.map,
    );
  }

  @override
  List<Object> get props => [status, map];
}
