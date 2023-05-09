import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ef_bangalore_record.g.dart';

abstract class EfBangaloreRecord
    implements Built<EfBangaloreRecord, EfBangaloreRecordBuilder> {
  static Serializer<EfBangaloreRecord> get serializer =>
      _$efBangaloreRecordSerializer;

  @BuiltValueField(wireName: 'Name-of-festival')
  String? get nameOfFestival;

  String? get when;

  String? get where;

  String? get duration;

  @BuiltValueField(wireName: 'famous-for')
  String? get famousFor;

  @BuiltValueField(wireName: 'Images')
  String? get images;

  @BuiltValueField(wireName: 'No')
  int? get no;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EfBangaloreRecordBuilder builder) => builder
    ..nameOfFestival = ''
    ..when = ''
    ..where = ''
    ..duration = ''
    ..famousFor = ''
    ..images = ''
    ..no = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('efBangalore');

  static Stream<EfBangaloreRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EfBangaloreRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EfBangaloreRecord._();
  factory EfBangaloreRecord([void Function(EfBangaloreRecordBuilder) updates]) =
      _$EfBangaloreRecord;

  static EfBangaloreRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEfBangaloreRecordData({
  String? nameOfFestival,
  String? when,
  String? where,
  String? duration,
  String? famousFor,
  String? images,
  int? no,
}) {
  final firestoreData = serializers.toFirestore(
    EfBangaloreRecord.serializer,
    EfBangaloreRecord(
      (e) => e
        ..nameOfFestival = nameOfFestival
        ..when = when
        ..where = where
        ..duration = duration
        ..famousFor = famousFor
        ..images = images
        ..no = no,
    ),
  );

  return firestoreData;
}
