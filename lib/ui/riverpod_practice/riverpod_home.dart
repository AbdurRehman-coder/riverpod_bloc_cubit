

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_bloc_state/ui/riverpod_practice/riverpod_counter_app.dart';
import 'package:riverpod_bloc_state/ui/riverpod_practice/riverpod_todos_screen.dart';

class RiverpodHome extends StatefulWidget {
  const RiverpodHome({Key? key}) : super(key: key);

  @override
  State<RiverpodHome> createState() => _RiverpodHomeState();
}

class _RiverpodHomeState extends State<RiverpodHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => RiverpodBoringCounter()));

            },
            child: const Text('Counter App'),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RiverpodTodosScreen()));
            },
            child: const Text('RestFul Api App'),
          ),
        ],
      ),
    );
  }
}
