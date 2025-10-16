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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 80, height: 80, color: Colors.blueAccent),

                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.green.withValues(alpha: 0.7),
                    child: const Center(
                      child: Text(
                        'Expanded Container',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                const CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/150?img=10',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            const Column(
              children: [
                Text(
                  'Flutter страница',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('работает');
        },

        child: const Icon(Icons.add),
      ),
    );
  }
}
