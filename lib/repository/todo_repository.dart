import 'dart:convert';

import 'package:http/http.dart';

class NetworkRepository{

  Client client = Client();


  Future<List<dynamic>> getTodoList() async{

    try{
      final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
      if(response.statusCode == 200){
        List<dynamic> todoList = json.decode(response.body);

        return todoList;
      }else{
        return [];
      }
    }catch(e){
      print('error on todo list getting: $e');
      return [];
    }
  }
}