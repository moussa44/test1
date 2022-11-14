import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:hive_flutter/hive_flutter.dart';
import 'controller/compteController.dart';
import 'main.dart';
import 'models/compte/compte.dart';
import 'myhome.dart';

class ListCompteBoxGenerate extends StatefulWidget {
  const ListCompteBoxGenerate({Key? key}) : super(key: key);

  @override
  State<ListCompteBoxGenerate> createState() => _ListCompteBoxGenerateState();
}

class _ListCompteBoxGenerateState extends State<ListCompteBoxGenerate> {
  /* 
 // late Box box;
 @override
 void dispose(){
   Hive.close();
   super.dispose(); 
 }
*/
 // late String? nom;

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
 

  //final CompteController controller = Get.find();

  Widget _listeCompte2(BuildContext context) {
    return Column(
        children: List.generate(box.length, (int index) {
        Compte compte = box.getAt(index);
        Get.put(CompteController);
        CompteController compteController = Get.find();
     
      return Column(children: [
        Row(
          children: [
            Padding(
                child: Row(children: [
                  Text(compte.nom.toString()),
                   const SizedBox(width:200,height:50),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          box.deleteAt(index);
                        });
                      },
                //      const SizedBox(width: 20, height: 20,),
                      icon: const Icon(Icons.delete)),
                      const SizedBox(width:40,height: 40,),
                      IconButton(
                      onPressed: () {

                        compteController.nameController=box.getAt(index);
                        Get.to(MyHome());
                        /*setState(() {
                          //box.add(Compte(GetBuilder<CompteController>(builder: (controller)=>Text('${controller.conter}') ),, _nameController.text, int.parse(_soldConttroller.text)));
                        });*/
                      },
                //      const SizedBox(width: 20, height: 20,),
                      icon: const Icon(Icons.edit)),
                     
                ]),
                padding: const EdgeInsets.only(left: 50))
          ],
        )

        //const SizedBox(width:20,height: 20,),
      ]);
    }));
  }

  Widget _listeCompte(BuildContext context) {
    //Compte compte=box.get('box');

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      //  alignment: Alignment.bottomLeft,
      dragStartBehavior: DragStartBehavior.start,
      itemCount: box.length, // entries.length,
      itemBuilder: (BuildContext context, int index) {
        final compte = box.getAt(index);
        return Container(
          alignment: Alignment.bottomLeft,
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(
              child: Text(
                  '${compte.nom}    ${compte.num}  ${compte.sold.toString()}  ')),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('List des Compte')),
        body: Align(
          // alignment:al
          child: _listeCompte2(context),
          //   ListView( _listeCompte2(context))
        ));
  }
}
