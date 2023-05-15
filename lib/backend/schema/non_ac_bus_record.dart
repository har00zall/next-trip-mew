import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'non_ac_bus_record.g.dart';

abstract class NonAcBusRecord
    implements Built<NonAcBusRecord, NonAcBusRecordBuilder> {
  static Serializer<NonAcBusRecord> get serializer =>
      _$nonAcBusRecordSerializer;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'BusName')
  String? get busName;

  @BuiltValueField(wireName: 'From')
  String? get from;

  @BuiltValueField(wireName: 'To')
  String? get to;

  @BuiltValueField(wireName: 'Boarding')
  String? get boarding;

  @BuiltValueField(wireName: 'NonAC_Seater')
  int? get nonACSeater;

  @BuiltValueField(wireName: 'NonAc_Sleeper')
  int? get nonAcSleeper;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: 'Duration')
  String? get duration;

  @BuiltValueField(wireName: 'Arrival')
  String? get arrival;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NonAcBusRecordBuilder builder) => builder
    ..no = 0
    ..busName = ''
    ..from = ''
    ..to = ''
    ..boarding = ''
    ..nonACSeater = 0
    ..nonAcSleeper = 0
    ..time = ''
    ..duration = ''
    ..arrival = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nonAcBus');

  static Stream<NonAcBusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NonAcBusRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NonAcBusRecord._();
  factory NonAcBusRecord([void Function(NonAcBusRecordBuilder) updates]) =
      _$NonAcBusRecord;

  static NonAcBusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNonAcBusRecordData({
  int? no,
  String? busName,
  String? from,
  String? to,
  String? boarding,
  int? nonACSeater,
  int? nonAcSleeper,
  String? time,
  String? duration,
  String? arrival,
}) {
  final firestoreData = serializers.toFirestore(
    NonAcBusRecord.serializer,
    NonAcBusRecord(
      (n) => n
        ..no = no
        ..busName = busName
        ..from = from
        ..to = to
        ..boarding = boarding
        ..nonACSeater = nonACSeater
        ..nonAcSleeper = nonAcSleeper
        ..time = time
        ..duration = duration
        ..arrival = arrival,
    ),
  );

  return firestoreData;
}
