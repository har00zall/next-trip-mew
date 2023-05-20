import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HisBangaloreRecord extends FirestoreRecord {
  HisBangaloreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "No" field.
  int? _no;
  int get no => _no ?? 0;
  bool hasNo() => _no != null;

  // "Rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "Review" field.
  int? _review;
  int get review => _review ?? 0;
  bool hasReview() => _review != null;

  // "Names" field.
  String? _names;
  String get names => _names ?? '';
  bool hasNames() => _names != null;

  void _initializeFields() {
    _url = snapshotData['Url'] as String?;
    _type = snapshotData['Type'] as String?;
    _image = snapshotData['image'] as String?;
    _no = snapshotData['No'] as int?;
    _rate = castToType<double>(snapshotData['Rate']);
    _review = snapshotData['Review'] as int?;
    _names = snapshotData['Names'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hisBangalore');

  static Stream<HisBangaloreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HisBangaloreRecord.fromSnapshot(s));

  static Future<HisBangaloreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HisBangaloreRecord.fromSnapshot(s));

  static HisBangaloreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HisBangaloreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HisBangaloreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HisBangaloreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HisBangaloreRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHisBangaloreRecordData({
  String? url,
  String? type,
  String? image,
  int? no,
  double? rate,
  int? review,
  String? names,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Url': url,
      'Type': type,
      'image': image,
      'No': no,
      'Rate': rate,
      'Review': review,
      'Names': names,
    }.withoutNulls,
  );

  return firestoreData;
}
