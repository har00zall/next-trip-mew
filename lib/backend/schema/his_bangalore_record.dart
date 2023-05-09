import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'his_bangalore_record.g.dart';

abstract class HisBangaloreRecord
    implements Built<HisBangaloreRecord, HisBangaloreRecordBuilder> {
  static Serializer<HisBangaloreRecord> get serializer =>
      _$hisBangaloreRecordSerializer;

  @BuiltValueField(wireName: 'Url')
  String? get url;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  String? get image;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'Rate')
  double? get rate;

  @BuiltValueField(wireName: 'Review')
  int? get review;

  @BuiltValueField(wireName: 'Names')
  String? get names;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HisBangaloreRecordBuilder builder) => builder
    ..url = ''
    ..type = ''
    ..image = ''
    ..no = 0
    ..rate = 0.0
    ..review = 0
    ..names = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hisBangalore');

  static Stream<HisBangaloreRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HisBangaloreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HisBangaloreRecord._();
  factory HisBangaloreRecord(
          [void Function(HisBangaloreRecordBuilder) updates]) =
      _$HisBangaloreRecord;

  static HisBangaloreRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
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
  final firestoreData = serializers.toFirestore(
    HisBangaloreRecord.serializer,
    HisBangaloreRecord(
      (h) => h
        ..url = url
        ..type = type
        ..image = image
        ..no = no
        ..rate = rate
        ..review = review
        ..names = names,
    ),
  );

  return firestoreData;
}
