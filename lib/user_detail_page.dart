import 'package:ant_pack_app/domain/entities/user.dart';
import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  static const routeName = 'UserDetail';

  @override
  Widget build(BuildContext context) {
    final UserModel args = ModalRoute.of(context).settings.arguments;
    final padding = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('User Detail'),
        elevation: 0,
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 16),
            width: padding.width,
            height: padding.height/2.5,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(32),
                  bottomLeft: Radius.circular(32)
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: padding.width*0.4,right: padding.width*0.3),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                                "assets/images/user.png")
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: padding.width*0.4,right: padding.width*0.3,top: 5),
                  child: Text("ID:"+args.id.toString(),
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(args.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(args.username,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(args.email,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: padding.height/3,
            padding: EdgeInsets.all(42),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on_outlined, color: Colors.grey,),
                        SizedBox(width: 15,),
                        Text(args.address.street + '' + args.address.suite + '' + args.address.city,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone, color: Colors.grey,),
                        SizedBox(width: 15,),
                        Text(args.phone,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.computer, color: Colors.grey,),
                        SizedBox(width: 15,),
                        Text(args.website,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.store, color: Colors.grey,),
                        SizedBox(width: 15,),
                        Text(args.company.name,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
