import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyec_sena/bloc/home_bloc.dart';

class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Futbol Pro',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey, Colors.grey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        leading: const Icon(Icons.sports_soccer,
          color: Colors.white,
          size: 30),
        actions: [
          IconButton(
            icon: const Icon(Icons.stars, color: Colors.white, size: 30),
            onPressed: () => print("favoritos"),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/jugadores/fubol.png'), 
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(color: Colors.black.withOpacity(0.5)),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Bienvenido al Mundo del Futbol",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(blurRadius: 10, color: Colors.black)],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    context.read<HomeBloc>().add(HomeSearchPressed());
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                    backgroundColor: Colors.orange[700],
                  ),
                  child: const Text('Buscar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
