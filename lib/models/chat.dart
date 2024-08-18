import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Screens/welcome.dart';

class Chat {
  final String image;
  final String name;
  final String msg;
  final String date;
  final IconData icon;
  Chat({
    required this.image,
    required this.name,
    required this.msg,
    required this.date,
    required this.icon,
  });
}

//Global
List<Chat> chats = [
  Chat(
      image: "assets/photos/1128.jpg",
      name: "Armia gamal",
      msg: "Welcome",
      date: "now",
      icon: Icons.check_circle_rounded,
    ),

  Chat(
      image: "assets/photos/images (4).jpeg",
      name: "Hamw teykhaa",
      msg: "hi,bro",
      date: "5 min",
      icon: Icons.check_circle_rounded,
    ),

    Chat(
      image: "assets/photos/images (3).jpeg",
      name: "Ali Mohamed",
      msg: "Good evening",
      date: "22:00.Pm | Today",
      icon: Icons.check_circle_outlined,
    ),
    
    Chat(
      image: "assets/photos/images (2).jpeg",
      name: "Mariam Karem",
      msg: "What do you do?",
      date: "10:00.Am | Today",
      icon: Icons.check_circle_outlined,
    ),
    
    Chat(
      image: "assets/photos/images (1).jpeg",
      name: "Najeeb Safwat",
      msg: "Let`s go out",
      date: "3:00.Am | Yesterday",
      icon: Icons.check_circle_outlined,
    ),
    
    Chat(
      image: "assets/photos/DB302B1C-2D08-4BB8-8ED3-4F362D98F5A6.jpeg",
      name: "Maroo tufaahaa",
      msg: "Let`s go to the gym",
      date: "18:00.pm | Jul 25",
      icon: Icons.check_circle_rounded,
    ),
    
    Chat(
      image: "assets/photos/21-38-41-271153693_1049302562579265_460591486773867275_n.jpg",
      name: "Monica Mina",
      msg: "Waiting for you",
      date: "12:00.pm | Jul 24",
      icon: Icons.check_circle_rounded,
    ),
    
    Chat(
      image: "assets/photos/4bb25d55830f80cdb9015fc80d7cd194.jpg",
      name: "Omina Ahmed",
      msg: "Welcome",
      date: "15:00.pm | Jul 23",
      icon: Icons.check_circle_rounded,
    ),
    
    Chat(
      image: "assets/photos/learn-to-code.jpg",
      name: "Osama Ali",
      msg: "Hay",
      date: "19:00.pm | Jul 22",
      icon: Icons.check_circle_outlined,
    ),
    
    Chat(
      image: "assets/photos/images.jpeg",
      name: "Mirola Mostafa",
      msg: "Happy Birthday",
      date: "0.05.Am | Jul 20",
      icon: Icons.check_circle_outlined,
    ),
    
    Chat(
      image: "assets/photos/images (6).jpeg",
      name: "Sandy Nabel",
      msg: "Happy Birthday",
      date: "1.30.Am | Jul 20",
      icon: Icons.check_circle_outlined,
    ),
    
    Chat(
      image: "assets/photos/images (5).jpeg",
      name: "Ahmed Khaled",
      msg: "I coming now.Where are you? ",
      date: "11.00.Am | Jul 18",
      icon: Icons.check_circle_rounded,
    ),
];
