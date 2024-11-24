import 'package:flutter/material.dart';

class operaciones extends StatefulWidget {
  const operaciones({super.key});

  @override
  State<operaciones> createState() => _operacionesState();
}

class _operacionesState extends State<operaciones> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title:const Text('Operaciones'),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         
            Text(
              'Operaciones matematicas',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: (){
            Navigator.pop(context);
            }, child:const Text('regresar'))
          ],
        ),
      ),
    );
  }
}