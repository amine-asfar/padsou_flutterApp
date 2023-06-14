import 'package:flutter/material.dart';

class AddPlan extends StatelessWidget {
  const AddPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Plan"),
      ),
      body: const Center(
        child: Text("Add Plan"),
      ),
    );
  }
}
