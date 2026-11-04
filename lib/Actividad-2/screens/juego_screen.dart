import 'dart:math';
import 'dart:math' as Math;

import 'package:flutter/material.dart';

class JuegoScreen extends StatefulWidget {
  const JuegoScreen({super.key});

  @override
  State<JuegoScreen> createState() => _JuegoScreenState();
}

class _JuegoScreenState extends State<JuegoScreen> {

  String? _player1 = null;
  String? _player2 = null;

  String? _ganador = null;


  List<String> _opciones = ["rock", "paper", "scissors"];

  void _jugar() {
    int posicion1 = Math.Random().nextInt(_opciones.length);
    int posicion2 = Math.Random().nextInt(_opciones.length);


    setState(() {
      _player1 = _opciones[posicion1];
      _player2 = _opciones[posicion2];
      if (posicion1 == posicion2) {
        _ganador = "Empate";
      } else if (
      (posicion1 == 0 && posicion2 == 2) ||
          (posicion1 == 1 && posicion2 == 0) ||
          (posicion1 == 2 && posicion2 == 1)
      ) {
        _ganador = "Gana el jugador 1";
      } else {
        _ganador = "Gana el jugador 2";
      }
    });
  }

  Image _comprobarImagen1() {
    switch (_player1) {
      case "rock":
        return Image.asset("assets/images/rock.png", width: 200, height: 200);
      case "paper":
        return Image.asset("assets/images/paper.png", width: 200, height: 200);
      case "scissors":
        return Image.asset("assets/images/scissors.png", width: 200, height: 200);
      default:
        return Image.asset("assets/images/rock.png", width: 200, height: 200);
    }
  }

  Image _comprobarImagen2() {
    switch (_player2) {
      case "rock":
        return Image.asset("assets/images/rock.png", width: 200, height: 200);
      case "paper":
        return Image.asset("assets/images/paper.png", width: 200, height: 200);
      case "scissors":
        return Image.asset("assets/images/scissors.png", width: 200, height: 200);
      default:
        return Image.asset("assets/images/rock.png", width: 200, height: 200);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Rock-Paper-Scissor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                      children: [Text("Player 1", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                        _comprobarImagen1()
                    ]
                  ),
                ),
                Expanded(
                  child: Column(
                      children: [
                        Text("Player 2" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10),
                        _comprobarImagen2()]
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Text("$_ganador", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  _jugar();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade400,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)
                  ),

                ),
                child: Text("Jugar", style: TextStyle(fontSize: 16, color: Colors.white),),
              ),
            )
        ],
        ),
      ),
    );
  }
}
