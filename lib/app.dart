import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:peta_teknokrat/class_repository.dart';
import 'package:peta_teknokrat/map/bloc/map_bloc.dart';
import 'package:peta_teknokrat/map/view/map_page.dart';
import 'package:peta_teknokrat/view/main_page.dart';

class App extends StatelessWidget {
  const App({required this.classRepository, super.key});

  final ClassRepository classRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MapBloc(
            classRepository: classRepository,
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Peta Teknokrat',
        theme: ThemeData(
            colorScheme: ColorScheme.dark(),
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent, elevation: 0)),
        initialRoute: '/',
        routes: {
          '/': (_) => const MainPage(),
          '/map': (_) => const MapPage(),
        },
      ),
    );
  }
}
