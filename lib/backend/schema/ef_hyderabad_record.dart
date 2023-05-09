import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ef_hyderabad_record.g.dart';

abstract class EfHyderabadRecord
    implements Built<EfHyderabadRecord, EfHyderabadRecordBuilder> {
  static Serializer<EfHyderabadRecord> get serializer =>
      _$efHyderabadRecordSerializer;

  @BuiltValueField(wireName: 'No')
  bool? get no;

  @BuiltValueField(wireName: 'Name-of-festival')
  String? get nameOfFestival;

  @BuiltValueField(wireName: 'When')
  String? get when;

  @BuiltValueField(wireName: 'Where')
  String? get where;

  @BuiltValueField(wireName: 'Duration')
  String? get duration;

  @BuiltValueField(wireName: 'famous-for')
  String? get famousFor;

  @BuiltValueField(wireName: 'Images')
  String? get images;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EfHyderabadRecordBuilder builder) => builder
    ..no = false
    ..nameOfFestival = ''
    ..when = ''
    ..where = ''
    ..duration = ''
    ..famousFor = ''
    ..images = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('efHyderabad');

  static Stream<EfHyderabadRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EfHyderabadRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EfHyderabadRecord._();
  factory EfHyderabadRecord([void Function(EfHyderabadRecordBuilder) updates]) =
      _$EfHyderabadRecord;

  static EfHyderabadRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEfHyderabadRecordData({
  bool? no,
  String? nameOfFestival,
  String? when,
  String? where,
  String? duration,
  String? famousFor,
  String? images,
}) {
  final firestoreData = serializers.toFirestore(
    EfHyderabadRecord.serializer,
    EfHyderabadRecord(
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
