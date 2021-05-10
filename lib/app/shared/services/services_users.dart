import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:estudo_bloc/app/shared/models/user.dart';
import 'package:estudo_bloc/app/shared/repositories/repository_users.dart';

class UsersService {
  final _usersRepository = RepositoryUsersInstance.repository;

  Future<List<User>> getUsers() async {
    try {
      Response _result = await _usersRepository.getUsersData();
      if (_result.statusCode != 200) throw _result.statusMessage;
      final List<User> users = [];
      List<dynamic> data = jsonDecode(_result.data);
      data.forEach((i) {
        print(i);
      });
      return users;
    } catch (e) {
      throw e;
    }
  }
}
