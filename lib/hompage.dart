import 'package:assignment/accounts.dart';
import 'package:assignment/help.dart';
import 'package:assignment/home.dart';
import 'package:assignment/inventory.dart';
import 'package:flutter/material.dart';


class Homen extends StatefulWidget {
  const Homen({Key? key}) : super(key: key);

  @override
  _HomenState createState() => _HomenState();
}

class _HomenState extends State<Homen> {
  int _currentindex=0;
  final List<Widget> _children =[
   home(),
    inventory(),
    help(),
    Account()
  ];
  void onTappedBar(int index){
    setState(() {
      _currentindex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentindex],
        bottomNavigationBar: Container(
           decoration: BoxDecoration(                                                   
    borderRadius: BorderRadius.only(                                           
      topRight: Radius.circular(30), topLeft: Radius.circular(30)),            
    boxShadow: [                                                               
      BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 7),       
    ],                                                                         
  ),                                                                           
  child: ClipRRect(                                                            
    borderRadius: BorderRadius.only(                                           
    topLeft: Radius.circular(25.0),                                            
    topRight: Radius.circular(25.0),                                           
    ),       
          child: BottomNavigationBar(
            currentIndex: _currentindex,
          type: BottomNavigationBarType.fixed,
          backgroundColor:Colors.white,
          selectedItemColor: Color.fromARGB(255, 255, 0, 0),
          unselectedItemColor: Colors.grey,
          // unselectedFontSize: 13,
          // selectedFontSize: 18,
          onTap: onTappedBar,
          
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'home'

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.live_help_sharp),
                label: 'Get Help'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.inventory),
                label:'Inventory'
            ),
             BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label:'account'
            )
          ]

    ),
        ),
        )
        );
  }
}
