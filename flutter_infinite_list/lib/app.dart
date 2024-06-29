import 'package:flutter/material.dart';

import 'posts/posts.dart';

class App extends MaterialApp{
  const App({super.key}) :super(home: const PostsPage());
}