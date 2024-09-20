import 'package:flutter/material.dart';
import 'package:tela_login_flutter/home.dart'; 

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu app"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centralizando os widgets na tela
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
              child: const Text(
                "Bem vindo!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            // Campo de email
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            // Campo de senha
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: const TextField(
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            // Link "Esqueci a senha"
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextButton(
                  onPressed: () {
                    // Ação para esqueci a senha
                  },
                  child: const Text(
                    'Esqueci a senha',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
            // Botão de login
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navegar para a nova tela (HomePage)
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Cor do botão
                  ),
                  child: const Text('Login'),
                ),
              ),
            ),
            // Texto "Não tem conta? Inscreva-se"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Não tem conta?"),
                TextButton(
                  onPressed: () {
                    // Ação para o botão de inscrição
                  },
                  child: const Text(
                    "Inscreva-se",
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

