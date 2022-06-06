
import 'dart:math';

import '../model/livre_model.dart';

class LivreRepository{
  List<Livre> livres=[
    Livre(id_livre : 1,isbn : "liver1",titre : "titre1",auteur : "auteur1", anne_publication : DateTime.now().toString(),nb_exemplaires : 1,prix :1.1),
    Livre(id_livre : 2,isbn : "liver2",titre : "titre2",auteur : "auteur2", anne_publication : DateTime.now().toString(),nb_exemplaires : 2,prix :2.2),
    Livre(id_livre : 3,isbn : "liver3",titre : "titre3",auteur : "auteur3", anne_publication : DateTime.now().toString(),nb_exemplaires : 3,prix :3.3),
    Livre(id_livre : 4,isbn : "liver4",titre : "titre4",auteur : "auteur4", anne_publication : DateTime.now().toString(),nb_exemplaires : 4,prix :4.4),
    Livre(id_livre : 5,isbn : "liver5",titre : "titre5",auteur : "auteur5", anne_publication : DateTime.now().toString(),nb_exemplaires : 5,prix :5.5),
  ];


  Future<List<Livre>> allLivres()async {
    var future = await Future.delayed(Duration(seconds: 1));
      return livres;
  }

  Future<String> deleteLivre(int id)async {
    var future = await Future.delayed(Duration(seconds: 1));
    Livre livre = livres.where((element) => element.id_livre==id).first;
    livres.remove(livre);
    return "Le livre que vous avez selectionner a était supprimé";
  }

  Future<List<Livre>> findLivre(String kw)async {
    var future = await Future.delayed(Duration(seconds: 1));
    return livres.where((element) => element.titre==kw).toList();
  }



  }