class User {
  final int id;
  final String email;
  final String password;

  User(this.id, this.email, this.password);
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'password': password,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'User{id: $id, email: $email, password: $password}';
  }
}
