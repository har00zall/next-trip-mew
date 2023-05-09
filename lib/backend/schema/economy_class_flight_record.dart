import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'economy_class_flight_record.g.dart';

abstract class EconomyClassFlightRecord
    implements
        Built<EconomyClassFlightRecord, EconomyClassFlightRecordBuilder> {
  static Serializer<EconomyClassFlightRecord> get serializer =>
      _$economyClassFlightRecordSerializer;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'FlightName')
  String? get flightName;

  @BuiltValueField(wireName: 'From')
  String? get from;

  @BuiltValueField(wireName: 'To')
  String? get to;

  @BuiltValueField(wireName: 'Price')
  int? get price;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EconomyClassFlightRecordBuilder builder) =>
      builder
        ..no = 0
        ..flightName = ''
        ..from = ''
        ..to = ''
        ..price = 0
        ..time = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('economyClassFlight');

  static Stream<EconomyClassFlightRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EconomyClassFlightRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EconomyClassFlightRecord._();
  factory EconomyClassFlightRecord(
          [void Function(EconomyClassFlightRecordBuilder) updates]) =
      _$EconomyClassFlightRecord;

  static EconomyClassFlightRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEconomyClassFlightRecordData({
  int? no,
  String? flightName,
  String? from,
  String? to,
  int? price,
  String? time,
}) {
  final firestoreData = serializers.toFirestore(
    EconomyClassFlightRecord.serializer,
    EconomyClassFlightRecord(
      (e) => e
        ..no = no
        ..flightName = flightName
        ..from = from
        ..to = to
        ..price = price
        ..time = time,
    ),
  );

  return firestoreData;
}
