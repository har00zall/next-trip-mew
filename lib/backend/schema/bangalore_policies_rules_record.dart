import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BangalorePoliciesRulesRecord extends FirestoreRecord {
  BangalorePoliciesRulesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Column10" field.
  String? _column10;
  String get column10 => _column10 ?? '';
  bool hasColumn10() => _column10 != null;

  // "Column11" field.
  String? _column11;
  String get column11 => _column11 ?? '';
  bool hasColumn11() => _column11 != null;

  // "Column12" field.
  String? _column12;
  String get column12 => _column12 ?? '';
  bool hasColumn12() => _column12 != null;

  // "Column13" field.
  String? _column13;
  String get column13 => _column13 ?? '';
  bool hasColumn13() => _column13 != null;

  // "Column14" field.
  String? _column14;
  String get column14 => _column14 ?? '';
  bool hasColumn14() => _column14 != null;

  // "Column15" field.
  String? _column15;
  String get column15 => _column15 ?? '';
  bool hasColumn15() => _column15 != null;

  // "Column16" field.
  String? _column16;
  String get column16 => _column16 ?? '';
  bool hasColumn16() => _column16 != null;

  // "Column17" field.
  String? _column17;
  String get column17 => _column17 ?? '';
  bool hasColumn17() => _column17 != null;

  // "Column18" field.
  String? _column18;
  String get column18 => _column18 ?? '';
  bool hasColumn18() => _column18 != null;

  // "Column19" field.
  String? _column19;
  String get column19 => _column19 ?? '';
  bool hasColumn19() => _column19 != null;

  // "Column2" field.
  String? _column2;
  String get column2 => _column2 ?? '';
  bool hasColumn2() => _column2 != null;

  // "Column20" field.
  String? _column20;
  String get column20 => _column20 ?? '';
  bool hasColumn20() => _column20 != null;

  // "Column21" field.
  String? _column21;
  String get column21 => _column21 ?? '';
  bool hasColumn21() => _column21 != null;

  // "Column22" field.
  String? _column22;
  String get column22 => _column22 ?? '';
  bool hasColumn22() => _column22 != null;

  // "Column23" field.
  String? _column23;
  String get column23 => _column23 ?? '';
  bool hasColumn23() => _column23 != null;

  // "Column24" field.
  String? _column24;
  String get column24 => _column24 ?? '';
  bool hasColumn24() => _column24 != null;

  // "Column25" field.
  String? _column25;
  String get column25 => _column25 ?? '';
  bool hasColumn25() => _column25 != null;

  // "Column26" field.
  String? _column26;
  String get column26 => _column26 ?? '';
  bool hasColumn26() => _column26 != null;

  // "Column27" field.
  String? _column27;
  String get column27 => _column27 ?? '';
  bool hasColumn27() => _column27 != null;

  // "Column28" field.
  String? _column28;
  String get column28 => _column28 ?? '';
  bool hasColumn28() => _column28 != null;

  // "Column29" field.
  String? _column29;
  String get column29 => _column29 ?? '';
  bool hasColumn29() => _column29 != null;

  // "Column3" field.
  String? _column3;
  String get column3 => _column3 ?? '';
  bool hasColumn3() => _column3 != null;

  // "Column30" field.
  String? _column30;
  String get column30 => _column30 ?? '';
  bool hasColumn30() => _column30 != null;

  // "Column4" field.
  String? _column4;
  String get column4 => _column4 ?? '';
  bool hasColumn4() => _column4 != null;

  // "Column5" field.
  String? _column5;
  String get column5 => _column5 ?? '';
  bool hasColumn5() => _column5 != null;

  // "Column6" field.
  String? _column6;
  String get column6 => _column6 ?? '';
  bool hasColumn6() => _column6 != null;

  // "Column7" field.
  String? _column7;
  String get column7 => _column7 ?? '';
  bool hasColumn7() => _column7 != null;

  // "Column8" field.
  String? _column8;
  String get column8 => _column8 ?? '';
  bool hasColumn8() => _column8 != null;

  void _initializeFields() {
    _column10 = snapshotData['Column10'] as String?;
    _column11 = snapshotData['Column11'] as String?;
    _column12 = snapshotData['Column12'] as String?;
    _column13 = snapshotData['Column13'] as String?;
    _column14 = snapshotData['Column14'] as String?;
    _column15 = snapshotData['Column15'] as String?;
    _column16 = snapshotData['Column16'] as String?;
    _column17 = snapshotData['Column17'] as String?;
    _column18 = snapshotData['Column18'] as String?;
    _column19 = snapshotData['Column19'] as String?;
    _column2 = snapshotData['Column2'] as String?;
    _column20 = snapshotData['Column20'] as String?;
    _column21 = snapshotData['Column21'] as String?;
    _column22 = snapshotData['Column22'] as String?;
    _column23 = snapshotData['Column23'] as String?;
    _column24 = snapshotData['Column24'] as String?;
    _column25 = snapshotData['Column25'] as String?;
    _column26 = snapshotData['Column26'] as String?;
    _column27 = snapshotData['Column27'] as String?;
    _column28 = snapshotData['Column28'] as String?;
    _column29 = snapshotData['Column29'] as String?;
    _column3 = snapshotData['Column3'] as String?;
    _column30 = snapshotData['Column30'] as String?;
    _column4 = snapshotData['Column4'] as String?;
    _column5 = snapshotData['Column5'] as String?;
    _column6 = snapshotData['Column6'] as String?;
    _column7 = snapshotData['Column7'] as String?;
    _column8 = snapshotData['Column8'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bangalorePoliciesRules');

  static Stream<BangalorePoliciesRulesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => BangalorePoliciesRulesRecord.fromSnapshot(s));

  static Future<BangalorePoliciesRulesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BangalorePoliciesRulesRecord.fromSnapshot(s));

  static BangalorePoliciesRulesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BangalorePoliciesRulesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BangalorePoliciesRulesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BangalorePoliciesRulesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BangalorePoliciesRulesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createBangalorePoliciesRulesRecordData({
  String? column10,
  String? column11,
  String? column12,
  String? column13,
  String? column14,
  String? column15,
  String? column16,
  String? column17,
  String? column18,
  String? column19,
  String? column2,
  String? column20,
  String? column21,
  String? column22,
  String? column23,
  String? column24,
  String? column25,
  String? column26,
  String? column27,
  String? column28,
  String? column29,
  String? column3,
  String? column30,
  String? column4,
  String? column5,
  String? column6,
  String? column7,
  String? column8,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Column10': column10,
      'Column11': column11,
      'Column12': column12,
      'Column13': column13,
      'Column14': column14,
      'Column15': column15,
      'Column16': column16,
      'Column17': column17,
      'Column18': column18,
      'Column19': column19,
      'Column2': column2,
      'Column20': column20,
      'Column21': column21,
      'Column22': column22,
      'Column23': column23,
      'Column24': column24,
      'Column25': column25,
      'Column26': column26,
      'Column27': column27,
      'Column28': column28,
      'Column29': column29,
      'Column3': column3,
      'Column30': column30,
      'Column4': column4,
      'Column5': column5,
      'Column6': column6,
      'Column7': column7,
      'Column8': column8,
    }.withoutNulls,
  );

  return firestoreData;
}
