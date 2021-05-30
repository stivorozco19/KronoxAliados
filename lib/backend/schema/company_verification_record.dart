import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'company_verification_record.g.dart';

abstract class CompanyVerificationRecord
    implements
        Built<CompanyVerificationRecord, CompanyVerificationRecordBuilder> {
  static Serializer<CompanyVerificationRecord> get serializer =>
      _$companyVerificationRecordSerializer;

  @nullable
  DocumentReference get idEmpresa;

  @nullable
  Timestamp get createAt;

  @nullable
  String get status;

  @nullable
  DocumentReference get attendedBy;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CompanyVerificationRecordBuilder builder) =>
      builder..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('company_verification');

  static Stream<CompanyVerificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CompanyVerificationRecord._();
  factory CompanyVerificationRecord(
          [void Function(CompanyVerificationRecordBuilder) updates]) =
      _$CompanyVerificationRecord;
}

Map<String, dynamic> createCompanyVerificationRecordData({
  DocumentReference idEmpresa,
  Timestamp createAt,
  String status,
  DocumentReference attendedBy,
}) =>
    serializers.serializeWith(
        CompanyVerificationRecord.serializer,
        CompanyVerificationRecord((c) => c
          ..idEmpresa = idEmpresa
          ..createAt = createAt
          ..status = status
          ..attendedBy = attendedBy));

CompanyVerificationRecord get dummyCompanyVerificationRecord {
  final builder = CompanyVerificationRecordBuilder()
    ..createAt = dummyTimestamp
    ..status = dummyString;
  return builder.build();
}

List<CompanyVerificationRecord> createDummyCompanyVerificationRecord(
        {int count}) =>
    List.generate(count, (_) => dummyCompanyVerificationRecord);
