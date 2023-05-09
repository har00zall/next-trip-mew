import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'holi_goa_record.g.dart';

abstract class HoliGoaRecord
    implements Built<HoliGoaRecord, HoliGoaRecordBuilder> {
  static Serializer<HoliGoaRecord> get serializer => _$holiGoaRecordSerializer;

  @BuiltValueField(wireName: 'Name-of-Place')
  String? get nameOfPlace;

  String? get type;

  @BuiltValueField(wireName: 'Near-by-address')
  String? get nearByAddress;

  @BuiltValueField(wireName: 'Opening-Time')
  String? get openingTime;

  @BuiltValueField(wireName: 'Closing-Time')
  String? get closingTime;

  @BuiltValueField(wireName: 'Things-you-can-see-in-there')
  String? get thingsYouCanSeeInThere;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'Review')
  int? get review;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HoliGoaRecordBuilder builder) => builder
    ..nameOfPlace = ''
    ..type = ''
    ..nearByAddress = ''
    ..openingTime = ''
    ..closingTime = ''
    ..thingsYouCanSeeInThere = ''
    ..image = ''
    ..no = 0
    ..review = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('holiGoa');

  static Stream<HoliGoaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HoliGoaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HoliGoaRecord._();
  factory HoliGoaRecord([void Function(HoliGoaRecordBuilder) updates]) =
      _$HoliGoaRecord;

  static HoliGoaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHoliGoaRecordData({
  String? nameOfPlace,
  String? type,
  String? nearByAddress,
  String? openingTime,
  String? closingTime,
  String? thingsYouCanSeeInThere,
  String? image,
  int? no,
  int? review,
}) {
  final firestoreData = serializers.toFirestore(
    HoliGoaRecord.serializer,
    HoliGoaRecord(
      (h) => h
        ..nameOfPlace = nameOfPlace
        ..type = type
        ..nearByAddress = nearByAddress
        ..openingTime = openingTime
        ..closingTime = closingTime
        ..thingsYouCanSeeInThere = thingsYouCanSeeInThere
        ..image = image
        ..no = no
        ..review = review,
    ),
  );

  return firestoreData;
}
