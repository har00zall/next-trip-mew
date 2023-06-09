import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'his_chennai_record.g.dart';

abstract class HisChennaiRecord
    implements Built<HisChennaiRecord, HisChennaiRecordBuilder> {
  static Serializer<HisChennaiRecord> get serializer =>
      _$hisChennaiRecordSerializer;

  @BuiltValueField(wireName: 'Url')
  String? get url;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Rate')
  bool? get rate;

  @BuiltValueField(wireName: 'Review')
  bool? get review;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  String? get images;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HisChennaiRecordBuilder builder) => builder
    ..url = ''
    ..name = ''
    ..rate = false
    ..review = false
    ..type = ''
    ..images = ''
    ..no = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hisChennai');

  static Stream<HisChennaiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HisChennaiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HisChennaiRecord._();
  factory HisChennaiRecord([void Function(HisChennaiRecordBuilder) updates]) =
      _$HisChennaiRecord;

  static HisChennaiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHisChennaiRecordData({
  String? url,
  String? name,
  bool? rate,
  bool? review,
  String? type,
  String? images,
  int? no,
}) {
  final firestoreData = serializers.toFirestore(
    HisChennaiRecord.serializer,
    HisChennaiRecord(
      (h) => h
        ..url = url
        ..name = name
        ..rate = rate
        ..review = review
        ..type = type
        ..images = images
        ..no = no,
    ),
  );

  return firestoreData;
}
