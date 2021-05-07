import 'package:ant_pack_app/domain/entities/user.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final UserModel user;
  final Size padding;

  const UserCard({Key key, this.user, this.padding}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: padding.width * 2,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.all(10),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: padding.height * 0.11,
                      height: padding.height * 0.1,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  "assets/images/user.png")
                          )
                      )),
                ),
                Column(
                  children: [
                    Text(user.name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(user.username,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(user.email,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(user.phone,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(user.company.name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
