import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelBookingRecord extends FirestoreRecord {
  HotelBookingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Guest_Name" field.
  String? _guestName;
  String get guestName => _guestName ?? '';
  bool hasGuestName() => _guestName != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "No_Rooms" field.
  String? _noRooms;
  String get noRooms => _noRooms ?? '';
  bool hasNoRooms() => _noRooms != null;

  // "No_Adults" field.
  String? _noAdults;
  String get noAdults => _noAdults ?? '';
  bool hasNoAdults() => _noAdults != null;

  // "Check_In" field.
  String? _checkIn;
  String get checkIn => _checkIn ?? '';
  bool hasCheckIn() => _checkIn != null;

  // "Check_Out" field.
  String? _checkOut;
  String get checkOut => _checkOut ?? '';
  bool hasCheckOut() => _checkOut != null;

  // "Room_Type" field.
  String? _roomType;
  String get roomType => _roomType ?? '';
  bool hasRoomType() => _roomType != null;

  // "Mobile_No" field.
  String? _mobileNo;
  String get mobileNo => _mobileNo ?? '';
  bool hasMobileNo() => _mobileNo != null;

  // "Hotel_Name" field.
  String? _hotelName;
  String get hotelName => _hotelName ?? '';
  bool hasHotelName() => _hotelName != null;

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "Payment_Method" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "Payment_Method1" field.
  String? _paymentMethod1;
  String get paymentMethod1 => _paymentMethod1 ?? '';
  bool hasPaymentMethod1() => _paymentMethod1 != null;

  // "Payment_Method2" field.
  String? _paymentMethod2;
  String get paymentMethod2 => _paymentMethod2 ?? '';
  bool hasPaymentMethod2() => _paymentMethod2 != null;

  // "Payment_Method3" field.
  String? _paymentMethod3;
  String get paymentMethod3 => _paymentMethod3 ?? '';
  bool hasPaymentMethod3() => _paymentMethod3 != null;

  void _initializeFields() {
    _guestName = snapshotData['Guest_Name'] as String?;
    _email = snapshotData['Email'] as String?;
    _noRooms = snapshotData['No_Rooms'] as String?;
    _noAdults = snapshotData['No_Adults'] as String?;
    _checkIn = snapshotData['Check_In'] as String?;
    _checkOut = snapshotData['Check_Out'] as String?;
    _roomType = snapshotData['Room_Type'] as String?;
    _mobileNo = snapshotData['Mobile_No'] as String?;
    _hotelName = snapshotData['Hotel_Name'] as String?;
    _price = snapshotData['Price'] as String?;
    _paymentMethod = snapshotData['Payment_Method'] as String?;
    _paymentMethod1 = snapshotData['Payment_Method1'] as String?;
    _paymentMethod2 = snapshotData['Payment_Method2'] as String?;
    _paymentMethod3 = snapshotData['Payment_Method3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hotelBooking');

  static Stream<HotelBookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HotelBookingRecord.fromSnapshot(s));

  static Future<HotelBookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HotelBookingRecord.fromSnapshot(s));

  static HotelBookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HotelBookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HotelBookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HotelBookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HotelBookingRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createHotelBookingRecordData({
  String? guestName,
  String? email,
  String? noRooms,
  String? noAdults,
  String? checkIn,
  String? checkOut,
  String? roomType,
  String? mobileNo,
  String? hotelName,
  String? price,
  String? paymentMethod,
  String? paymentMethod1,
  String? paymentMethod2,
  String? paymentMethod3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Guest_Name': guestName,
      'Email': email,
      'No_Rooms': noRooms,
      'No_Adults': noAdults,
      'Check_In': checkIn,
      'Check_Out': checkOut,
      'Room_Type': roomType,
      'Mobile_No': mobileNo,
      'Hotel_Name': hotelName,
      'Price': price,
      'Payment_Method': paymentMethod,
      'Payment_Method1': paymentMethod1,
      'Payment_Method2': paymentMethod2,
      'Payment_Method3': paymentMethod3,
    }.withoutNulls,
  );

  return firestoreData;
}
