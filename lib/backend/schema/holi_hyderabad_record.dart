import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'holi_hyderabad_record.g.dart';

abstract class HoliHyderabadRecord
    implements Built<HoliHyderabadRecord, HoliHyderabadRecordBuilder> {
  static Serializer<HoliHyderabadRecord> get serializer =>
      _$holiHyderabadRecordSerializer;

  @BuiltValueField(wireName: 'Name-of-Place')
  String? get nameOfPlace;

  String? get type;

  @BuiltValueField(wireName: 'Opening-Time')
  String? get openingTime;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HoliHyderabadRecordBuilder builder) => builder
    ..nameOfPlace = ''
    ..type = ''
    ..openingTime = ''
    ..no = 0
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('holiHyderabad');

  static Stream<HoliHyderabadRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HoliHyderabadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HoliHyderabadRecord._();
  factory HoliHyderabadRecord(
          [void Function(HoliHyderabadRecordBuilder) updates]) =
      _$HoliHyderabadRecord;

  static HoliHyderabadRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHoliHyderabadRecordData({
  String? nameOfPlace,
  String? type,
  String? openingTime,
  int? no,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    HoliHyderabadRecord.serializer,
    HoliHyderabadRecord(
      (h) => h
        ..nameOfPlace = nameOfPlace
        ..type = type
        ..openingTime = openingTime
        ..no = no
        ..image = image,
    ),
  );

  return firestoreData;
}
