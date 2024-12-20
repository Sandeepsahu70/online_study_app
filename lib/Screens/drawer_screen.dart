import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [

          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blue, Colors.green]),
            ),
            accountName: Text('SANDEEP TELI'),
            accountEmail: Text('MCA student'),
            currentAccountPicture: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images1.png"),
            ),
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: Icon(Icons.menu_book_sharp,size: 28,color: Colors.blue.shade900,),
            title: Text('Courses',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            onTap: () {},
            // enabled: false,
            selected: true,
          ),
          ListTile(
            leading: Icon(Icons.assignment,size: 28,color: Colors.blue.shade900,),
            title: Text('Assignment',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(Icons.trending_up,size: 28,color: Colors.blue.shade900,),
            title: Text('Progress',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(Icons.my_library_books_outlined,size: 28,color: Colors.blue.shade900,),
            title: Text('Reports',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(Icons.picture_in_picture_alt,size: 28,color: Colors.blue.shade900,),
            title: Text('Blogs',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          Divider(thickness: 1.0),
          ListTile(
            leading: Icon(Icons.help_outline_outlined),
            title: Text('Help'),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: Text(
              'Logout Account ',
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              print('Pressed');
            },
            enabled: false,
            // selected: true,
          ),
          Divider(thickness: 1.0),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Icon(Icons.close),
                title: Text('Close'),
                onTap: () {
                  Navigator.of(context).pop();
                  print('Pressed');
                },
                // enabled: false,
                selected: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
