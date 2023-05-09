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

  @BuiltValueField(wireName: 'Rate')
  bool? get rate;

  @BuiltValueField(wireName: 'Review')
  bool? get review;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  String? get image;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HisGoaRecordBuilder builder) => builder
    ..url = ''
    ..name = ''
    ..rate = false
    ..review = false
    ..type = ''
    ..image = ''
    ..no = 0;

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
  bool? rate,
  bool? review,
  String? type,
  String? image,
  int? no,
}) {
  final firestoreData = serializers.toFirestore(
    HisGoaRecord.serializer,
    HisGoaRecord(
      (h) => h
        ..url = url
        ..name = name
        ..rate = rate
        ..review = review
        ..type = type
        ..image = image
        ..no = no,
    ),
  );

  return firestoreData;
}
