import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peta_teknokrat/map/bloc/map_bloc.dart';
import 'package:peta_teknokrat/map/models/maps.dart';
import 'package:peta_teknokrat/widgets/map_list_items.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<MapBloc, MapState>(builder: (context, state) {
      switch (state) {
        case MapStatus.failure:
          return const Center(
            child: Text('Error!'),
          );
        case MapStatus.success:
          if (state.map.isEmpty) {
            return Center(
              child: Text('No Addresses!'),
            );
          }

          return ListView.builder(itemBuilder: (BuildContext context, int index) => {
            return index >= state.map.length
                ? MapListClass(post: state.posts[index]) : MapListClass(post: state.posts[index]);
          },);
      }
      ;
    });
  }
}