

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_bloc_state/repository/todo_repository.dart';

final counterNotifier = StateProvider<int>((ref) => 0);

final networkRepositoryProvider = StateProvider<NetworkRepository>((ref) => NetworkRepository());

final getTodosProvider = FutureProvider((ref) {
  return ref.watch(networkRepositoryProvider).getTodoList();
});