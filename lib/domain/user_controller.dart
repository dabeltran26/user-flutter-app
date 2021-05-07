
import 'package:ant_pack_app/domain/entities/user.dart';
import 'package:ant_pack_app/domain/services/user_service.dart';

class UserController{
  UserService userService = UserService();

  Future<List<UserModel>> getUsers() async{
    var data = await userService.getUsers();
    List<UserModel> users = List<UserModel>.generate(data.length,(e) => UserModel.fromJson(data[e]));
    return users;
  }
}