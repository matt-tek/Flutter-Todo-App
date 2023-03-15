import 'package:realm/realm.dart';

part 'database.g.dart';

@RealmModel()
class _TodoDatabase {
  @PrimaryKey()
  late ObjectId id;

  late String data;
  late bool isDone;
}