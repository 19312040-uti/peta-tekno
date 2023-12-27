import 'package:equatable/equatable.dart';

final class Map extends Equatable {
  const Map({required this.id, required this.place, required this.direction});

  final int id;
  final String place;
  final String direction;

  @override
  List<Object> get props => [id, place, direction];
}
