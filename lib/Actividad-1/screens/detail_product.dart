import 'package:flutter/material.dart';

class DetailProduct extends StatefulWidget {
  final String nombre;
  final String descripcion;
  final String precio;
  final String imagen;
  final String descripcionCompleta;

  const DetailProduct({super.key,
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.imagen,
    required this.descripcionCompleta});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
            Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back, color: Colors.white,)),
        title: Text("Detalle del producto", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,

      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue.shade100,
            ),
            child: Center(
              child: Text(widget.imagen, style: TextStyle(fontSize: 100),),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.nombre, style: TextStyle(fontSize: 24)),
              Text("Price: ${widget.precio} ", style: TextStyle(fontSize: 20, color: Colors.blue),),
            ]
          ),
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue.shade100,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(widget.descripcionCompleta, style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
            ),
          )
        ]
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorito",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Ordenar"),
        ]
      ),
    );
  }
}