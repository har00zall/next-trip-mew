import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'train_record.g.dart';

abstract class TrainRecord implements Built<TrainRecord, TrainRecordBuilder> {
  static Serializer<TrainRecord> get serializer => _$trainRecordSerializer;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'From')
  String? get from;

  @BuiltValueField(wireName: 'To')
  String? get to;

  @BuiltValueField(wireName: 'Sleeper')
  int? get sleeper;

  @BuiltValueField(wireName: 'AC_1A-Tier')
  int? get aC1ATier;

  @BuiltValueField(wireName: 'AC_2A-Tier')
  int? get aC2ATier;

  @BuiltValueField(wireName: 'Arrival_Station')
  String? get arrivalStation;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: 'Duration')
  String? get duration;

  @BuiltValueField(wireName: 'Train_Name')
  String? get trainName;

  @BuiltValueField(wireName: 'Boarding_Station')
  String? get boardingStation;

  @BuiltValueField(wireName: 'Train_No')
  int? get trainNo;

  @BuiltValueField(wireName: 'AC_3A-Tier')
  int? get aC3ATier;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TrainRecordBuilder builder) => builder
    ..no = 0
    ..from = ''
    ..to = ''
    ..sleeper = 0
    ..aC1ATier = 0
    ..aC2ATier = 0
    ..arrivalStation = ''
    ..time = ''
    ..duration = ''
    ..trainName = ''
    ..boardingStation = ''
    ..trainNo = 0
    ..aC3ATier = 0;

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
  String? from,
  String? to,
  int? sleeper,
  int? aC1ATier,
  int? aC2ATier,
  String? arrivalStation,
  String? time,
  String? duration,
  String? trainName,
  String? boardingStation,
  int? trainNo,
  int? aC3ATier,
}) {
  final firestoreData = serializers.toFirestore(
    TrainRecord.serializer,
    TrainRecord(
      (t) => t
        ..no = no
        ..from = from
        ..to = to
        ..sleeper = sleeper
        ..aC1ATier = aC1ATier
        ..aC2ATier = aC2ATier
        ..arrivalStation = arrivalStation
        ..time = time
        ..duration = duration
        ..trainName = trainName
        ..boardingStation = boardingStation
        ..trainNo = trainNo
        ..aC3ATier = aC3ATier,
    ),
  );

  return firestoreData;
}
