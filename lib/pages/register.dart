
import 'package:flutter/material.dart';
import 'package:padsou/assets/colors/colors.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            //color: CustomColors.thirdColor,
            padding: EdgeInsets.symmetric(vertical: 120, horizontal: 24),
            child: Center(
              child: Column(
                children: [
                  Text("Bienvenue 😎",
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: "TitreCF",
                          color: Colors.black,
                          decoration: TextDecoration.none)),
                  Text(
                    "Inscris-toi pour avoir les meilleurs plans étudiants !",
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
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Confirme ton mot de passe",
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
                    margin: EdgeInsets.only(top: 50),
                    child: Text("En t’inscrivant, tu acceptes les Conditions générales d’utilisation de Padsou",style: TextStyle(
                      color: CustomColors.textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top:20),
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
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 60),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/login");
                      },
                        child: RichText(
                      text: TextSpan(
                        text: 'Déjà un compte ? ',
                        style: TextStyle(color: CustomColors.textColor,fontSize: 12,fontWeight: FontWeight.bold,),
                        children: [
                          TextSpan(
                            text: 'Connecte-toi !',
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
