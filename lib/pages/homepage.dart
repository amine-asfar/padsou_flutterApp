import 'package:flutter/material.dart';
import 'package:padsou/assets/colors/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5F67EA),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 120),
                              child: const Text(
                                "Coucou toi,"
                                    " \n"
                                    "T’es en manque de thunes ?",
                                style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 15,
                                    fontFamily: "TitreCF"),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                Container(
                  child: Image.asset("lib/assets/img/1.png"),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              width: 300,
              padding:EdgeInsets.all(20) ,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(children: [
                        Image.asset("lib/assets/img/1.png"),
                        Text("Abonnement 1ans")
                      ]),
                      Spacer(),
                      Column(children: [
                        Image.asset("lib/assets/img/1.png"),
                        Text("Abonnement 1ans")
                      ]),
                    ],
                  ),

                  Row(
                    children: [

                      Column(children: [
                        Image.asset("lib/assets/img/1.png"),
                        Text("Abonnement 1ans")
                      ]),
                      Spacer(),
                      Column(
                        children: [
                          Image.asset("lib/assets/img/1.png"),
                          Text("Abonnement 1ans")
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Text("Accède aux 500 bons plans qu’on te propose chaque mois",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(CustomColors.secondaryColor),
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 20,right: 50,bottom: 20,left: 50)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                ),
                onPressed: (){Navigator.pushNamed(context, "/register");},
                child: Text("C'EST PARTI!!",style: TextStyle(
                  fontSize: 16,
                  fontFamily: "TitreCF",
                  color: Colors.white,
                ),))
          ],
        ),
      ),
    );
  }
}
