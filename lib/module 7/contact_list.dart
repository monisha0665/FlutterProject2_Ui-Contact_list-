
import 'dart:ffi';

import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
   ContactList({super.key});
  final List<Map<String,dynamic>>users=[
  {
  'name':'Monisha',
  'phone':'037457282'

  },
  {
  'name':'Nafisa',
  'phone':'0986578990'

  },
  {
  'name':'Jannat',
  'phone':'0135690087'

  },
  {
  'name':'Nuva',
  'phone':'01256895433'

  },
    {
      'name':'Nawfat',
      'phone':'0134778989'

    },
    {
      'name':'Tasnia',
      'phone':'037457282'

    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Contact List',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
      SizedBox(height: 12,),
      TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Number',
          border: OutlineInputBorder(),
        ),

      ),
      SizedBox(height: 13,),
      SizedBox(
        width: 500,
        height: 50,
        child: ElevatedButton(
            onPressed:(){},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
        ),
      ),
          child: Text('Add',style:TextStyle(fontSize: 17),),
        ),
      ),
      SizedBox(height: 20,),

      Expanded(
          child:ListView.builder(
        itemCount: users.length,
          itemBuilder:(context,index){
          return
              Card(
                child: ListTile(
                  title: Text(users[index]['name'],style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                  subtitle: Text(users[index]['phone']),
                  leading: Icon(Icons.person,color: Colors.brown,size: 32,),

                  trailing: Icon(Icons.call,color: Colors.blue),
                ),
                );
               }
          ),
      ),

     ],
        ),
    ),
    );
  }
}
