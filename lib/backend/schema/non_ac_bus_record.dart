import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NonAcBusRecord extends FirestoreRecord {
  NonAcBusRecord._(
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

  // "Boarding" field.
  String? _boarding;
  String get boarding => _boarding ?? '';
  bool hasBoarding() => _boarding != null;

  // "NonAC_Seater" field.
  int? _nonACSeater;
  int get nonACSeater => _nonACSeater ?? 0;
  bool hasNonACSeater() => _nonACSeater != null;

  // "NonAc_Sleeper" field.
  int? _nonAcSleeper;
  int get nonAcSleeper => _nonAcSleeper ?? 0;
  bool hasNonAcSleeper() => _nonAcSleeper != null;

  // "Time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "Arrival" field.
  String? _arrival;
  String get arrival => _arrival ?? '';
  bool hasArrival() => _arrival != null;

  // "Bus_Name" field.
  String? _busName;
  String get busName => _busName ?? '';
  bool hasBusName() => _busName != null;

  void _initializeFields() {
    _no = snapshotData['No'] as int?;
    _from = snapshotData['From'] as String?;
    _to = snapshotData['To'] as String?;
    _boarding = snapshotData['Boarding'] as String?;
    _nonACSeater = snapshotData['NonAC_Seater'] as int?;
    _nonAcSleeper = snapshotData['NonAc_Sleeper'] as int?;
    _time = snapshotData['Time'] as String?;
    _duration = snapshotData['Duration'] as String?;
    _arrival = snapshotData['Arrival'] as String?;
    _busName = snapshotData['Bus_Name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nonAcBus');

  static Stream<NonAcBusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NonAcBusRecord.fromSnapshot(s));

  static Future<NonAcBusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NonAcBusRecord.fromSnapshot(s));

  static NonAcBusRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NonAcBusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NonAcBusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NonAcBusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NonAcBusRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createNonAcBusRecordData({
  int? no,
  String? from,
  String? to,
  String? boarding,
  int? nonACSeater,
  int? nonAcSleeper,
  String? time,
  String? duration,
  String? arrival,
  String? busName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'No': no,
      'From': from,
      'To': to,
      'Boarding': boarding,
      'NonAC_Seater': nonACSeater,
      'NonAc_Sleeper': nonAcSleeper,
      'Time': time,
      'Duration': duration,
      'Arrival': arrival,
      'Bus_Name': busName,
    }.withoutNulls,
  );

  return firestoreData;
}
