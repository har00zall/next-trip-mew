import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HoliHyderabadRecord extends FirestoreRecord {
  HoliHyderabadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name-of-Place" field.
  String? _nameOfPlace;
  String get nameOfPlace => _nameOfPlace ?? '';
  bool hasNameOfPlace() => _nameOfPlace != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "Opening-Time" field.
  String? _openingTime;
  String get openingTime => _openingTime ?? '';
  bool hasOpeningTime() => _openingTime != null;

  // "No" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _nameOfPlace = snapshotData['Name-of-Place'] as String?;
    _type = snapshotData['type'] as String?;
    _openingTime = snapshotData['Opening-Time'] as String?;
    _no = snapshotData['No'] as int?;
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('holiHyderabad');

  static Stream<HoliHyderabadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HoliHyderabadRecord.fromSnapshot(s));

  static Future<HoliHyderabadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HoliHyderabadRecord.fromSnapshot(s));

  static HoliHyderabadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HoliHyderabadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HoliHyderabadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HoliHyderabadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HoliHyderabadRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHoliHyderabadRecordData({
  String? nameOfPlace,
  String? type,
  String? openingTime,
  int? no,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name-of-Place': nameOfPlace,
      'type': type,
      'Opening-Time': openingTime,
      'No': no,
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}
