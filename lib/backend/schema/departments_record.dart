import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'departments_record.g.dart';

abstract class DepartmentsRecord
    implements Built<DepartmentsRecord, DepartmentsRecordBuilder> {
  static Serializer<DepartmentsRecord> get serializer =>
      _$departmentsRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'manager_name')
  String? get managerName;

  String? get type;

  @BuiltValueField(wireName: 'number_of_employee')
  int? get numberOfEmployee;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DepartmentsRecordBuilder builder) => builder
    ..name = ''
    ..managerName = ''
    ..type = ''
    ..numberOfEmployee = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('departments');

  static Stream<DepartmentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DepartmentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DepartmentsRecord._();
  factory DepartmentsRecord([void Function(DepartmentsRecordBuilder) updates]) =
      _$DepartmentsRecord;

  static DepartmentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDepartmentsRecordData({
  String? name,
  String? managerName,
  String? type,
  int? numberOfEmployee,
  DateTime? createdAt,
}) {
  final firestoreData = serializers.toFirestore(
    DepartmentsRecord.serializer,
    DepartmentsRecord(
      (d) => d
        ..name = name
        ..managerName = managerName
        ..type = type
        ..numberOfEmployee = numberOfEmployee
        ..createdAt = createdAt,
    ),
  );

  return firestoreData;
}
