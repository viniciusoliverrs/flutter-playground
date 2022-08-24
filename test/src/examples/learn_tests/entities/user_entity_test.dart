import 'package:flutter_playground/src/examples/learn_tests/entities/user_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final user = UserEntity(1, 'John Doe', 'john@teste.com');
  test('Should create a user entity ', () {
    expect(user.id, 1);
    expect(user.name, 'John Doe');
    expect(user.email, 'john@teste.com');
  });

  test('Should create a user entity with copyWith', () {
    final userCopy = user.copyWith(id: 2, name: 'John Doe 2');
    expect(userCopy.id, 2);
    expect(userCopy.name, 'John Doe 2');
    expect(userCopy.email, user.email);
  });

  test('Should create a user entity with toMap', () {
    final userMap = user.toMap();
    expect(userMap['id'], user.id);
    expect(userMap['name'], user.name);
    expect(userMap['email'], user.email);
  });

  test('Should create a user entity with fromMap', () {
    final userMap = user.toMap();
    final userFromMap = UserEntity.fromMap(userMap);
    expect(userFromMap.id, user.id);
    expect(userFromMap.name, user.name);
    expect(userFromMap.email, user.email);
  });
}
