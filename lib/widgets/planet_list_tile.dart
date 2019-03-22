import 'package:flutter/material.dart';

import 'package:sistema_solar/models/planet.dart';
import 'package:sistema_solar/widgets/app_circle_avatar.dart';

class PlanetListTile extends StatelessWidget {
  final Planet planet;
  final Function onTap;
  final Widget subtitle;

  PlanetListTile({
    Key key, 
    @required this.planet,
    this.onTap,
    this.subtitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(planet.name),
        subtitle: subtitle,
        leading: AppCircleAvatar(
          urlImage:planet.urlImage
        ),
        onTap: onTap,
      ),
    );
  }
}