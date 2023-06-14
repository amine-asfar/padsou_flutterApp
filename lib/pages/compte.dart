import 'package:flutter/material.dart';


class UserCompte extends StatelessWidget {
  const UserCompte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Compte"),
      ),
      body: const Center(
        child: Text("Compte"),
      ),
    );
  }
}
