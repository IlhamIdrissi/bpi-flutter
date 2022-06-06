



import 'package:bpi_exam_flutter/model/adherent_model.dart';

class AdherentRepository{
  List<Adherent> adherents=[
    Adherent(id_adherent : 1,nom : "Ahmed", prenom : "AH", email : "Ahmed@gmail.com", tel : "06 11 11 11 11"),
    Adherent(id_adherent : 2,nom : "Asmaa", prenom : "AS", email : "Asmaa@gmail.com", tel : "06 22 22 22 22"),
    Adherent(id_adherent : 3,nom : "Badr", prenom : "BA", email : "Badr@gmail.com", tel : "06 33 33 33 33"),
    Adherent(id_adherent : 4,nom : "Khadija", prenom : "KH", email : "Khadija@gmail.com", tel : "06 44 44 44 44"),
    Adherent(id_adherent : 5,nom : "Said", prenom : "SA", email : "Said@gmail.com", tel : "06 55 55 55 55"),
    Adherent(id_adherent : 6,nom : "Soukaina", prenom : "SO", email : "Soukaina@gmail.com", tel : "06 66 66 66 66"),
  ];


  Future<List<Adherent>> allAdherents()async {
    var future = await Future.delayed(Duration(seconds: 1));
    return adherents;
  }


  Future<String> deleteAdherent(int id)async {
    var future = await Future.delayed(Duration(seconds: 1));
    Adherent adherent = adherents.where((element) => element.id_adherent==id).first;
    adherents.remove(adherent);
    return "L'aherent que vous avez selectionner a était supprimé";
  }


}