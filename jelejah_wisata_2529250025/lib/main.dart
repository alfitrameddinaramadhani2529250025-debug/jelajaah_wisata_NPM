import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
}

class MainScreen extends StatelessWidget {
  const MainScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF1F3F8) ,
        appBar: AppBar(
          title: const Text('Jelajah Wisata'),
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white
          centerTitle: true,
          

        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child:Image.network(//images.unsplash.com/photo-1507842217343-583bb7270b66',
                width: double.infinity,
                height: 190,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 18),

            const Text(
              'Stone Garden',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
            const SizedBox(height: 12),

            Row(
              children: [
                Expanded(
                  child: infoCard(
                    Icons.star,
                    'Rating',
                    '4.5',
                    Colors.orange,
                  )
                )
                const SizedBox(width: 10),
                Expanded(
                  child: infoCard(
                    Icons.access_time,
                    'Jam Buka',
                    '06-17',
                    Colors.blueAccent,
                  )
                )
                const SizedBox(width: 10),
                Expanded(
                  child: infoCard(
                    Icons.money,
                    'Harga Tiket',
                    '30 ribu',
                    Colors.blueAccent,
                  )
                )
                
              ],
            )

            const SizedBox(height: ,)



          ],),
        ),
      ),
    );
  }
}
