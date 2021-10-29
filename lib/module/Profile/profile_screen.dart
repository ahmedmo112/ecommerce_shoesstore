import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children:[
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.person_outline,size: 50,color: Colors.grey,)
              ),
              TextButton(onPressed: (){}, child: Text('log in')),
              Text('|'),
              TextButton(onPressed: (){}, child: Text('Sign up'))
            ],

          ),
          SizedBox(height: 40,),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Last orders'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
          ),
        ],
      ),
    );
  }
}