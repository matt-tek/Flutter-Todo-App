// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class TodoDatabase extends _TodoDatabase
    with RealmEntity, RealmObjectBase, RealmObject {
  TodoDatabase(
    ObjectId id,
    String data,
    bool isDone,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'data', data);
    RealmObjectBase.set(this, 'isDone', isDone);
  }

  TodoDatabase._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get data => RealmObjectBase.get<String>(this, 'data') as String;
  @override
  set data(String value) => RealmObjectBase.set(this, 'data', value);

  @override
  bool get isDone => RealmObjectBase.get<bool>(this, 'isDone') as bool;
  @override
  set isDone(bool value) => RealmObjectBase.set(this, 'isDone', value);

  @override
  Stream<RealmObjectChanges<TodoDatabase>> get changes =>
      RealmObjectBase.getChanges<TodoDatabase>(this);

  @override
  TodoDatabase freeze() => RealmObjectBase.freezeObject<TodoDatabase>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(TodoDatabase._);
    return const SchemaObject(
        ObjectType.realmObject, TodoDatabase, 'TodoDatabase', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('data', RealmPropertyType.string),
      SchemaProperty('isDone', RealmPropertyType.bool),
    ]);
  }
}
