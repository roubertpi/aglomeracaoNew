import 'package:aglomeracao/constants.dart';
import 'package:aglomeracao/screens/balanco/components/vacinas_widget.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ksecondColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 210,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Text(
                    'Balanço',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widgetvacina(
                        1234,
                        '1º dose',
                      ),
                      widgetvacina(43433, '2º dose'),
                      widgetvacina(2323, 'Total'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              'Locais de Vacina',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Expanded(
                child: ListTile(
              title: Text('São Cristovão'),
              subtitle: Text('Rua um'),
            )),
          )
        ],
      ),
    );
  }

  Container widgetvacina(double quatidade, String dose) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              quatidade.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(dose)
          ],
        ),
      ),
      height: 95,
      width: 95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: kPrimaryLightColor),
    );
  }
}
