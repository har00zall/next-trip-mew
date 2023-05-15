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

  @BuiltValueField(wireName: 'From')
  String? get from;

  @BuiltValueField(wireName: 'To')
  String? get to;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: 'Price')
  double? get price;

  @BuiltValueField(wireName: 'Flight_Name')
  String? get flightName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EconomyClassFlightRecordBuilder builder) =>
      builder
        ..no = 0
        ..from = ''
        ..to = ''
        ..time = ''
        ..price = 0.0
        ..flightName = '';

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
  String? from,
  String? to,
  String? time,
  double? price,
  String? flightName,
}) {
  final firestoreData = serializers.toFirestore(
    EconomyClassFlightRecord.serializer,
    EconomyClassFlightRecord(
      (e) => e
        ..no = no
        ..from = from
        ..to = to
        ..time = time
        ..price = price
        ..flightName = flightName,
    ),
  );

  return firestoreData;
}
