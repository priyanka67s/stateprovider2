import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider2/Providerclass.dart';

import 'listProduct.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    Providerclass providerclass = Provider.of<Providerclass>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text ('Cart page')),
        backgroundColor: Colors.yellow,
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, index){
        Product product= providerclass.item[index];
        return ListTile(
          leading: CircleAvatar(backgroundColor: Colors.green),
          title: Text(product.name),
          onLongPress: (){
            providerclass.remove(product);
          },
        );
      },
        itemCount: providerclass.item.length,
      ),
    );
  }
}
