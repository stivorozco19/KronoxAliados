import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:latlong/latlong.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'empresas_record.g.dart';

abstract class EmpresasRecord
    implements Built<EmpresasRecord, EmpresasRecordBuilder> {
  static Serializer<EmpresasRecord> get serializer =>
      _$empresasRecordSerializer;

  @nullable
  String get addres;

  @nullable
  DateTime get createAt;

  @nullable
  DocumentReference get createBy;

  @nullable
  String get description;

  @nullable
  String get name;

  @nullable
  int get quantityVoting;

  @nullable
  double get rating;

  @nullable
  String get logo;

  @nullable
  String get longitude;

  @nullable
  String get latitude;

  @nullable
  String get phone;

  @nullable
  String get email;

  @nullable
  bool get isActive;

  @nullable
  @BuiltValueField(wireName: 'tipo_documento')
  String get tipoDocumento;

  @nullable
  @BuiltValueField(wireName: 'numero_documento')
  String get numeroDocumento;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EmpresasRecordBuilder builder) => builder
    ..addres = ''
    ..description = ''
    ..name = ''
    ..quantityVoting = 0
    ..rating = 0.0
    ..logo = ''
    ..longitude = ''
    ..latitude = ''
    ..phone = ''
    ..email = ''
    ..isActive = false
    ..tipoDocumento = ''
    ..numeroDocumento = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('empresas');

  static Stream<EmpresasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EmpresasRecord._();
  factory EmpresasRecord([void Function(EmpresasRecordBuilder) updates]) =
      _$EmpresasRecord;
}

Map<String, dynamic> createEmpresasRecordData({
  String addres,
  DateTime createAt,
  DocumentReference createBy,
  String description,
  String name,
  int quantityVoting,
  double rating,
  String logo,
  String longitude,
  String latitude,
  String phone,
  String email,
  bool isActive,
  String tipoDocumento,
  String numeroDocumento,
}) =>
    serializers.toFirestore(
        EmpresasRecord.serializer,
        EmpresasRecord((e) => e
          ..addres = addres
          ..createAt = createAt
          ..createBy = createBy
          ..description = description
          ..name = name
          ..quantityVoting = quantityVoting
          ..rating = rating
          ..logo = logo
          ..longitude = longitude
          ..latitude = latitude
          ..phone = phone
          ..email = email
          ..isActive = isActive
          ..tipoDocumento = tipoDocumento
          ..numeroDocumento = numeroDocumento));

EmpresasRecord get dummyEmpresasRecord {
  final builder = EmpresasRecordBuilder()
    ..addres = dummyString
    ..createAt = dummyTimestamp
    ..description = dummyString
    ..name = dummyString
    ..quantityVoting = dummyInteger
    ..rating = dummyDouble
    ..logo = dummyImagePath
    ..longitude = dummyString
    ..latitude = dummyString
    ..phone = dummyString
    ..email = dummyString
    ..isActive = dummyBoolean
    ..tipoDocumento = dummyString
    ..numeroDocumento = dummyString;
  return builder.build();
}

List<EmpresasRecord> createDummyEmpresasRecord({int count}) =>
    List.generate(count, (_) => dummyEmpresasRecord);
