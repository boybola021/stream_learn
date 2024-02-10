

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Total: \$ 0.0"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.payment_rounded),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 0,
        itemBuilder: (context,index){
          return const Card();
        },
      ),
    );
  }
}
