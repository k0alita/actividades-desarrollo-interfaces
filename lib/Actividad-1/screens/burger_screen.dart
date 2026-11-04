import 'package:flutter/material.dart';

import 'detail_product.dart';

class BurgerScreen extends StatefulWidget {
  const BurgerScreen({super.key});

  @override
  State<BurgerScreen> createState() => _BurgerScreenState();
}

class _BurgerScreenState extends State<BurgerScreen> {

  Widget construirCard(String imagen, String nombre, String descripcion, String precio, String descripcionCompleta){
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 6,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 2,
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue.shade100,
          ),
          child: Center(
            child: Text(imagen, style: TextStyle(fontSize: 30),),
          ),
          ),
        title: Text(nombre, style: TextStyle(fontSize: 18),),
        subtitle: Text(
          descripcion,
          style: TextStyle(fontSize: 14),

        ),
        trailing: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProduct(nombre: nombre, descripcion: descripcion, precio: precio, imagen: imagen, descripcionCompleta: descripcionCompleta,)));
        }, icon: Icon(Icons.arrow_forward_ios, color: Colors.blue)),

        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProduct(nombre: nombre, descripcion: descripcion, precio: precio, imagen: imagen, descripcionCompleta: descripcionCompleta,)));
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RestoApp", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        actions: [
          Icon(Icons.shopping_cart, color: Colors.white, size: 26,),
          const SizedBox(width: 15),
          Icon(Icons.search, color: Colors.white, size: 26,),
          const SizedBox(width: 15),
          Icon(Icons.menu, color: Colors.white, size: 26,),
          const SizedBox(width: 15),
        ]
      ),
      body: ListView(
          children: [
            construirCard(
              "🍔",
              "Burger Classic",
              "Queso, carne y bacon - 8.50€",
              "8.50€",
              "Deliciosa hamburguesa de carrne 100% vacuno, queso, cheddar, y salsa especial"
            ),

            construirCard(
              "🍕",
              "Pizza Pepperoni",
              "Queso mozzarella - 10.00€",
              "10.00€",
              "Pizaa buena buna"
            ),

            construirCard(
              "🌮",
              "Tacos al Pastor",
              "3 unidades con piña - 7.00€",
              "7.00€",
              "Tacoooooo wenoioo"
            ),
          ],
        ),
    );
  }
}