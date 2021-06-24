import 'package:flutter/material.dart';

import 'package:aglomeracao/api/api_denuncia.dart';
import 'package:aglomeracao/components/rounded_button.dart';
import 'package:aglomeracao/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../../../model/denuncia_model.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GoogleMapController mapController;
  Set<Marker> marker = new Set<Marker>();
  DenunciaRequest denunciaRequest;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    denunciaRequest = new DenunciaRequest();
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    final lat = routeArgs['lat'];
    final log = routeArgs['log'];
    List<double> startLocation = [lat, log];
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
            padding: EdgeInsets.only(right: 70),
            child: Text(
              "Sua denúncia será feita do \nlocal que está agora ok?",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: 400,
          child: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: LatLng(lat, log), zoom: 15.0),
          ),
        ),
        RoundedButton(
          text: "Denunciar",
          press: () async {
            denunciaRequest.cordenadas = startLocation;
            try {
              await Provider.of<ApiDenuncia>(context, listen: false)
                  .denunciar(denunciaRequest);
                            Navigator.of(context).pushNamed('/minhasdenuncias');

            } catch (erro) {
              throw erro;
            }
          },
        )
      ],
    );
  }
}
