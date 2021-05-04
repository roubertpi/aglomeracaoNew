import 'package:aglomeracao/api/api_service.dart';
import 'package:aglomeracao/components/rounded_button.dart';
import 'package:aglomeracao/constants.dart';
import 'package:aglomeracao/model/denuncia_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DenunciaModel denunciaModel;
  GoogleMapController mapController;
  double lat = -2.5537635;
  double log = -44.2186462;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    denunciaModel = new DenunciaModel();
  }

  @override
  Widget build(BuildContext context) {
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
          press: () {
            //denunciaModel.startLocation.coordinates = [2.5537635, -44.2186462];
            denunciaModel.startLocation.type = "dsfds";
          
            ApiService apiService = new ApiService();
            apiService.denunciar(denunciaModel).then((value) {
              if (value != null) {
                  print('value');
                  if (value.token.isNotEmpty) {
                    Navigator.of(context).pushNamed('/homepage', arguments: {});
                  } else {
                    print('erro');
                  }
                }
            });
          },
        )
      ],
    );
  }
}
