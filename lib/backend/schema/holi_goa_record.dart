import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'holi_goa_record.g.dart';

abstract class HoliGoaRecord
    implements Built<HoliGoaRecord, HoliGoaRecordBuilder> {
  static Serializer<HoliGoaRecord> get serializer => _$holiGoaRecordSerializer;

  @BuiltValueField(wireName: 'No')
  bool? get no;

  @BuiltValueField(wireName: 'Name-of-Place')
  String? get nameOfPlace;

  @BuiltValueField(wireName: 'Review')
  bool? get review;

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

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HoliGoaRecordBuilder builder) => builder
    ..no = false
    ..nameOfPlace = ''
    ..review = false
    ..type = ''
    ..nearByAddress = ''
    ..openingTime = ''
    ..closingTime = ''
    ..thingsYouCanSeeInThere = ''
    ..image = '';

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
  bool? no,
  String? nameOfPlace,
  bool? review,
  String? type,
  String? nearByAddress,
  String? openingTime,
  String? closingTime,
  String? thingsYouCanSeeInThere,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    HoliGoaRecord.serializer,
    HoliGoaRecord(
      (h) => h
        ..no = no
        ..nameOfPlace = nameOfPlace
        ..review = review
        ..type = type
        ..nearByAddress = nearByAddress
        ..openingTime = openingTime
        ..closingTime = closingTime
        ..thingsYouCanSeeInThere = thingsYouCanSeeInThere
        ..image = image,
    ),
  );

  return firestoreData;
}
