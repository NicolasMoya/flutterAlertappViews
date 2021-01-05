import 'package:flutter/material.dart';
import 'user.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
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
                Text('Nombre del Usuario',
                  style: TextStyle(color: Colors.white),),
              ],
            ),

            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('Usuario',
              style: TextStyle( fontSize: 15)),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new User()),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configuración'),
            onTap: () => {Navigator.of(context).pop()},
          ),

        ],
      ),
    );
  }
}