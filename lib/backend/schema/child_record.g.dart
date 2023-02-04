// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChildRecord> _$childRecordSerializer = new _$ChildRecordSerializer();

class _$ChildRecordSerializer implements StructuredSerializer<ChildRecord> {
  @override
  final Iterable<Type> types = const [ChildRecord, _$ChildRecord];
  @override
  final String wireName = 'ChildRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChildRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.score;
    if (value != null) {
      result
        ..add('score')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.streak;
    if (value != null) {
      result
        ..add('streak')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.updatedTime;
    if (value != null) {
      result
        ..add('updated_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
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
  ChildRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChildRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_of_birth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'streak':
          result.streak = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'updated_time':
          result.updatedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
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

class _$ChildRecord extends ChildRecord {
  @override
  final String? uid;
  @override
  final String? name;
  @override
  final String? dateOfBirth;
  @override
  final String? gender;
  @override
  final double? score;
  @override
  final int? streak;
  @override
  final DateTime? updatedTime;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChildRecord([void Function(ChildRecordBuilder)? updates]) =>
      (new ChildRecordBuilder()..update(updates))._build();

  _$ChildRecord._(
      {this.uid,
      this.name,
      this.dateOfBirth,
      this.gender,
      this.score,
      this.streak,
      this.updatedTime,
      this.createdTime,
      this.ffRef})
      : super._();

  @override
  ChildRecord rebuild(void Function(ChildRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChildRecordBuilder toBuilder() => new ChildRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChildRecord &&
        uid == other.uid &&
        name == other.name &&
        dateOfBirth == other.dateOfBirth &&
        gender == other.gender &&
        score == other.score &&
        streak == other.streak &&
        updatedTime == other.updatedTime &&
        createdTime == other.createdTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, uid.hashCode), name.hashCode),
                                dateOfBirth.hashCode),
                            gender.hashCode),
                        score.hashCode),
                    streak.hashCode),
                updatedTime.hashCode),
            createdTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChildRecord')
          ..add('uid', uid)
          ..add('name', name)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender)
          ..add('score', score)
          ..add('streak', streak)
          ..add('updatedTime', updatedTime)
          ..add('createdTime', createdTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChildRecordBuilder implements Builder<ChildRecord, ChildRecordBuilder> {
  _$ChildRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _dateOfBirth;
  String? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  double? _score;
  double? get score => _$this._score;
  set score(double? score) => _$this._score = score;

  int? _streak;
  int? get streak => _$this._streak;
  set streak(int? streak) => _$this._streak = streak;

  DateTime? _updatedTime;
  DateTime? get updatedTime => _$this._updatedTime;
  set updatedTime(DateTime? updatedTime) => _$this._updatedTime = updatedTime;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChildRecordBuilder() {
    ChildRecord._initializeBuilder(this);
  }

  ChildRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _name = $v.name;
      _dateOfBirth = $v.dateOfBirth;
      _gender = $v.gender;
      _score = $v.score;
      _streak = $v.streak;
      _updatedTime = $v.updatedTime;
      _createdTime = $v.createdTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChildRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChildRecord;
  }

  @override
  void update(void Function(ChildRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChildRecord build() => _build();

  _$ChildRecord _build() {
    final _$result = _$v ??
        new _$ChildRecord._(
            uid: uid,
            name: name,
            dateOfBirth: dateOfBirth,
            gender: gender,
            score: score,
            streak: streak,
            updatedTime: updatedTime,
            createdTime: createdTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
