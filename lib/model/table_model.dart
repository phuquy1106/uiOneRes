class UserData {
  final int id;
  final String name;
  final String email;
  UserData(this.id, this.name, this.email);
}

final List<UserData> userDataList = List.generate(
  20,
  (index) =>
      UserData(index + 1, 'User ${index + 1}', 'user${index + 1}@example.com'),
);
