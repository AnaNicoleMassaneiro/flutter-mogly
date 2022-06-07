import 'package:mobx/mobx.dart';

import 'models/user.dart';

class UserList = _UserList with $UserList;

class $UserList {

}

abstract class _UserList with Store {
  @observable
  List<User> items = [];

  @action
  void changeUser(String name) {
    name = name;
  }

  @action
  void deleteUser(id) {
    items.removeAt(id);
  }

  @action
  void addUser(User user) {
    items.add(user);
  }

  UserList userList = UserList();
}