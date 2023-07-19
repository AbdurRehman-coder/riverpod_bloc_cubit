

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bloc_state/ui/riverpod_practice/manager/riverpod_provider.dart';

class RiverpodTodosScreen extends ConsumerWidget {
  const RiverpodTodosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoListData = ref.watch(getTodosProvider);
    return Scaffold(
      body: todoListData.when(
          data: (todoData) => ListView.builder(
            itemCount: todoData.length,
            itemBuilder: (context, index){
              final data = todoData[index];
              return Card(
                color: data['completed'] == false ? Colors.cyan : Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(data['title']),
                ),
              );
            },
          ),
          error: (error, _) => Center(
            child: Text('error: $error'),
          ),
          loading: () => Center(
            child: CupertinoActivityIndicator(),
          )),
    );
  }
}
