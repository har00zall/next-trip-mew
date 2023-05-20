import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EfBangaloreRecord extends FirestoreRecord {
  EfBangaloreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name-of-festival" field.
  String? _nameOfFestival;
  String get nameOfFestival => _nameOfFestival ?? '';
  bool hasNameOfFestival() => _nameOfFestival != null;

  // "where" field.
  String? _where;
  String get where => _where ?? '';
  bool hasWhere() => _where != null;

  // "duration" field.
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

  // "when" field.
  String? _when;
  String get when => _when ?? '';
  bool hasWhen() => _when != null;

  void _initializeFields() {
    _nameOfFestival = snapshotData['Name-of-festival'] as String?;
    _where = snapshotData['where'] as String?;
    _duration = snapshotData['duration'] as String?;
    _famousFor = snapshotData['famous-for'] as String?;
    _images = snapshotData['Images'] as String?;
    _no = snapshotData['No'] as int?;
    _when = snapshotData['when'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('efBangalore');

  static Stream<EfBangaloreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EfBangaloreRecord.fromSnapshot(s));

  static Future<EfBangaloreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EfBangaloreRecord.fromSnapshot(s));

  static EfBangaloreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EfBangaloreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EfBangaloreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EfBangaloreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EfBangaloreRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEfBangaloreRecordData({
  String? nameOfFestival,
  String? where,
  String? duration,
  String? famousFor,
  String? images,
  int? no,
  String? when,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name-of-festival': nameOfFestival,
      'where': where,
      'duration': duration,
      'famous-for': famousFor,
      'Images': images,
      'No': no,
      'when': when,
    }.withoutNulls,
  );

  return firestoreData;
}
