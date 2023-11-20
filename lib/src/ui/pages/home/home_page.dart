import 'package:flutter/material.dart';
import 'widgets/List_view_widget.dart';
import 'widgets/list_tile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      // ignore: prefer_const_constructors
      drawer: NavigationDrawer(
        children: const [],
      ),
      body: const ListViewWidget(),

    );

     
   
   
  }
}
