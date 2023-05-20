import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EconomyClassFlightRecord extends FirestoreRecord {
  EconomyClassFlightRecord._(
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

  // "Time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "Flight_Name" field.
  String? _flightName;
  String get flightName => _flightName ?? '';
  bool hasFlightName() => _flightName != null;

  void _initializeFields() {
    _no = snapshotData['No'] as int?;
    _from = snapshotData['From'] as String?;
    _to = snapshotData['To'] as String?;
    _time = snapshotData['Time'] as String?;
    _price = castToType<double>(snapshotData['Price']);
    _flightName = snapshotData['Flight_Name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('economyClassFlight');

  static Stream<EconomyClassFlightRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EconomyClassFlightRecord.fromSnapshot(s));

  static Future<EconomyClassFlightRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EconomyClassFlightRecord.fromSnapshot(s));

  static EconomyClassFlightRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EconomyClassFlightRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EconomyClassFlightRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EconomyClassFlightRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EconomyClassFlightRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEconomyClassFlightRecordData({
  int? no,
  String? from,
  String? to,
  String? time,
  double? price,
  String? flightName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'No': no,
      'From': from,
      'To': to,
      'Time': time,
      'Price': price,
      'Flight_Name': flightName,
    }.withoutNulls,
  );

  return firestoreData;
}
