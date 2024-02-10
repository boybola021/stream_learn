

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/model/stream_model.dart';

import 'cart.dart';

void main() => runApp(const StreamThree());

class StreamThree extends StatelessWidget {
  const StreamThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      themeMode: ThemeMode.light,
      home: const  HomeThree(),
    );
  }
}

class HomeThree extends StatelessWidget {
  const HomeThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDP NOUT Shop"),
        actions:  [
          Badge(
            alignment: const Alignment(0.8,-0.8),
            label: const Text("9+"),
            child: IconButton.filled(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const CartScreen()));
                },
                icon: const Icon(CupertinoIcons.shopping_cart,color: Colors.white,),
            ),
          ),
          const SizedBox(width: 10,),
        ],
      ),
      body: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 10),
          crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.6,
        children: products.map((item){
          return DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black,width: 2),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                    child:
                    DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 2),
                        ),
                        child: Image.network(item.imageUrl,fit: BoxFit.fitWidth,)),),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(item.name,style: Theme.of(context).textTheme.bodyMedium,maxLines: 2,),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text("${item.price}",style: Theme.of(context).textTheme.bodySmall,),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton.filled(
                                onPressed: (){},
                                icon: const Icon(Icons.add),
                            ),
                            IconButton.filled(
                                onPressed: (){},
                                icon: const Icon(Icons.remove),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

