import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HoliGoaRecord extends FirestoreRecord {
  HoliGoaRecord._(
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

  // "Near-by-address" field.
  String? _nearByAddress;
  String get nearByAddress => _nearByAddress ?? '';
  bool hasNearByAddress() => _nearByAddress != null;

  // "Opening-Time" field.
  String? _openingTime;
  String get openingTime => _openingTime ?? '';
  bool hasOpeningTime() => _openingTime != null;

  // "Closing-Time" field.
  String? _closingTime;
  String get closingTime => _closingTime ?? '';
  bool hasClosingTime() => _closingTime != null;

  // "Things-you-can-see-in-there" field.
  String? _thingsYouCanSeeInThere;
  String get thingsYouCanSeeInThere => _thingsYouCanSeeInThere ?? '';
  bool hasThingsYouCanSeeInThere() => _thingsYouCanSeeInThere != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "No" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  // "Review" field.
  int? _review;
  int get review => _review ?? 0;
  bool hasReview() => _review != null;

  void _initializeFields() {
    _nameOfPlace = snapshotData['Name-of-Place'] as String?;
    _type = snapshotData['type'] as String?;
    _nearByAddress = snapshotData['Near-by-address'] as String?;
    _openingTime = snapshotData['Opening-Time'] as String?;
    _closingTime = snapshotData['Closing-Time'] as String?;
    _thingsYouCanSeeInThere =
        snapshotData['Things-you-can-see-in-there'] as String?;
    _image = snapshotData['Image'] as String?;
    _no = snapshotData['No'] as int?;
    _review = snapshotData['Review'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('holiGoa');

  static Stream<HoliGoaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HoliGoaRecord.fromSnapshot(s));

  static Future<HoliGoaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HoliGoaRecord.fromSnapshot(s));

  static HoliGoaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HoliGoaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HoliGoaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HoliGoaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HoliGoaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHoliGoaRecordData({
  String? nameOfPlace,
  String? type,
  String? nearByAddress,
  String? openingTime,
  String? closingTime,
  String? thingsYouCanSeeInThere,
  String? image,
  int? no,
  int? review,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name-of-Place': nameOfPlace,
      'type': type,
      'Near-by-address': nearByAddress,
      'Opening-Time': openingTime,
      'Closing-Time': closingTime,
      'Things-you-can-see-in-there': thingsYouCanSeeInThere,
      'Image': image,
      'No': no,
      'Review': review,
    }.withoutNulls,
  );

  return firestoreData;
}
