import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'acbus_record.g.dart';

abstract class AcbusRecord implements Built<AcbusRecord, AcbusRecordBuilder> {
  static Serializer<AcbusRecord> get serializer => _$acbusRecordSerializer;

  @BuiltValueField(wireName: 'No')
  bool? get no;

  @BuiltValueField(wireName: 'Bus_Name')
  String? get busName;

  @BuiltValueField(wireName: 'From')
  String? get from;

  @BuiltValueField(wireName: 'To')
  String? get to;

  @BuiltValueField(wireName: 'Boarding')
  String? get boarding;

  @BuiltValueField(wireName: 'Destination')
  String? get destination;

  @BuiltValueField(wireName: 'Ac_Seater')
  int? get acSeater;

  @BuiltValueField(wireName: 'Ac_Sleeper')
  int? get acSleeper;

  @BuiltValueField(wireName: 'Date')
  String? get date;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: 'Duration')
  String? get duration;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AcbusRecordBuilder builder) => builder
    ..no = false
    ..busName = ''
    ..from = ''
    ..to = ''
    ..boarding = ''
    ..destination = ''
    ..acSeater = 0
    ..acSleeper = 0
    ..date = ''
    ..time = ''
    ..duration = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('acbus');

  static Stream<AcbusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AcbusRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AcbusRecord._();
  factory AcbusRecord([void Function(AcbusRecordBuilder) updates]) =
      _$AcbusRecord;

  static AcbusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAcbusRecordData({
  bool? no,
  String? busName,
  String? from,
  String? to,
  String? boarding,
  String? destination,
  int? acSeater,
  int? acSleeper,
  String? date,
  String? time,
  String? duration,
}) {
  final firestoreData = serializers.toFirestore(
    AcbusRecord.serializer,
    AcbusRecord(
      (a) => a
        ..no = no
        ..busName = busName
        ..from = from
        ..to = to
        ..boarding = boarding
        ..destination = destination
        ..acSeater = acSeater
        ..acSleeper = acSleeper
        ..date = date
        ..time = time
        ..duration = duration,
    ),
  );

  return firestoreData;
}
