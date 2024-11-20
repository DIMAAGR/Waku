import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined, size: 28),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined, size: 28),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
