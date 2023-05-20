import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrainRecord extends FirestoreRecord {
  TrainRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "No" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  // "From" field.
  String? _from;
  String get from => _from ?? '';
  bool hasFrom() => _from != null;

  // "To" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "Sleeper" field.
  int? _sleeper;
  int get sleeper => _sleeper ?? 0;
  bool hasSleeper() => _sleeper != null;

  // "AC_1A-Tier" field.
  int? _aC1ATier;
  int get aC1ATier => _aC1ATier ?? 0;
  bool hasAC1ATier() => _aC1ATier != null;

  // "AC_2A-Tier" field.
  int? _aC2ATier;
  int get aC2ATier => _aC2ATier ?? 0;
  bool hasAC2ATier() => _aC2ATier != null;

  // "Arrival_Station" field.
  String? _arrivalStation;
  String get arrivalStation => _arrivalStation ?? '';
  bool hasArrivalStation() => _arrivalStation != null;

  // "Time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "Train_Name" field.
  String? _trainName;
  String get trainName => _trainName ?? '';
  bool hasTrainName() => _trainName != null;

  // "Boarding_Station" field.
  String? _boardingStation;
  String get boardingStation => _boardingStation ?? '';
  bool hasBoardingStation() => _boardingStation != null;

  // "Train_No" field.
  int? _trainNo;
  int get trainNo => _trainNo ?? 0;
  bool hasTrainNo() => _trainNo != null;

  // "AC_3A-Tier" field.
  int? _aC3ATier;
  int get aC3ATier => _aC3ATier ?? 0;
  bool hasAC3ATier() => _aC3ATier != null;

  void _initializeFields() {
    _no = snapshotData['No'] as int?;
    _from = snapshotData['From'] as String?;
    _to = snapshotData['To'] as String?;
    _sleeper = snapshotData['Sleeper'] as int?;
    _aC1ATier = snapshotData['AC_1A-Tier'] as int?;
    _aC2ATier = snapshotData['AC_2A-Tier'] as int?;
    _arrivalStation = snapshotData['Arrival_Station'] as String?;
    _time = snapshotData['Time'] as String?;
    _duration = snapshotData['Duration'] as String?;
    _trainName = snapshotData['Train_Name'] as String?;
    _boardingStation = snapshotData['Boarding_Station'] as String?;
    _trainNo = snapshotData['Train_No'] as int?;
    _aC3ATier = snapshotData['AC_3A-Tier'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('train');

  static Stream<TrainRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrainRecord.fromSnapshot(s));

  static Future<TrainRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrainRecord.fromSnapshot(s));

  static TrainRecord fromSnapshot(DocumentSnapshot snapshot) => TrainRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrainRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrainRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrainRecord(reference: ${reference.path}, data: $snapshotData)';
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
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'No': no,
      'From': from,
      'To': to,
      'Sleeper': sleeper,
      'AC_1A-Tier': aC1ATier,
      'AC_2A-Tier': aC2ATier,
      'Arrival_Station': arrivalStation,
      'Time': time,
      'Duration': duration,
      'Train_Name': trainName,
      'Boarding_Station': boardingStation,
      'Train_No': trainNo,
      'AC_3A-Tier': aC3ATier,
    }.withoutNulls,
  );

  return firestoreData;
}
