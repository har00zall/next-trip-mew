import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessClassFlightRecord extends FirestoreRecord {
  BusinessClassFlightRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "No" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  // "Flight_Name" field.
  String? _flightName;
  String get flightName => _flightName ?? '';
  bool hasFlightName() => _flightName != null;

  // "From" field.
  String? _from;
  String get from => _from ?? '';
  bool hasFrom() => _from != null;

  // "To" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "Time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "Price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _no = snapshotData['No'] as int?;
    _flightName = snapshotData['Flight_Name'] as String?;
    _from = snapshotData['From'] as String?;
    _to = snapshotData['To'] as String?;
    _duration = snapshotData['Duration'] as String?;
    _time = snapshotData['Time'] as String?;
    _price = snapshotData['Price'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('businessClassFlight');

  static Stream<BusinessClassFlightRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessClassFlightRecord.fromSnapshot(s));

  static Future<BusinessClassFlightRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BusinessClassFlightRecord.fromSnapshot(s));

  static BusinessClassFlightRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessClassFlightRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessClassFlightRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessClassFlightRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessClassFlightRecord(reference: ${reference.path}, data: $snapshotData)';
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
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'No': no,
      'Flight_Name': flightName,
      'From': from,
      'To': to,
      'Duration': duration,
      'Time': time,
      'Price': price,
    }.withoutNulls,
  );

  return firestoreData;
}
