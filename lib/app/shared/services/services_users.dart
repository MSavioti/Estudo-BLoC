import 'package:dio/dio.dart';
import 'package:estudo_bloc/app/shared/models/user.dart';
import 'package:estudo_bloc/app/shared/repositories/repository_users.dart';

class UsersService {
  final _usersRepository = RepositoryUsersInstance.repository;

  Future<List<User>> getUsers() async {
    try {
      List<User> users = [];
      Response _result = await _usersRepository.getUsersData();
      if (_result.statusCode != 200) throw _result.statusMessage;
      print(_result.data);
      return users;
    } catch (e) {
      throw e;
    }
  }
}
