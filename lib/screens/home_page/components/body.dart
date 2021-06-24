import 'package:aglomeracao/constants.dart';
import 'top4_widgets.dart';
import 'package:flutter/material.dart';
import 'package:aglomeracao/components/backgroud.dart';

class Body extends StatelessWidget {
  final List<String> lugares = [
    'São',
    'São',
    'Cidade',
    'Turu',
    'São',
    'São',
    'Cidade',
    'Turu',
  ];

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "Aglomeração",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white),
                ),
                SizedBox(height: 130),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed('/introducao', arguments: {});
                  },
                  child: Container(
                    height: 100,
                    width: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kPrimaryColor,
                      boxShadow: [BoxShadow()],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Denuciar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(child: (minhasDenunciasItem('Minhas\ndenúncias'))),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/balanco');
                        },
                        child: minhasDenunciasItem('Locais\nde vacina')),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Locais com \nmais denúncias',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TopForWidgets(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container minhasDenunciasItem(String title) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 60),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          )
        ],
      ),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryLightColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 20,
              spreadRadius: 1,
            )
          ]),
    );
  }
}
