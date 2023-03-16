import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter_clone/features/post/screen/add_post_screen.dart';
import 'package:instagram_flutter_clone/features/home/screen/feed_screen.dart';
import 'package:instagram_flutter_clone/features/profile/screen/profile_screen.dart';
import 'package:instagram_flutter_clone/features/search/screen/search_screen.dart';

const webScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications'),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
