import 'package:flutter/material.dart';



void main() {

  runApp(const MyApp());

}



class MyApp extends StatelessWidget {

  const MyApp({super.key});



  @override

  Widget build(BuildContext context) {

    return const MaterialApp(

      debugShowCheckedModeBanner: false,

      home: ProfileScreen(),

    );

  }

}



class ProfileScreen extends StatelessWidget {

  const ProfileScreen({super.key});



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(

        backgroundColor: Colors.white,

        elevation: 0,

        leading: IconButton(

          icon: const Icon(Icons.arrow_back, color: Colors.black),

          onPressed: () {},

        ),

        actions: [

          IconButton(

            icon: const Icon(Icons.edit_note, color: Colors.teal, size: 28),

            onPressed: () {},

          ),

          const SizedBox(width: 8),

        ],

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Ảnh đại diện dạng tròn

            const CircleAvatar(

              radius: 60,

              backgroundImage: NetworkImage('https://i.pravatar.cc/300'),

            ),

            const SizedBox(height: 24),

            // Họ và tên

            const Text(

              'Nguyễn Đức Trung',

              style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.bold,

                color: Colors.black87,

              ),

            ),

            const SizedBox(height: 8),

            // Mã số sinh viên

            const Text(

              '054206006852',

              style: TextStyle(

                fontSize: 16,

                color: Colors.grey,

              ),

            ),

          ],

        ),

      ),

    );

  }

}