import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'controller/compteController.dart';
import 'models/compte/compte.dart';
import 'myhome.dart';

late Box box;
Future<void> main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  final dir=await getApplicationDocumentsDirectory();
  
  await Hive.initFlutter(dir.path);
  
  Hive.registerAdapter(CompteAdapter());
  box = await Hive.openBox<Compte>('box');
  
        Get.put(CompteController);
        CompteController compteController = Get.find();
  
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      
    );
  }
}