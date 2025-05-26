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
        leading: const Icon(Icons.sports_soccer, color: Colors.white, size: 30),
        actions: [
          IconButton(
            icon: const Icon(Icons.stars, color: Colors.white, size: 30),
            onPressed: () => print("favoritos"),
          ),
        ],
      ),
      body: Stack(
        children: [
          
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Image.asset('assets/jugadores/oro.png', height: 200),
                  const SizedBox(height: 20),

                  const Text(
                    "Bienvenido al Mundo del Futbol",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Colors.black54,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Explora estadísticas, jugadores y premios",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton.icon(
                    onPressed: () {
                      context.read<HomeBloc>().add(HomeSearchPressed());
                    },
                    icon: const Icon(Icons.search),
                    label: const Text('Buscar'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(fontSize: 18),
                      backgroundColor: Colors.orange[700],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  Image.asset(
                    'assets/jugadores/ranking.png',
                    height: 300,
                  
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
