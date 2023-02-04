import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'child_record.g.dart';

abstract class ChildRecord implements Built<ChildRecord, ChildRecordBuilder> {
  static Serializer<ChildRecord> get serializer => _$childRecordSerializer;

  String? get uid;

  String? get name;

  @BuiltValueField(wireName: 'date_of_birth')
  String? get dateOfBirth;

  String? get gender;

  double? get score;

  int? get streak;

  @BuiltValueField(wireName: 'updated_time')
  DateTime? get updatedTime;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChildRecordBuilder builder) => builder
    ..uid = ''
    ..name = ''
    ..dateOfBirth = ''
    ..gender = ''
    ..score = 0.0
    ..streak = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('child');

  static Stream<ChildRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChildRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChildRecord._();
  factory ChildRecord([void Function(ChildRecordBuilder) updates]) =
      _$ChildRecord;

  static ChildRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChildRecordData({
  String? uid,
  String? name,
  String? dateOfBirth,
  String? gender,
  double? score,
  int? streak,
  DateTime? updatedTime,
  DateTime? createdTime,
}) {
  final firestoreData = serializers.toFirestore(
    ChildRecord.serializer,
    ChildRecord(
      (c) => c
        ..uid = uid
        ..name = name
        ..dateOfBirth = dateOfBirth
        ..gender = gender
        ..score = score
        ..streak = streak
        ..updatedTime = updatedTime
        ..createdTime = createdTime,
    ),
  );

  return firestoreData;
}
