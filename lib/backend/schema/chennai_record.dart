import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chennai_record.g.dart';

abstract class ChennaiRecord
    implements Built<ChennaiRecord, ChennaiRecordBuilder> {
  static Serializer<ChennaiRecord> get serializer => _$chennaiRecordSerializer;

  @BuiltValueField(wireName: 'Hotel_Name')
  String? get hotelName;

  @BuiltValueField(wireName: 'Hotel_Address')
  String? get hotelAddress;

  @BuiltValueField(wireName: 'Rate')
  double? get rate;

  @BuiltValueField(wireName: 'Images')
  String? get images;

  @BuiltValueField(wireName: 'Star')
  String? get star;

  @BuiltValueField(wireName: 'Url')
  String? get url;

  @BuiltValueField(wireName: 'Specification')
  String? get specification;

  @BuiltValueField(wireName: 'Facility')
  String? get facility;

  @BuiltValueField(wireName: 'Facility2')
  String? get facility2;

  @BuiltValueField(wireName: 'Facility3')
  String? get facility3;

  @BuiltValueField(wireName: 'Facility4')
  String? get facility4;

  @BuiltValueField(wireName: 'Room_Type1')
  String? get roomType1;

  @BuiltValueField(wireName: 'Bed_Type1')
  String? get bedType1;

  @BuiltValueField(wireName: 'Room_View1')
  String? get roomView1;

  @BuiltValueField(wireName: 'Room_Size1')
  String? get roomSize1;

  @BuiltValueField(wireName: 'Room_Image1')
  String? get roomImage1;

  @BuiltValueField(wireName: 'Room_Type2')
  String? get roomType2;

  @BuiltValueField(wireName: 'Bed_Type2')
  String? get bedType2;

  @BuiltValueField(wireName: 'Room_View2')
  String? get roomView2;

  @BuiltValueField(wireName: 'Room_Size2')
  String? get roomSize2;

  @BuiltValueField(wireName: 'Room_Image2')
  String? get roomImage2;

  @BuiltValueField(wireName: 'Check_in')
  String? get checkIn;

  @BuiltValueField(wireName: 'Check_out')
  String? get checkOut;

  @BuiltValueField(wireName: 'Price')
  double? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChennaiRecordBuilder builder) => builder
    ..hotelName = ''
    ..hotelAddress = ''
    ..rate = 0.0
    ..images = ''
    ..star = ''
    ..url = ''
    ..specification = ''
    ..facility = ''
    ..facility2 = ''
    ..facility3 = ''
    ..facility4 = ''
    ..roomType1 = ''
    ..bedType1 = ''
    ..roomView1 = ''
    ..roomSize1 = ''
    ..roomImage1 = ''
    ..roomType2 = ''
    ..bedType2 = ''
    ..roomView2 = ''
    ..roomSize2 = ''
    ..roomImage2 = ''
    ..checkIn = ''
    ..checkOut = ''
    ..price = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chennai');

  static Stream<ChennaiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChennaiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChennaiRecord._();
  factory ChennaiRecord([void Function(ChennaiRecordBuilder) updates]) =
      _$ChennaiRecord;

  static ChennaiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChennaiRecordData({
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
  final firestoreData = serializers.toFirestore(
    ChennaiRecord.serializer,
    ChennaiRecord(
      (c) => c
        ..hotelName = hotelName
        ..hotelAddress = hotelAddress
        ..rate = rate
        ..images = images
        ..star = star
        ..url = url
        ..specification = specification
        ..facility = facility
        ..facility2 = facility2
        ..facility3 = facility3
        ..facility4 = facility4
        ..roomType1 = roomType1
        ..bedType1 = bedType1
        ..roomView1 = roomView1
        ..roomSize1 = roomSize1
        ..roomImage1 = roomImage1
        ..roomType2 = roomType2
        ..bedType2 = bedType2
        ..roomView2 = roomView2
        ..roomSize2 = roomSize2
        ..roomImage2 = roomImage2
        ..checkIn = checkIn
        ..checkOut = checkOut
        ..price = price,
    ),
  );

  return firestoreData;
}
