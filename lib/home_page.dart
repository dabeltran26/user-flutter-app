
import 'package:ant_pack_app/bloc/home_bloc.dart';
import 'package:ant_pack_app/bloc/home_event.dart';
import 'package:ant_pack_app/bloc/home_state.dart';
import 'package:ant_pack_app/domain/entities/user.dart';
import 'package:ant_pack_app/user_detail_page.dart';
import 'package:ant_pack_app/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeBloc _bloc = HomeBloc();

  @override
  void initState() {
    _bloc.add(InitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context , HomeState state){

          if(state is DataState){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...state.users.map((user) => GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(
                            context,
                            UserDetailPage.routeName,
                            arguments: user
                          );
                        },
                        child: UserCard(user: user,padding: padding,))),
                  ],
                ),
              ),
            );
          }

          if(state is LoadState){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Container();
        },
      ),
    );
  }
}
