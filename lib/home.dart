
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
      ),
      body: const Center(
        child: Text(
          'Bem-vindo à Página Inicial!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
