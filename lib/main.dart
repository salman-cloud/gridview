import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const GridView23(),
    );
  }
}

class GridView23 extends StatefulWidget {
  const GridView23({Key? key}) : super(key: key);

  @override
  State<GridView23> createState() => _GridView23State();
}

class _GridView23State extends State<GridView23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gridview'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: 4,
            itemBuilder:(context,index){
               return Container(
                 decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(18),
                   border: Border.all(
                     color: Colors.black,
                     width: 4,
                   )
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Center(

                     child: Column(
                       children: [
                         SizedBox(height: 20),
                         Container(
                           height: 100,
                           width: 100,
                           decoration: const BoxDecoration(
                             shape: BoxShape.circle,
                             color: Colors.blueAccent,
                           ),
                           child: Center(child: Text('hi')),
                         ),
                         Text('Hi my name is salman '),
                       ],
                     ),
                   ),

                 ),

               );
            },
        ),
      ),
    );
  }
}

