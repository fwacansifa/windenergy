import 'package:equatable/equatable.dart';

abstract class Resultat extends Equatable {}

class Succes<T> extends Resultat {
  T valeur;
  int age = 0;
  Succes(this.valeur);

  @override
  List<Object?> get props => [valeur];
}

class Echec extends Resultat {
  String message;
  Echec({this.message = ""});

  @override
  List<Object?> get props => [message];
}

typedef FutureResultat = Future<Resultat>;
