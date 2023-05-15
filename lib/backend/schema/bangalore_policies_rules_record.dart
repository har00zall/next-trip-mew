import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bangalore_policies_rules_record.g.dart';

abstract class BangalorePoliciesRulesRecord
    implements
        Built<BangalorePoliciesRulesRecord,
            BangalorePoliciesRulesRecordBuilder> {
  static Serializer<BangalorePoliciesRulesRecord> get serializer =>
      _$bangalorePoliciesRulesRecordSerializer;

  @BuiltValueField(wireName: 'Column10')
  String? get column10;

  @BuiltValueField(wireName: 'Column11')
  String? get column11;

  @BuiltValueField(wireName: 'Column12')
  String? get column12;

  @BuiltValueField(wireName: 'Column13')
  String? get column13;

  @BuiltValueField(wireName: 'Column14')
  String? get column14;

  @BuiltValueField(wireName: 'Column15')
  String? get column15;

  @BuiltValueField(wireName: 'Column16')
  String? get column16;

  @BuiltValueField(wireName: 'Column17')
  String? get column17;

  @BuiltValueField(wireName: 'Column18')
  String? get column18;

  @BuiltValueField(wireName: 'Column19')
  String? get column19;

  @BuiltValueField(wireName: 'Column2')
  String? get column2;

  @BuiltValueField(wireName: 'Column20')
  String? get column20;

  @BuiltValueField(wireName: 'Column21')
  String? get column21;

  @BuiltValueField(wireName: 'Column22')
  String? get column22;

  @BuiltValueField(wireName: 'Column23')
  String? get column23;

  @BuiltValueField(wireName: 'Column24')
  String? get column24;

  @BuiltValueField(wireName: 'Column25')
  String? get column25;

  @BuiltValueField(wireName: 'Column26')
  String? get column26;

  @BuiltValueField(wireName: 'Column27')
  String? get column27;

  @BuiltValueField(wireName: 'Column28')
  String? get column28;

  @BuiltValueField(wireName: 'Column29')
  String? get column29;

  @BuiltValueField(wireName: 'Column3')
  String? get column3;

  @BuiltValueField(wireName: 'Column30')
  String? get column30;

  @BuiltValueField(wireName: 'Column4')
  String? get column4;

  @BuiltValueField(wireName: 'Column5')
  String? get column5;

  @BuiltValueField(wireName: 'Column6')
  String? get column6;

  @BuiltValueField(wireName: 'Column7')
  String? get column7;

  @BuiltValueField(wireName: 'Column8')
  String? get column8;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BangalorePoliciesRulesRecordBuilder builder) =>
      builder
        ..column10 = ''
        ..column11 = ''
        ..column12 = ''
        ..column13 = ''
        ..column14 = ''
        ..column15 = ''
        ..column16 = ''
        ..column17 = ''
        ..column18 = ''
        ..column19 = ''
        ..column2 = ''
        ..column20 = ''
        ..column21 = ''
        ..column22 = ''
        ..column23 = ''
        ..column24 = ''
        ..column25 = ''
        ..column26 = ''
        ..column27 = ''
        ..column28 = ''
        ..column29 = ''
        ..column3 = ''
        ..column30 = ''
        ..column4 = ''
        ..column5 = ''
        ..column6 = ''
        ..column7 = ''
        ..column8 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bangalorePoliciesRules');

  static Stream<BangalorePoliciesRulesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BangalorePoliciesRulesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BangalorePoliciesRulesRecord._();
  factory BangalorePoliciesRulesRecord(
          [void Function(BangalorePoliciesRulesRecordBuilder) updates]) =
      _$BangalorePoliciesRulesRecord;

  static BangalorePoliciesRulesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBangalorePoliciesRulesRecordData({
  String? column10,
  String? column11,
  String? column12,
  String? column13,
  String? column14,
  String? column15,
  String? column16,
  String? column17,
  String? column18,
  String? column19,
  String? column2,
  String? column20,
  String? column21,
  String? column22,
  String? column23,
  String? column24,
  String? column25,
  String? column26,
  String? column27,
  String? column28,
  String? column29,
  String? column3,
  String? column30,
  String? column4,
  String? column5,
  String? column6,
  String? column7,
  String? column8,
}) {
  final firestoreData = serializers.toFirestore(
    BangalorePoliciesRulesRecord.serializer,
    BangalorePoliciesRulesRecord(
      (b) => b
        ..column10 = column10
        ..column11 = column11
        ..column12 = column12
        ..column13 = column13
        ..column14 = column14
        ..column15 = column15
        ..column16 = column16
        ..column17 = column17
        ..column18 = column18
        ..column19 = column19
        ..column2 = column2
        ..column20 = column20
        ..column21 = column21
        ..column22 = column22
        ..column23 = column23
        ..column24 = column24
        ..column25 = column25
        ..column26 = column26
        ..column27 = column27
        ..column28 = column28
        ..column29 = column29
        ..column3 = column3
        ..column30 = column30
        ..column4 = column4
        ..column5 = column5
        ..column6 = column6
        ..column7 = column7
        ..column8 = column8,
    ),
  );

  return firestoreData;
}
