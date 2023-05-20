import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AcbusRecord extends FirestoreRecord {
  AcbusRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Bus_Name" field.
  String? _busName;
  String get busName => _busName ?? '';
  bool hasBusName() => _busName != null;

  // "From" field.
  String? _from;
  String get from => _from ?? '';
  bool hasFrom() => _from != null;

  // "To" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "Boarding" field.
  String? _boarding;
  String get boarding => _boarding ?? '';
  bool hasBoarding() => _boarding != null;

  // "Destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "Ac_Seater" field.
  int? _acSeater;
  int get acSeater => _acSeater ?? 0;
  bool hasAcSeater() => _acSeater != null;

  // "Ac_Sleeper" field.
  int? _acSleeper;
  int get acSleeper => _acSleeper ?? 0;
  bool hasAcSleeper() => _acSleeper != null;

  // "Date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "Time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "No" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  void _initializeFields() {
    _busName = snapshotData['Bus_Name'] as String?;
    _from = snapshotData['From'] as String?;
    _to = snapshotData['To'] as String?;
    _boarding = snapshotData['Boarding'] as String?;
    _destination = snapshotData['Destination'] as String?;
    _acSeater = snapshotData['Ac_Seater'] as int?;
    _acSleeper = snapshotData['Ac_Sleeper'] as int?;
    _date = snapshotData['Date'] as String?;
    _time = snapshotData['Time'] as String?;
    _duration = snapshotData['Duration'] as String?;
    _no = snapshotData['No'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('acbus');

  static Stream<AcbusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AcbusRecord.fromSnapshot(s));

  static Future<AcbusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AcbusRecord.fromSnapshot(s));

  static AcbusRecord fromSnapshot(DocumentSnapshot snapshot) => AcbusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AcbusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AcbusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AcbusRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createAcbusRecordData({
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
  int? no,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Bus_Name': busName,
      'From': from,
      'To': to,
      'Boarding': boarding,
      'Destination': destination,
      'Ac_Seater': acSeater,
      'Ac_Sleeper': acSleeper,
      'Date': date,
      'Time': time,
      'Duration': duration,
      'No': no,
    }.withoutNulls,
  );

  return firestoreData;
}
