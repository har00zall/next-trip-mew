import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HisChennaiRecord extends FirestoreRecord {
  HisChennaiRecord._(
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
      FirebaseFirestore.instance.collection('hisChennai');

  static Stream<HisChennaiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HisChennaiRecord.fromSnapshot(s));

  static Future<HisChennaiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HisChennaiRecord.fromSnapshot(s));

  static HisChennaiRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HisChennaiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HisChennaiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HisChennaiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HisChennaiRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHisChennaiRecordData({
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
