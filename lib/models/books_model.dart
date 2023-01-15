import 'package:biblioapp/models/model.dart';

class BookModel extends Model {
  static String table = "books";

  int? id;
  String name;
  String? autor;
  String? editorial;
  int? year;
  int? isbn;
  String? image;

  BookModel({
    this.id,
    required this.name,
    required this.autor,
    this.editorial,
    this.year,
    this.isbn,
    this.image,
  });

  static BookModel fromMap(Map<String, dynamic> json) {
    return BookModel(
      id: json['id'],
      name: json['name'].toString(),
      autor: json['autor'].toString(),
      editorial: json['editorial'].toString(),
      year: json['year'],
      isbn: json['isbn'],
      image: json['iamge'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'id': id,
      'name': name,
      'autor': autor,
      'editorial': editorial,
      'year': year,
      'isbn': isbn,
      'image': image,
    };

    if (id != null) {
      map['id'] = id;
    }

    return map;
  }
}
