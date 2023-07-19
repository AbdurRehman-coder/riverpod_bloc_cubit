

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_bloc_state/ui/riverpod_practice/riverpod_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('diff State Management'),
        // leading: IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.arrow_back_outlined),
        // ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => RiverpodHome()));
              },
              child: const Text('Riverpod'),
          ),
          ElevatedButton(
              onPressed: (){},
              child: const Text('Bloc'),
          ),
          ElevatedButton(
              onPressed: (){},
              child: const Text('Cubit'),
          )
        ],
      ),
    );
  }
}
