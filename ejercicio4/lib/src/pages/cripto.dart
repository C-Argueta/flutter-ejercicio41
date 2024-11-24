import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cripto extends StatefulWidget {
  const Cripto({super.key});

  @override
  State<Cripto> createState() => _CriptoState();
}

class _CriptoState extends State<Cripto> {
 String criptoinfo='';
 String divisa='usd';
 List<String> divisas =<String>['usd','eur','gbp'];

 @override
 void initState(){
  super.initState();
  obtenerdata();
 }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title:const Text('Consulta cripto'),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'selecione la divisa a consultar',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            _combo(),
              Text(
        divisa,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
             criptoinfo.isNotEmpty? 'precio del bitcoin: \$$criptoinfo':'validando..',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
            Navigator.pop(context);
            }, child:const Text('regresar'))
          ],
        ),
      ),
    );
  }
  Future<void> obtenerdata() async{
    final reponse=
              await http.get(Uri.parse('https://api.coingecko.com/api/v3/coins/bitcoin'));
    if(reponse.statusCode==200){
     setState(() {
       criptoinfo= jsonDecode(reponse.body)['market_data']['current_price'][divisa].toString();
     });
    }
    else{
      setState(() {
        criptoinfo='error al obtener la data';
      });
    }
  }
  Widget _combo(){
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        Expanded(
          child: DropdownButton(
          value: divisa,
          items: divisas.map<DropdownMenuItem<String>>((String valor){
             return DropdownMenuItem<String>(
              value: valor,
              child: Text(valor),
             );
          
          }).toList(),
          onChanged: (opt){
            setState(() {
              divisa=opt!;
              obtenerdata();
            });
          
          }),
        ),
      ],
    );
  }
}