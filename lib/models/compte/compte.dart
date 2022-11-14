
import 'package:hive/hive.dart';

part 'compte.g.dart';
@HiveType(typeId: 0)
class Compte extends HiveObject {
   Compte(  this.num, this.nom, this.sold, );


  @HiveField(0)
  late String? num;

  @HiveField(1)
  late String? nom;

   @HiveField(2)
  late int? sold;

  // cle unique
 // String key()=> nom.hashCode.toString();
    

  
  
 



  




}