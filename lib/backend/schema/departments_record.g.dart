// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DepartmentsRecord> _$departmentsRecordSerializer =
    new _$DepartmentsRecordSerializer();

class _$DepartmentsRecordSerializer
    implements StructuredSerializer<DepartmentsRecord> {
  @override
  final Iterable<Type> types = const [DepartmentsRecord, _$DepartmentsRecord];
  @override
  final String wireName = 'DepartmentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DepartmentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.managerName;
    if (value != null) {
      result
        ..add('manager_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numberOfEmployee;
    if (value != null) {
      result
        ..add('number_of_employee')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DepartmentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DepartmentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'manager_name':
          result.managerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_of_employee':
          result.numberOfEmployee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DepartmentsRecord extends DepartmentsRecord {
  @override
  final String? name;
  @override
  final String? managerName;
  @override
  final String? type;
  @override
  final int? numberOfEmployee;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DepartmentsRecord(
          [void Function(DepartmentsRecordBuilder)? updates]) =>
      (new DepartmentsRecordBuilder()..update(updates))._build();

  _$DepartmentsRecord._(
      {this.name,
      this.managerName,
      this.type,
      this.numberOfEmployee,
      this.createdAt,
      this.ffRef})
      : super._();

  @override
  DepartmentsRecord rebuild(void Function(DepartmentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DepartmentsRecordBuilder toBuilder() =>
      new DepartmentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DepartmentsRecord &&
        name == other.name &&
        managerName == other.managerName &&
        type == other.type &&
        numberOfEmployee == other.numberOfEmployee &&
        createdAt == other.createdAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), managerName.hashCode),
                    type.hashCode),
                numberOfEmployee.hashCode),
            createdAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DepartmentsRecord')
          ..add('name', name)
          ..add('managerName', managerName)
          ..add('type', type)
          ..add('numberOfEmployee', numberOfEmployee)
          ..add('createdAt', createdAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DepartmentsRecordBuilder
    implements Builder<DepartmentsRecord, DepartmentsRecordBuilder> {
  _$DepartmentsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _managerName;
  String? get managerName => _$this._managerName;
  set managerName(String? managerName) => _$this._managerName = managerName;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _numberOfEmployee;
  int? get numberOfEmployee => _$this._numberOfEmployee;
  set numberOfEmployee(int? numberOfEmployee) =>
      _$this._numberOfEmployee = numberOfEmployee;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DepartmentsRecordBuilder() {
    DepartmentsRecord._initializeBuilder(this);
  }

  DepartmentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _managerName = $v.managerName;
      _type = $v.type;
      _numberOfEmployee = $v.numberOfEmployee;
      _createdAt = $v.createdAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DepartmentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DepartmentsRecord;
  }

  @override
  void update(void Function(DepartmentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DepartmentsRecord build() => _build();

  _$DepartmentsRecord _build() {
    final _$result = _$v ??
        new _$DepartmentsRecord._(
            name: name,
            managerName: managerName,
            type: type,
            numberOfEmployee: numberOfEmployee,
            createdAt: createdAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
