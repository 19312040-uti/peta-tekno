import 'dart:collection';

import 'package:peta_teknokrat/map/maps.dart';

const _delay = Duration(microseconds: 300);

const _classes = [
  'Lab GSG 1',
  'Lab GSG 2',
  'Lab GSG 3',
  'Lab GSG 4',
  'Lab Digital',
  'Lab 1 A',
  'Lab 2 A'
];

const _direction = [
  'Dari parkiran, maju sampai gedung GSG, naik 2 lantai, kelas dipojok kanan',
  'Dari parkiran, maju sampai gedung GSG, naik 2 lantai, kelas dipojok kiri',
  'Dari parkiran, maju sampai gedung GSG, naik 3 lantai, kelas dipojok kanan',
  'Dari parkiran, maju sampai gedung GSG, naik 3 lantai, kelas dipojok kiri',
  'Dari parkiran, maju sampai gedung A, naik 2 lantai, lihat kiri, kelas didepan muka',
  'Dari parkiran, maju sampai gedung A, naik 2 lantai, lihat kiri, maju dan belok kekanan, maju sampai sebelum lift, pintu dikanan',
  'Dari parkiran, maju sampai gedung A, naik 2 lantai, lihat kiri, maju dan belok kiri, kelas di pojok kanan'
];

class ClassRepository {
  final _classes = <String>[];

  Future<List<String>> loadClasses() => Future.delayed(_delay, () => _classes);

  void searchClass(String classes) => _classes.add(classes);

  List<String> getMaps({int index = 0}) {
    List<String> maps = [];

    _classes.forEach((element) {
      maps.add(element);
    });

    return maps;
  }

  List<String> getDirections({int index = 0}) {
    List<String> direction = [];

    _direction.forEach((element) {
      direction.add(element);
    });

    return direction;
  }
}
