import 'package:postgres/postgres.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  late PostgreSQLConnection _connection;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<void> connect() async {
    _connection = PostgreSQLConnection(
      'localhost', // reemplaza con tu host
      5432, // puerto
      'user_manage', // nombre de tu base de datos
      username: 'postgres', // tu usuario
      password: 'lazy23', // tu contraseña
    );
    await _connection.open();
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    List<List<dynamic>> results = await _connection.query('SELECT fist_name, last_name, edad, email FROM sportProfile_user');
    return results.map((row) {
      return {
        'last_name': row[0],
        'firts_name': row[1],
        'Edad': row[2],
        'email': row[3],
      };
    }).toList();
  }

  Future<void> close() async {
    await _connection.close();
  }
}
