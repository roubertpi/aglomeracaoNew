import 'package:aglomeracao/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 500,
            ),
            Text(
              'Faça Sua Denúncia',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 320,
              child: Text(
                  'Denunciando você está fornecendo sua localização atual, nos informando que na sua região está tendo aglomeração ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify),
            ),
            SizedBox(
              height: 20,
            ),
            RoundedButton(
              text: 'Proximo passo',
              press: () async {
                var minhalocation = await _getCurrentLocation();
                var lat = minhalocation[0];
                var log = minhalocation[1];
                print(minhalocation);
                Navigator.of(context)
                    .pushNamed('/denunciar', arguments: {'lat': lat, 'log':log});
              },
            )
          ],
        ),
      ),
    );
  }

  Future<List<double>> _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
    List<double> minhalocalizacao = [position.latitude, position.longitude];
    return minhalocalizacao;
  }
}
