import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'business_class_flight_record.g.dart';

abstract class BusinessClassFlightRecord
    implements
        Built<BusinessClassFlightRecord, BusinessClassFlightRecordBuilder> {
  static Serializer<BusinessClassFlightRecord> get serializer =>
      _$businessClassFlightRecordSerializer;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'Flight_Name')
  String? get flightName;

  @BuiltValueField(wireName: 'From')
  String? get from;

  @BuiltValueField(wireName: 'To')
  String? get to;

  @BuiltValueField(wireName: 'Duration')
  String? get duration;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: 'Price')
  int? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BusinessClassFlightRecordBuilder builder) =>
      builder
        ..no = 0
        ..flightName = ''
        ..from = ''
        ..to = ''
        ..duration = ''
        ..time = ''
        ..price = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('businessClassFlight');

  static Stream<BusinessClassFlightRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BusinessClassFlightRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BusinessClassFlightRecord._();
  factory BusinessClassFlightRecord(
          [void Function(BusinessClassFlightRecordBuilder) updates]) =
      _$BusinessClassFlightRecord;

  static BusinessClassFlightRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBusinessClassFlightRecordData({
  int? no,
  String? flightName,
  String? from,
  String? to,
  String? duration,
  String? time,
  int? price,
}) {
  final firestoreData = serializers.toFirestore(
    BusinessClassFlightRecord.serializer,
    BusinessClassFlightRecord(
      (b) => b
        ..no = no
        ..flightName = flightName
        ..from = from
        ..to = to
        ..duration = duration
        ..time = time
        ..price = price,
    ),
  );

  return firestoreData;
}
