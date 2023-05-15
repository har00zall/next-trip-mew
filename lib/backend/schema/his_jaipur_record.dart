import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'his_jaipur_record.g.dart';

abstract class HisJaipurRecord
    implements Built<HisJaipurRecord, HisJaipurRecordBuilder> {
  static Serializer<HisJaipurRecord> get serializer =>
      _$hisJaipurRecordSerializer;

  @BuiltValueField(wireName: 'Url')
  String? get url;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  String? get images;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: 'Rate')
  double? get rate;

  @BuiltValueField(wireName: 'Review')
  int? get review;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HisJaipurRecordBuilder builder) => builder
    ..url = ''
    ..name = ''
    ..type = ''
    ..images = ''
    ..no = 0
    ..rate = 0.0
    ..review = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hisJaipur');

  static Stream<HisJaipurRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HisJaipurRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HisJaipurRecord._();
  factory HisJaipurRecord([void Function(HisJaipurRecordBuilder) updates]) =
      _$HisJaipurRecord;

  static HisJaipurRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHisJaipurRecordData({
  String? url,
  String? name,
  String? type,
  String? images,
  int? no,
  double? rate,
  int? review,
}) {
  final firestoreData = serializers.toFirestore(
    HisJaipurRecord.serializer,
    HisJaipurRecord(
      (h) => h
        ..url = url
        ..name = name
        ..type = type
        ..images = images
        ..no = no
        ..rate = rate
        ..review = review,
    ),
  );

  return firestoreData;
}
