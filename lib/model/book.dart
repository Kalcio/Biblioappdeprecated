class Book {
  int? id;
  String? name;
  String? autor;
  String? editorial;
  String? year;
  String? isbn;

  bookMap() {
    var mapping = <String, dynamic>{};
    mapping['id'] = id ?? null;
    mapping['name'] = name!;
    mapping['autor'] = autor!;
    mapping['editorial'] = editorial!;
    mapping['year'] = year!;
    mapping['isbn'] = isbn!;

    return mapping;
  }
}
