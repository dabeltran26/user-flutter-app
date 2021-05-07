
import 'package:ant_pack_app/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable{
  const HomeState();

  @override
  List<Object> get props => [];
}

class InitState extends HomeState{}

class LoadState extends HomeState{}

class DataState extends HomeState{
  final List<UserModel> users;
  DataState(this.users);
}
