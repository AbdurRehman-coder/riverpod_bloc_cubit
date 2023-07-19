

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bloc_state/ui/riverpod_practice/manager/riverpod_provider.dart';

class RiverpodBoringCounter extends ConsumerWidget {
  const RiverpodBoringCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('riverpod counter rebuild');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Boring Counter'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.minimize),
        ),
      ),
      body: Center(
        child: Text('Counter: ${ref.watch(counterNotifier)}',
        style: TextStyle(fontSize: 20),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
              onPressed: (){
                ref.read(counterNotifier.notifier).state++;
              },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
              onPressed: (){
                ref.read(counterNotifier.notifier).state--;
              },
            child: Icon(Icons.minimize),
          ),
          FloatingActionButton(
              onPressed: (){
                ref.refresh(counterNotifier);
              },
            child: Icon(Icons.restart_alt),
          )
        ],
      ),
    );
  }
}
