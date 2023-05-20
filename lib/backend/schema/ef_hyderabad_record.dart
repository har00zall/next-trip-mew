import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EfHyderabadRecord extends FirestoreRecord {
  EfHyderabadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name-of-festival" field.
  String? _nameOfFestival;
  String get nameOfFestival => _nameOfFestival ?? '';
  bool hasNameOfFestival() => _nameOfFestival != null;

  // "When" field.
  String? _when;
  String get when => _when ?? '';
  bool hasWhen() => _when != null;

  // "Where" field.
  String? _where;
  String get where => _where ?? '';
  bool hasWhere() => _where != null;

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "famous-for" field.
  String? _famousFor;
  String get famousFor => _famousFor ?? '';
  bool hasFamousFor() => _famousFor != null;

  // "Images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  // "No" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  void _initializeFields() {
    _nameOfFestival = snapshotData['Name-of-festival'] as String?;
    _when = snapshotData['When'] as String?;
    _where = snapshotData['Where'] as String?;
    _duration = snapshotData['Duration'] as String?;
    _famousFor = snapshotData['famous-for'] as String?;
    _images = snapshotData['Images'] as String?;
    _no = snapshotData['No'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('efHyderabad');

  static Stream<EfHyderabadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EfHyderabadRecord.fromSnapshot(s));

  static Future<EfHyderabadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EfHyderabadRecord.fromSnapshot(s));

  static EfHyderabadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EfHyderabadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EfHyderabadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EfHyderabadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EfHyderabadRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEfHyderabadRecordData({
  String? nameOfFestival,
  String? when,
  String? where,
  String? duration,
  String? famousFor,
  String? images,
  int? no,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name-of-festival': nameOfFestival,
      'When': when,
      'Where': where,
      'Duration': duration,
      'famous-for': famousFor,
      'Images': images,
      'No': no,
    }.withoutNulls,
  );

  return firestoreData;
}
