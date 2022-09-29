class User {
  final String name, email, password;
  final int id;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });
}

List<User> users = [
  User(id: 0,name: 'Алексей', email: 'pochta@po.com', password: '12345678')
];
