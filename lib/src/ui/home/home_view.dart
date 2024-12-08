import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: 'Criar novo estudo personalizado',
            onPressed: () {
              Navigator.of(context).pushNamed('/lessons/add');
            },
            icon: const Icon(Icons.add_box_outlined, size: 28),
          ),
          IconButton(
            tooltip: 'Configurações',
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined, size: 28),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
