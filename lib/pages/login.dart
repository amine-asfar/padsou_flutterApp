import 'package:flutter/material.dart';
import 'package:padsou/assets/colors/colors.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          //color: CustomColors.thirdColor,
            padding: EdgeInsets.symmetric(vertical: 120, horizontal: 24),
            child: Center(
              child: Column(
                children: [
                  Text("Te revoilà ! 🔥",
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: "TitreCF",
                          color: Colors.black,
                          decoration: TextDecoration.none)),
                  Text(
                    "Reviens vite pour profiter des bons plans",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        decoration: TextDecoration.none),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Ton adresse e-mail",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none

                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 17),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Ton mot de passe",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide.none

                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 17),
                    width: double.infinity,
                    child: Text("Mot de passe oublié ?",style: TextStyle(
                      color: CustomColors.textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.end,),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top:30),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: const MaterialStatePropertyAll<Color>(CustomColors.primaryColor),
                          padding: MaterialStateProperty.all(EdgeInsets.only(top: 20,right: 90,bottom: 20,left: 90)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                        ),
                        onPressed: (){Navigator.pushNamed(context, "/register");},
                        child: Text("Se connecter",style: TextStyle(
                          fontSize: 16,
                          fontFamily: "TitreCF",
                          color: Colors.white,
                        ),)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 300),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'Pas encore inscrit ? ',
                            style: TextStyle(color: CustomColors.textColor,fontSize: 12,fontWeight: FontWeight.bold,),
                            children: [
                              TextSpan(
                                text: 'Allez viens !',
                                style: TextStyle(color: CustomColors.primaryColor,fontWeight: FontWeight.bold,),
                              ),
                            ],
                          ),
                        )),
                  )

                ],
              ),
            )));
  }
}
