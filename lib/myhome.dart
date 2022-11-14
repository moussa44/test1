import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/compteController.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:flutter/Get.dart';

import 'listCompte.dart';
import 'listCompteBox.dart';
import 'listCompteBoxGenerate.dart';
import 'main.dart';
import 'models/compte/compte.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  

  //late final Box box;

   /*
 late String nom;
  late int sold;
  late String num;
  */

    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];
  //bool enabled_f = true;

  _addCompte() async {
    
   //  box.put('box',Compte(_numController.text, _nameController.text, int.parse(_soldConttroller.text)));
     box.add(Compte(compteController..nu _numController.text, _nameController.text, int.parse(_soldConttroller.text)));
    print('insered');

  }

  
  @override
  Widget build(BuildContext context) {

     //   Get.put(CompteController);
     //   CompteController compteController = Get.find();
     

    return Scaffold(
        appBar: AppBar(
          title: Text('Formation Hive'),
        ),
        body: Stack(
          children:[ 
           
            Container(
            width: 400,
            height: 400,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Center(
              child: Column(children: [
                Center(
                  child: TextField(
                    controller: _nameController,
                    //  obscureText: true,  // etoile
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                  //    nom=compteController.name;
                      _nameController.text=compteController.name;
                      labelText: 'Name ',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    // onChanged:(text){setState((){name=text;}); },
                    onSubmitted: (text) {
                      setState(() {
                        name = text;
                      });
                    },
                    // enabled:enabled_f,
                    autocorrect: true,
                    cursorColor: Colors.red,
                    maxLength: 20,
                    // autofillHints: ['merci','mer'],
                  ),
                ),
                Center(
                  child: TextField(
                    controller: compteController.soldController,
                    //  obscureText: true,  // etoile
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Sold ',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    // onChanged:(text){setState((){name=text;}); },
                    onSubmitted: (text) {
                      setState(() {
                        //compteController.soldController = text as int;
                      });
                    },
                    //enabled:enabled_f,
                    autocorrect: true,
                    cursorColor: Colors.red,
                    maxLength: 20,
                    // autofillHints: ['merci','mer'],
                  ),
                ),
                Center(
                  child: TextField(
                    controller: _numController,
                    //  obscureText: true,  // etoile
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      labelText: 'Num ',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    // onChanged:(text){setState((){name=text;}); },
                    onSubmitted: (text) {
                      setState(() {
                        num = text;
                      });
                    },
                    // enabled:enabled_f,
                    autocorrect: true,
                    cursorColor: Colors.red,
                    maxLength: 20,
                    // autofillHints: ['merci','mer'],
                  ),
                ),
               // Spacer(),
                MaterialButton(
                  onPressed: () {
                    _addCompte();
                    setState(() {
                      _numController.clear();
                      _soldConttroller.text = '0';
                      _nameController.clear();
                    });
                    //  print('insered');
                  },
                  child: const Text('Save'),
                  color: Colors.red,
                ),
            //    Spacer(),
                MaterialButton(
                  onPressed: () {
                    // _listCompte();
                    // list1();
                    Get.to(ListCompte());
                  
                  },
                  child: Text('Read'),
                  color: Colors.red,
                ),
                 MaterialButton(
                  onPressed: () {
                    // _listCompte();
                    // list1();
                    Get.to(ListCompteBox());
                  
                  },
                  child: Text('Read'),
                  color: Colors.red,
                ),
                 MaterialButton(
                  onPressed: () {
                    // _listCompte();
                    // list1();
                    Get.to(ListCompteBoxGenerate());
                  
                  },
                  child: Text('Read'),
                  color: Colors.red,
                ),
               // listCompteBoxGenerate
              ]),
            ),
          ),
            

          ]
        ));
  }
}
