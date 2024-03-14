import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider'
    '2/Providerclass.dart';

import 'cartpage.dart';
import 'listProduct.dart';


class productpage extends StatefulWidget {
  const productpage({super.key});

  @override
  State<productpage> createState() => _productpageState();
}

class _productpageState extends State<productpage> {
  @override
  Widget build(BuildContext context) {
    Providerclass providerclass = Provider.of<Providerclass>(context);
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text('Products page')),
        backgroundColor: Colors.yellow,
        actions: [
          Padding(
           padding: EdgeInsets.only(right:20),
           child: InkWell(
            onTap:(){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> cartpage()),
             );
          },child: Icon(Icons.shopping_cart),),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (BuildContext context,index){
            var listproduct = products[index];
            return ListTile(
              textColor: Colors.blue,
              leading: Text(listproduct.id.toString()),
              title: Text(listproduct.name),
             trailing: Checkbox(
                 value: providerclass.Items.contains(listproduct),
                 onChanged:(value){
                   if(value == true)
                     providerclass.add(listproduct);
                   else
                     providerclass.remove(listproduct);
                 }),
            );
          },
          itemCount: products.length,))
        ],
      ),
    );
  }
}
