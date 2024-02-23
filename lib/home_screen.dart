import 'package:colorapp/color_screen.dart';
import 'package:flutter/material.dart';

import 'compnenet.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.5),
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: const Text('Color Screen'),

         ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(
          physics: BouncingScrollPhysics() ,
          crossAxisCount: 3,
          children: colorsList.map((colorItem) =>
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ColorScreen(colorItem)));
                },
                child: Container(
                            margin: EdgeInsets.only(top: 5, bottom: 10, right: 10, left: 10),
                            decoration: BoxDecoration(
                color: colorItem,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 5),
                    color: Colors.grey,
                    blurRadius: 5,
                  ),
                ],
                            ),
                          ),
              )).toList(),
        ),
      ),
    );
  }
}
