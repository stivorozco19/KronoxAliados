import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'relation_user_company_record.g.dart';

abstract class RelationUserCompanyRecord
    implements
        Built<RelationUserCompanyRecord, RelationUserCompanyRecordBuilder> {
  static Serializer<RelationUserCompanyRecord> get serializer =>
      _$relationUserCompanyRecordSerializer;

  @nullable
  DocumentReference get idUser;

  @nullable
  DocumentReference get idEmpresa;

  @nullable
  String get rol;

  @nullable
  bool get isActive;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RelationUserCompanyRecordBuilder builder) =>
      builder
        ..rol = ''
        ..isActive = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('relation_user_company');

  static Stream<RelationUserCompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  RelationUserCompanyRecord._();
  factory RelationUserCompanyRecord(
          [void Function(RelationUserCompanyRecordBuilder) updates]) =
      _$RelationUserCompanyRecord;
}

Map<String, dynamic> createRelationUserCompanyRecordData({
  DocumentReference idUser,
  DocumentReference idEmpresa,
  String rol,
  bool isActive,
}) =>
    serializers.toFirestore(
        RelationUserCompanyRecord.serializer,
        RelationUserCompanyRecord((r) => r
          ..idUser = idUser
          ..idEmpresa = idEmpresa
          ..rol = rol
          ..isActive = isActive));

RelationUserCompanyRecord get dummyRelationUserCompanyRecord {
  final builder = RelationUserCompanyRecordBuilder()
    ..rol = dummyString
    ..isActive = dummyBoolean;
  return builder.build();
}

List<RelationUserCompanyRecord> createDummyRelationUserCompanyRecord(
        {int count}) =>
    List.generate(count, (_) => dummyRelationUserCompanyRecord);
