
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  //const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
 bool cksalada = false;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Exemplo checkbox"),
      ),
      body: Container(
        padding: EdgeInsets.all(80),
        child: Column(
          children: [

            Text("X-SALADA"),
            Checkbox(
              value:cksalada,
              activeColor: Colors.blue,
              onChanged: (bool valor){
                setState(() {
                  cksalada = valor;
                });
              },
            ),


            SizedBox(height: 50),

            ElevatedButton(
              onPressed: (){
                if(cksalada){
                  print("O checkbox foi Selecionado");
                }else{
                  print("O checkbox não foi Selecionado");
                }
              }, 
              child: Text("Exibir")
            )
          ],
        ),
      ),
    );
  }
}