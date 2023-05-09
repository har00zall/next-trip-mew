import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'train_record.g.dart';

abstract class TrainRecord implements Built<TrainRecord, TrainRecordBuilder> {
  static Serializer<TrainRecord> get serializer => _$trainRecordSerializer;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'TrainName')
  String? get trainName;

  @BuiltValueField(wireName: 'TrainNo')
  String? get trainNo;

  @BuiltValueField(wireName: 'From')
  String? get from;

  @BuiltValueField(wireName: 'To')
  String? get to;

  @BuiltValueField(wireName: 'BoardingStation')
  String? get boardingStation;

  @BuiltValueField(wireName: 'Destination')
  String? get destination;

  @BuiltValueField(wireName: 'Sleeper')
  int? get sleeper;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TrainRecordBuilder builder) => builder
    ..no = 0
    ..trainName = ''
    ..trainNo = ''
    ..from = ''
    ..to = ''
    ..boardingStation = ''
    ..destination = ''
    ..sleeper = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('train');

  static Stream<TrainRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TrainRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TrainRecord._();
  factory TrainRecord([void Function(TrainRecordBuilder) updates]) =
      _$TrainRecord;

  static TrainRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTrainRecordData({
  int? no,
  String? trainName,
  String? trainNo,
  String? from,
  String? to,
  String? boardingStation,
  String? destination,
  int? sleeper,
}) {
  final firestoreData = serializers.toFirestore(
    TrainRecord.serializer,
    TrainRecord(
      (t) => t
        ..no = no
        ..trainName = trainName
        ..trainNo = trainNo
        ..from = from
        ..to = to
        ..boardingStation = boardingStation
        ..destination = destination
        ..sleeper = sleeper,
    ),
  );

  return firestoreData;
}
