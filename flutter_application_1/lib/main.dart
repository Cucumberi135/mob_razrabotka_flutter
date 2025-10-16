import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D), // 🔹 Глубокий чёрный фон
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔹 Row с фиолетовым акцентом
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6A0DAD), // фиолетовый
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF6A0DAD).withValues(alpha: 0.5),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9B30FF).withValues(alpha: 0.7),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Expanded Container',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),

                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/photo_2025-04-08_12-43-44.jpg',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Column(
              children: [
                Text(
                  'Flutter страница',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE0B0FF), // светло-фиолетовый текст
                  ),
                ),
                SizedBox(height: 8),
                
              ],
            ),
          ],
        ),
      ),

      // 🔹 FloatingActionButton в фиолетовых тонах
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF6A0DAD),
        onPressed: () {
         
          print('работает');
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
