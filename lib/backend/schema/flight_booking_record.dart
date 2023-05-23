import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FlightBookingRecord extends FirestoreRecord {
  FlightBookingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "User_Name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "Mobile_No" field.
  String? _mobileNo;
  String get mobileNo => _mobileNo ?? '';
  bool hasMobileNo() => _mobileNo != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "No_Adults" field.
  String? _noAdults;
  String get noAdults => _noAdults ?? '';
  bool hasNoAdults() => _noAdults != null;

  // "Airline_Name" field.
  String? _airlineName;
  String get airlineName => _airlineName ?? '';
  bool hasAirlineName() => _airlineName != null;

  // "From" field.
  String? _from;
  String get from => _from ?? '';
  bool hasFrom() => _from != null;

  // "To" field.
  String? _to;
  String get to => _to ?? '';
  bool hasTo() => _to != null;

  // "Time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "Departure_Date" field.
  String? _departureDate;
  String get departureDate => _departureDate ?? '';
  bool hasDepartureDate() => _departureDate != null;

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

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

  // "Payment_Method4" field.
  String? _paymentMethod4;
  String get paymentMethod4 => _paymentMethod4 ?? '';
  bool hasPaymentMethod4() => _paymentMethod4 != null;

  void _initializeFields() {
    _userName = snapshotData['User_Name'] as String?;
    _mobileNo = snapshotData['Mobile_No'] as String?;
    _email = snapshotData['Email'] as String?;
    _noAdults = snapshotData['No_Adults'] as String?;
    _airlineName = snapshotData['Airline_Name'] as String?;
    _from = snapshotData['From'] as String?;
    _to = snapshotData['To'] as String?;
    _time = snapshotData['Time'] as String?;
    _departureDate = snapshotData['Departure_Date'] as String?;
    _price = snapshotData['Price'] as String?;
    _paymentMethod1 = snapshotData['Payment_Method1'] as String?;
    _paymentMethod2 = snapshotData['Payment_Method2'] as String?;
    _paymentMethod3 = snapshotData['Payment_Method3'] as String?;
    _paymentMethod4 = snapshotData['Payment_Method4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('flightBooking');

  static Stream<FlightBookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FlightBookingRecord.fromSnapshot(s));

  static Future<FlightBookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FlightBookingRecord.fromSnapshot(s));

  static FlightBookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FlightBookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FlightBookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FlightBookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FlightBookingRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createFlightBookingRecordData({
  String? userName,
  String? mobileNo,
  String? email,
  String? noAdults,
  String? airlineName,
  String? from,
  String? to,
  String? time,
  String? departureDate,
  String? price,
  String? paymentMethod1,
  String? paymentMethod2,
  String? paymentMethod3,
  String? paymentMethod4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'User_Name': userName,
      'Mobile_No': mobileNo,
      'Email': email,
      'No_Adults': noAdults,
      'Airline_Name': airlineName,
      'From': from,
      'To': to,
      'Time': time,
      'Departure_Date': departureDate,
      'Price': price,
      'Payment_Method1': paymentMethod1,
      'Payment_Method2': paymentMethod2,
      'Payment_Method3': paymentMethod3,
      'Payment_Method4': paymentMethod4,
    }.withoutNulls,
  );

  return firestoreData;
}
