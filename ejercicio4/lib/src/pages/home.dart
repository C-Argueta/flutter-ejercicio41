import 'package:ejercicio4/src/pages/operaciones.dart';
import 'package:ejercicio4/src/pages/operaciones2.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                leading: Image.network('https://picsum.photos/250?image=9'),
                title: const Text(
                  'cripto',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onTap: (){
                   Navigator.pushNamed(context, '/cripto');

                },
              ),
            ), 
             const SizedBox(height: 10,),
            ElevatedButton(onPressed:(){
             // Navigator.push(
               // context, 
               // MaterialPageRoute(builder: (context)=> operaciones()));
               Navigator.pushNamed(context, '/operaciones');
            }, 
            child: const Text('operaciones')),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed:(){
               //Navigator.push(
                //context, 
                //MaterialPageRoute(builder: (context)=> operaciones2()));
                Navigator.pushNamed(context, '/operaciones2');
            }, 
            child: const Text('operaciones 2')),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }

}
