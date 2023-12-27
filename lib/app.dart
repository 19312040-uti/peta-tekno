import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:peta_teknokrat/class_repository.dart';
import 'package:peta_teknokrat/map/bloc/map_bloc.dart';
import 'package:peta_teknokrat/map/view/map_page.dart';
import 'package:peta_teknokrat/view/main_page.dart';

class App extends MaterialApp {
  const App({super.key}) : super(home: const MainPage());
}
