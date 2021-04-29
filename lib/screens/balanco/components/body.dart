import 'package:aglomeracao/screens/balanco/components/vacinas_widget.dart';
import 'package:flutter/material.dart';




class Body extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              color: Color.fromRGBO(158, 194, 238, 60),
              elevation: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                height: 170,
                child: Column(
                  children: [
                    Text(
                      'Balanço',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [Text("123"), Text('1° Dose')],
                            ),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amberAccent),
                          ),
                          Container(
                            child: Column(
                              children: [Text("123"), Text('1° Dose')],
                            ),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amberAccent),
                          ),
                          Container(
                            child: Column(
                              children: [Text("123"), Text('1° Dose')],
                            ),
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.amberAccent),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListTile(         
              title: Text('São Cristovão'),
              subtitle: Text('Rua um'),

             
            )
          )
        ],
      ),
    );
  }
}
