import 'package:flutter/material.dart';
import 'package:padsou/assets/colors/colors.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5F67EA),
      body: Center(
        child: Column(
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
                        "PAS DE SOUS ?",
                        style: TextStyle(
                            color: CustomColors.secondaryColor,
                            fontSize: 30,
                            fontFamily: "TitreCF"),
                      ),
                    ),
                    Container(
                        child: Text(
                      "Y'A PADSOU",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "TitreCF"),
                    ))
                  ],
                )),
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
