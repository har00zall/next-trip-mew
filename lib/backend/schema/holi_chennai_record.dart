import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'holi_chennai_record.g.dart';

abstract class HoliChennaiRecord
    implements Built<HoliChennaiRecord, HoliChennaiRecordBuilder> {
  static Serializer<HoliChennaiRecord> get serializer =>
      _$holiChennaiRecordSerializer;

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

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HoliChennaiRecordBuilder builder) => builder
    ..nameOfPlace = ''
    ..review = false
    ..type = ''
    ..nearByAddress = ''
    ..openingTime = ''
    ..closingTime = ''
    ..thingsYouCanSeeInThere = ''
    ..image = ''
    ..no = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('holiChennai');

  static Stream<HoliChennaiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HoliChennaiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HoliChennaiRecord._();
  factory HoliChennaiRecord([void Function(HoliChennaiRecordBuilder) updates]) =
      _$HoliChennaiRecord;

  static HoliChennaiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHoliChennaiRecordData({
  String? nameOfPlace,
  bool? review,
  String? type,
  String? nearByAddress,
  String? openingTime,
  String? closingTime,
  String? thingsYouCanSeeInThere,
  String? image,
  int? no,
}) {
  final firestoreData = serializers.toFirestore(
    HoliChennaiRecord.serializer,
    HoliChennaiRecord(
      (h) => h
        ..nameOfPlace = nameOfPlace
        ..review = review
        ..type = type
        ..nearByAddress = nearByAddress
        ..openingTime = openingTime
        ..closingTime = closingTime
        ..thingsYouCanSeeInThere = thingsYouCanSeeInThere
        ..image = image
        ..no = no,
    ),
  );

  return firestoreData;
}
