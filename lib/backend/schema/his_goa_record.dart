import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'his_goa_record.g.dart';

abstract class HisGoaRecord
    implements Built<HisGoaRecord, HisGoaRecordBuilder> {
  static Serializer<HisGoaRecord> get serializer => _$hisGoaRecordSerializer;

  @BuiltValueField(wireName: 'Url')
  String? get url;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  String? get image;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'Rate')
  int? get rate;

  @BuiltValueField(wireName: 'Review')
  int? get review;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HisGoaRecordBuilder builder) => builder
    ..url = ''
    ..name = ''
    ..type = ''
    ..image = ''
    ..no = 0
    ..rate = 0
    ..review = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hisGoa');

  static Stream<HisGoaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HisGoaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HisGoaRecord._();
  factory HisGoaRecord([void Function(HisGoaRecordBuilder) updates]) =
      _$HisGoaRecord;

  static HisGoaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHisGoaRecordData({
  String? url,
  String? name,
  String? type,
  String? image,
  int? no,
  int? rate,
  int? review,
}) {
  final firestoreData = serializers.toFirestore(
    HisGoaRecord.serializer,
    HisGoaRecord(
      (h) => h
        ..url = url
        ..name = name
        ..type = type
        ..image = image
        ..no = no
        ..rate = rate
        ..review = review,
    ),
  );

  return firestoreData;
}
