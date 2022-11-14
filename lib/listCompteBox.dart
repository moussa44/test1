import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:hive_flutter/hive_flutter.dart';
import 'main.dart';
import 'models/compte/compte.dart';
import 'myhome.dart';

class ListCompteBox extends StatefulWidget {
  const ListCompteBox({Key? key}) : super(key: key);

  @override
  State<ListCompteBox> createState() => _ListCompteBoxState();
}

class _ListCompteBoxState extends State<ListCompteBox> {
  
 /* 
 // late Box box;
 @override
 void dispose(){
   Hive.close();
   super.dispose(); 
 }
*/

 

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];


  
  Widget _listeCompte(BuildContext context){
   
     //Compte compte=box.get('box');
     
     return  ListView.separated(
                padding: const EdgeInsets.all(8),
              //  alignment: Alignment.bottomLeft,
                dragStartBehavior: DragStartBehavior.start,
                itemCount:box.length,// entries.length,
                itemBuilder: (BuildContext context, int index) {
        
                  final compte = box.getAt(index);
                  return Container(
                    
                   // padding: EdgeInsets.all(8.0),
                    //alignment: Alignment.bottomLeft,
                    

                    alignment:Alignment.bottomLeft,
                    height: 50,
                  //  color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('${compte.nom}     ${compte.num}  ${compte.sold.toString()}  ')),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
              );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('List des Compte')),
        body: Stack(
            // alignment:al
            children: [
             _listeCompte(context),
            ]));
  }
}
