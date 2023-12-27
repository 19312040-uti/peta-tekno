import 'package:equatable/equatable.dart';

final class Maps extends Equatable {
  const Maps({required this.id, required this.place, required this.direction});

  final int id;
  final String place;
  final String direction;

  @override
  List<Object> get props => [id, place, direction];
}
