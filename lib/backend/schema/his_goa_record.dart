import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HisGoaRecord extends FirestoreRecord {
  HisGoaRecord._(
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

  // "image" field.
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

  // "Rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  void _initializeFields() {
    _url = snapshotData['Url'] as String?;
    _name = snapshotData['Name'] as String?;
    _type = snapshotData['Type'] as String?;
    _image = snapshotData['image'] as String?;
    _no = snapshotData['No'] as int?;
    _review = snapshotData['Review'] as int?;
    _rate = castToType<double>(snapshotData['Rate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hisGoa');

  static Stream<HisGoaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HisGoaRecord.fromSnapshot(s));

  static Future<HisGoaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HisGoaRecord.fromSnapshot(s));

  static HisGoaRecord fromSnapshot(DocumentSnapshot snapshot) => HisGoaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HisGoaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HisGoaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HisGoaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHisGoaRecordData({
  String? url,
  String? name,
  String? type,
  String? image,
  int? no,
  int? review,
  double? rate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Url': url,
      'Name': name,
      'Type': type,
      'image': image,
      'No': no,
      'Review': review,
      'Rate': rate,
    }.withoutNulls,
  );

  return firestoreData;
}
