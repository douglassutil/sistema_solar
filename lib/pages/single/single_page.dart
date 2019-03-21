import 'package:flutter/material.dart';
import 'package:sistema_solar/services/planet_service.dart';
import 'package:sistema_solar/widgets/planet_list_tile.dart';

class SinglePage extends StatelessWidget {
  
  final Widget planet;
  final PlanetService planetService = PlanetService();
  
  SinglePage({Key key, this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.network(planet.urlImage),
          ),
          Card(
            child: ListTile(
              contentPadding: EdgeInsets.all(12.0),
              subtitle: Text(planet.desc),
            ),
          )
        ]..addAll(
          planetService.planetsOrdereByDistanceOfPlanet(planet).map((orderedPlanet){
            return PlanetListTile(
              planet:orderedPlanet
              subtitle: Text("${planetService.distanceFromPlanets(planet, orderedPlanet).toStringAsPrecision(2)} AU do ${planet.name}"),
            );
          })
        ),
      ),
    );
  }
}