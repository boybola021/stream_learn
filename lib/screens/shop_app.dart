

import 'package:flutter/material.dart';

import '../model/stream_model.dart';

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("PDP NOUT Shop"),
      ),
      body: Center(
      child: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        children: products.map((item){
          return Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.network(item.imageUrl,fit: BoxFit.fitWidth,),
              ),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text(""))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        }).toList(),
      ),
      ),
    );
  }
}

List<Product> products = [
  const Product(id: 1, name: "OMEN Transcend Gaming Laptop 16t-u000, 16.1", description: "Good", price: 1299.99, imageUrl: "https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c08499684.png"),
  const Product(id: 2, name: "PREDATOR TRITON 500 SE", description: "Good", price: 1999.99, imageUrl: "https://images.acer.com/is/image/acer/Triton_500_SE_AGW_KSP01?\$responsive\$"),
  const Product(id: 3, name: "Alienware m16 Gaming Laptop", description: "Nice", price: 2999.99, imageUrl: "https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/alienware-notebooks/alienware-m16-amd/media-gallery/usb-data/laptop-alienware-m16-amd-bk-usb-gallery-4.psd?fmt=png-alpha&pscan=auto&scl=1&hei=402&wid=637&qlt=100,1&resMode=sharp2&size=637,402&chrss=full"),
  const Product(id: 4, name: "Legion Pro 7 (8th Gen, 16, AMD)", description: "Nice", price: 2999.99, imageUrl: "https://www.lenovo.com/medias/?context=bWFzdGVyfHJvb3R8MjU1NTE0fGltYWdlL3BuZ3xoYzMvaDYyLzE2OTc0MDM1NjQ4NTQyLnBuZ3xiMDg1M2I4ZDU3ZTY3YTM4NTdlMDBjOTBjNGE0ZmUzMWMzMjBlZDYzZDcxMDE2NzAyNGUyMTk0MWRmZmU3MWZl"),
];