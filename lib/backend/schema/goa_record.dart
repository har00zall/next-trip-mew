import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoaRecord extends FirestoreRecord {
  GoaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Hotel_Name" field.
  String? _hotelName;
  String get hotelName => _hotelName ?? '';
  bool hasHotelName() => _hotelName != null;

  // "Hotel_Address" field.
  String? _hotelAddress;
  String get hotelAddress => _hotelAddress ?? '';
  bool hasHotelAddress() => _hotelAddress != null;

  // "Rate" field.
  double? _rate;
  double get rate => _rate ?? 0.0;
  bool hasRate() => _rate != null;

  // "Images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  // "Star" field.
  String? _star;
  String get star => _star ?? '';
  bool hasStar() => _star != null;

  // "Url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  // "Specification" field.
  String? _specification;
  String get specification => _specification ?? '';
  bool hasSpecification() => _specification != null;

  // "Facility" field.
  String? _facility;
  String get facility => _facility ?? '';
  bool hasFacility() => _facility != null;

  // "Facility2" field.
  String? _facility2;
  String get facility2 => _facility2 ?? '';
  bool hasFacility2() => _facility2 != null;

  // "Facility3" field.
  String? _facility3;
  String get facility3 => _facility3 ?? '';
  bool hasFacility3() => _facility3 != null;

  // "Facility4" field.
  String? _facility4;
  String get facility4 => _facility4 ?? '';
  bool hasFacility4() => _facility4 != null;

  // "Room_Type1" field.
  String? _roomType1;
  String get roomType1 => _roomType1 ?? '';
  bool hasRoomType1() => _roomType1 != null;

  // "Bed_Type1" field.
  String? _bedType1;
  String get bedType1 => _bedType1 ?? '';
  bool hasBedType1() => _bedType1 != null;

  // "Room_View1" field.
  String? _roomView1;
  String get roomView1 => _roomView1 ?? '';
  bool hasRoomView1() => _roomView1 != null;

  // "Room_Size1" field.
  String? _roomSize1;
  String get roomSize1 => _roomSize1 ?? '';
  bool hasRoomSize1() => _roomSize1 != null;

  // "Room_Image1" field.
  String? _roomImage1;
  String get roomImage1 => _roomImage1 ?? '';
  bool hasRoomImage1() => _roomImage1 != null;

  // "Room_Type2" field.
  String? _roomType2;
  String get roomType2 => _roomType2 ?? '';
  bool hasRoomType2() => _roomType2 != null;

  // "Bed_Type2" field.
  String? _bedType2;
  String get bedType2 => _bedType2 ?? '';
  bool hasBedType2() => _bedType2 != null;

  // "Room_View2" field.
  String? _roomView2;
  String get roomView2 => _roomView2 ?? '';
  bool hasRoomView2() => _roomView2 != null;

  // "Room_Size2" field.
  String? _roomSize2;
  String get roomSize2 => _roomSize2 ?? '';
  bool hasRoomSize2() => _roomSize2 != null;

  // "Room_Image2" field.
  String? _roomImage2;
  String get roomImage2 => _roomImage2 ?? '';
  bool hasRoomImage2() => _roomImage2 != null;

  // "Check_in" field.
  String? _checkIn;
  String get checkIn => _checkIn ?? '';
  bool hasCheckIn() => _checkIn != null;

  // "Check_out" field.
  String? _checkOut;
  String get checkOut => _checkOut ?? '';
  bool hasCheckOut() => _checkOut != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _hotelName = snapshotData['Hotel_Name'] as String?;
    _hotelAddress = snapshotData['Hotel_Address'] as String?;
    _rate = castToType<double>(snapshotData['Rate']);
    _images = snapshotData['Images'] as String?;
    _star = snapshotData['Star'] as String?;
    _url = snapshotData['Url'] as String?;
    _specification = snapshotData['Specification'] as String?;
    _facility = snapshotData['Facility'] as String?;
    _facility2 = snapshotData['Facility2'] as String?;
    _facility3 = snapshotData['Facility3'] as String?;
    _facility4 = snapshotData['Facility4'] as String?;
    _roomType1 = snapshotData['Room_Type1'] as String?;
    _bedType1 = snapshotData['Bed_Type1'] as String?;
    _roomView1 = snapshotData['Room_View1'] as String?;
    _roomSize1 = snapshotData['Room_Size1'] as String?;
    _roomImage1 = snapshotData['Room_Image1'] as String?;
    _roomType2 = snapshotData['Room_Type2'] as String?;
    _bedType2 = snapshotData['Bed_Type2'] as String?;
    _roomView2 = snapshotData['Room_View2'] as String?;
    _roomSize2 = snapshotData['Room_Size2'] as String?;
    _roomImage2 = snapshotData['Room_Image2'] as String?;
    _checkIn = snapshotData['Check_in'] as String?;
    _checkOut = snapshotData['Check_out'] as String?;
    _price = castToType<double>(snapshotData['Price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goa');

  static Stream<GoaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoaRecord.fromSnapshot(s));

  static Future<GoaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoaRecord.fromSnapshot(s));

  static GoaRecord fromSnapshot(DocumentSnapshot snapshot) => GoaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createGoaRecordData({
  String? hotelName,
  String? hotelAddress,
  double? rate,
  String? images,
  String? star,
  String? url,
  String? specification,
  String? facility,
  String? facility2,
  String? facility3,
  String? facility4,
  String? roomType1,
  String? bedType1,
  String? roomView1,
  String? roomSize1,
  String? roomImage1,
  String? roomType2,
  String? bedType2,
  String? roomView2,
  String? roomSize2,
  String? roomImage2,
  String? checkIn,
  String? checkOut,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Hotel_Name': hotelName,
      'Hotel_Address': hotelAddress,
      'Rate': rate,
      'Images': images,
      'Star': star,
      'Url': url,
      'Specification': specification,
      'Facility': facility,
      'Facility2': facility2,
      'Facility3': facility3,
      'Facility4': facility4,
      'Room_Type1': roomType1,
      'Bed_Type1': bedType1,
      'Room_View1': roomView1,
      'Room_Size1': roomSize1,
      'Room_Image1': roomImage1,
      'Room_Type2': roomType2,
      'Bed_Type2': bedType2,
      'Room_View2': roomView2,
      'Room_Size2': roomSize2,
      'Room_Image2': roomImage2,
      'Check_in': checkIn,
      'Check_out': checkOut,
      'Price': price,
    }.withoutNulls,
  );

  return firestoreData;
}
