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
  void searchClass(String classes) => _classes.add(classes);

  List<Maps> getMaps({int index = 0}) {
    List<Maps> maps = [];

    _classes.forEach((element) {
      maps.add(Maps(
          id: index, place: _classes[index], direction: _direction[index]));
    });

    return maps;
  }
}
