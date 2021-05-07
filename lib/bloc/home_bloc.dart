import 'package:ant_pack_app/bloc/home_event.dart';
import 'package:ant_pack_app/bloc/home_state.dart';
import 'package:ant_pack_app/domain/entities/user.dart';
import 'package:ant_pack_app/domain/user_controller.dart';
import 'package:bloc/bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{

  UserController userController = UserController();

  @override
  HomeState get initialState => InitState();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event)  async*{

    List<UserModel> users = [];

    if(event is InitEvent){
      yield LoadState();
      users = await userController.getUsers();
      yield DataState(users);
    }

  }
}