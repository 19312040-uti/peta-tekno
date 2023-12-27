import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peta_teknokrat/map/bloc/map_bloc.dart';
import 'package:peta_teknokrat/map/models/maps.dart';
import 'package:peta_teknokrat/widgets/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MapListsState();
}

class _MapListsState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        switch (state.status) {
          case MapStatus.failure:
            return const Center(
              child: Text('Error!'),
            );
          case MapStatus.success:
            if (state.map.isEmpty) {
              return const Center(
                child: Text('No Addresses!'),
              );
            }

            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return index >= state.map.length
                    ? const BottomLoader()
                    : MapListClass(map: state.map[index]);
              },
              itemCount: state.map.length,
            );
          case MapStatus.initial:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
