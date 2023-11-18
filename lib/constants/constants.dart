import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import '../controller/auth_controller.dart';
import '../views/screens/add_video_screen.dart';
import '../views/screens/search_screen.dart';
import '../views/screens/video_screen.dart';

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;
//Text
const String appName = "Tiktok Clone";
//Firbase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;
// Controllers
var authController = AuthController.instance;

//Pages
const pages = [
  VideoScreen(),
  SearchScreen(),
  AddVideoScreen(),
  Center(child: Text("Messages Screen")),
  Center(child: Text("Profile Screen")),
];
