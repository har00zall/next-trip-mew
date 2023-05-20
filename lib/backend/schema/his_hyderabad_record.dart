import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HisHyderabadRecord extends FirestoreRecord {
  HisHyderabadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  // "No" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  // "Review" field.
  int? _review;
  int get review => _review ?? 0;
  bool hasReview() => _review != null;

  // "Rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  void _initializeFields() {
    _url = snapshotData['Url'] as String?;
    _name = snapshotData['Name'] as String?;
    _type = snapshotData['Type'] as String?;
    _images = snapshotData['images'] as String?;
    _no = snapshotData['No'] as int?;
    _review = snapshotData['Review'] as int?;
    _rate = castToType<double>(snapshotData['Rate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hisHyderabad');

  static Stream<HisHyderabadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HisHyderabadRecord.fromSnapshot(s));

  static Future<HisHyderabadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HisHyderabadRecord.fromSnapshot(s));

  static HisHyderabadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HisHyderabadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HisHyderabadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HisHyderabadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HisHyderabadRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHisHyderabadRecordData({
  String? url,
  String? name,
  String? type,
  String? images,
  int? no,
  int? review,
  double? rate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Url': url,
      'Name': name,
      'Type': type,
      'images': images,
      'No': no,
      'Review': review,
      'Rate': rate,
    }.withoutNulls,
  );

  return firestoreData;
}
