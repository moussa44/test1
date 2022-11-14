import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:hive_flutter/hive_flutter.dart';
import 'main.dart';
import 'models/compte/compte.dart';
import 'myhome.dart';

 class ListCompte extends StatefulWidget {
  const ListCompte({Key? key}) : super(key: key);


  @override
  State<ListCompte> createState() => _ListCompteState();
}

class _ListCompteState extends State<ListCompte> {
  
  
 // late Box box;
/* @override
 void dispose(){
   Hive.close();
   super.dispose(); 
 }*/


 






  
  Widget _listeCompte(BuildContext context){
   
   //  Compte compte=box.get('box');
     
     return ValueListenableBuilder(
          valueListenable: Hive.box<Compte>('box').listenable(),
          builder: (context, Box<Compte> _comptesBox, _) {
            box = _comptesBox;
            //  List<String> item=[];
            //  item.add(valueListenable);
            return ListView.builder(
                itemCount: _comptesBox.values.length,
                itemBuilder: (BuildContext context, int index) {
                final compte = box.getAt(index);
         
              

                  return ListTile(
                    title: Text(compte.nom+'          '+compte.num+'        '+compte.sold.toString()),
                    subtitle: Text(compte.num),
                    trailing: Text(compte.num),
                    selected: true,
                    onLongPress: () => box.deleteAt(index),
                  );

                });
          });
    
     
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
