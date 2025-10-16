import 'package:flutter/material.dart';

void main() => runApp(const AirlineApp());

class AirlineApp extends StatelessWidget {
  const AirlineApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AirlineHomePage(),
    );
  }
}

class AirlineHomePage extends StatelessWidget {
  const AirlineHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Airlines"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.blueAccent.withValues(alpha: 0.1),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa8rPTh1qXRZ0iB39FAxIXbMMgmEbgpu6Q-Q&s',
                  ),
                ),
                const Text(
                  'Добро пожаловать в SkyFly ✈️',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Популярные направления",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),

                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _destinationCard(
                        "Париж",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMS9tkui0dIJVBfQsJU7A5AY386VGWdYyvSQ&s",
                      ),
                      _destinationCard(
                        "Токио",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSbV4bPVYbh0sSmr7RVJ_KBeBSgDoeIL_LPw&s",
                      ),
                      _destinationCard(
                        "Нью-Йорк",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_xip3rGNvNMoZqj1eP0_VuHMBpumVgaQWug&s",
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Почему выбирают нас:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("• Современные самолёты 🛫"),
                        Text("• Удобное онлайн-бронирование 📱"),
                        Text("• Программа лояльности SkyBonus 💎"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

     
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          print("123");
        },
        child: const Icon(Icons.search),
      ),
    );
  }

  Widget _destinationCard(String city, String imageUrl) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.all(6),
          color: Colors.black.withValues(alpha: 0.5),
          child: Text(
            city,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
