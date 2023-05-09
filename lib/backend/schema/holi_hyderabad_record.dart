import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'holi_hyderabad_record.g.dart';

abstract class HoliHyderabadRecord
    implements Built<HoliHyderabadRecord, HoliHyderabadRecordBuilder> {
  static Serializer<HoliHyderabadRecord> get serializer =>
      _$holiHyderabadRecordSerializer;

  @BuiltValueField(wireName: 'No')
  bool? get no;

  @BuiltValueField(wireName: 'Name-of-Place')
  String? get nameOfPlace;

  String? get type;

  @BuiltValueField(wireName: 'Opening-Time')
  String? get openingTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HoliHyderabadRecordBuilder builder) => builder
    ..no = false
    ..nameOfPlace = ''
    ..type = ''
    ..openingTime = '';

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
  bool? no,
  String? nameOfPlace,
  String? type,
  String? openingTime,
}) {
  final firestoreData = serializers.toFirestore(
    HoliHyderabadRecord.serializer,
    HoliHyderabadRecord(
      (h) => h
        ..no = no
        ..nameOfPlace = nameOfPlace
        ..type = type
        ..openingTime = openingTime,
    ),
  );

  return firestoreData;
}
