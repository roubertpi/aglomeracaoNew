import '../../constants.dart';
import 'components/body.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DenunciarScreen extends StatelessWidget {
  GoogleMapController mapController;
  double lat = -2.5537635;
  double log = -44.2186462;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Denunciar'),
      ),
      body: Body(),
      
      backgroundColor: kPrimaryLightColor,
    );
  }
}
