import 'package:alertapp_1/user_edit.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuario"),
      ),
      body: ListView(
        children: <Widget>[
          DrawerHeader(
            child:
            Column(
              children: <Widget>[

                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: Icon(Icons.account_circle_rounded,
                    ),
                  ),
                ),
              ],
            )
          ),
          Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Nombre del Usuario'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+569 9999 9999'),
                ),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text('correo@gmail.com'),
                ),
                Center(
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new UserEdit()),
                      );
                    },
                    child: Text('Editar'),

                  ),

                ),
              ]
          ),

        ],
      ),
    );
  }
}