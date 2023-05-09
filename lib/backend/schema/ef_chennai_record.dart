import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ef_chennai_record.g.dart';

abstract class EfChennaiRecord
    implements Built<EfChennaiRecord, EfChennaiRecordBuilder> {
  static Serializer<EfChennaiRecord> get serializer =>
      _$efChennaiRecordSerializer;

  @BuiltValueField(wireName: 'No')
  bool? get no;

  @BuiltValueField(wireName: 'Name-of-festival')
  String? get nameOfFestival;

  String? get when;

  String? get where;

  String? get duration;

  @BuiltValueField(wireName: 'famous-for')
  String? get famousFor;

  @BuiltValueField(wireName: 'Images')
  String? get images;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EfChennaiRecordBuilder builder) => builder
    ..no = false
    ..nameOfFestival = ''
    ..when = ''
    ..where = ''
    ..duration = ''
    ..famousFor = ''
    ..images = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('efChennai');

  static Stream<EfChennaiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EfChennaiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EfChennaiRecord._();
  factory EfChennaiRecord([void Function(EfChennaiRecordBuilder) updates]) =
      _$EfChennaiRecord;

  static EfChennaiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEfChennaiRecordData({
  bool? no,
  String? nameOfFestival,
  String? when,
  String? where,
  String? duration,
  String? famousFor,
  String? images,
}) {
  final firestoreData = serializers.toFirestore(
    EfChennaiRecord.serializer,
    EfChennaiRecord(
      (e) => e
        ..no = no
        ..nameOfFestival = nameOfFestival
        ..when = when
        ..where = where
        ..duration = duration
        ..famousFor = famousFor
        ..images = images,
    ),
  );

  return firestoreData;
}
