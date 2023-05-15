import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'his_hyderabad_record.g.dart';

abstract class HisHyderabadRecord
    implements Built<HisHyderabadRecord, HisHyderabadRecordBuilder> {
  static Serializer<HisHyderabadRecord> get serializer =>
      _$hisHyderabadRecordSerializer;

  @BuiltValueField(wireName: 'Url')
  String? get url;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  String? get images;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'Review')
  int? get review;

  @BuiltValueField(wireName: 'Rate')
  double? get rate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HisHyderabadRecordBuilder builder) => builder
    ..url = ''
    ..name = ''
    ..type = ''
    ..images = ''
    ..no = 0
    ..review = 0
    ..rate = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hisHyderabad');

  static Stream<HisHyderabadRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HisHyderabadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HisHyderabadRecord._();
  factory HisHyderabadRecord(
          [void Function(HisHyderabadRecordBuilder) updates]) =
      _$HisHyderabadRecord;

  static HisHyderabadRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHisHyderabadRecordData({
  String? url,
  String? name,
  String? type,
  String? images,
  int? no,
  int? review,
  double? rate,
}) {
  final firestoreData = serializers.toFirestore(
    HisHyderabadRecord.serializer,
    HisHyderabadRecord(
      (h) => h
        ..url = url
        ..name = name
        ..type = type
        ..images = images
        ..no = no
        ..review = review
        ..rate = rate,
    ),
  );

  return firestoreData;
}
