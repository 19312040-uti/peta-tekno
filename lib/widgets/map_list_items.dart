import 'package:flutter/material.dart';
import 'package:peta_teknokrat/map/models/maps.dart';

class MapListClass extends StatelessWidget {
  const MapListClass({required this.map, super.key});

  final Maps map;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text('${map.id}', style: textTheme.bodySmall),
        title: Text(map.place),
        isThreeLine: true,
        subtitle: Text(map.direction),
        dense: true,
      ),
    );
  }
}
