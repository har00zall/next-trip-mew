import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hyderabad_policies_rules_record.g.dart';

abstract class HyderabadPoliciesRulesRecord
    implements
        Built<HyderabadPoliciesRulesRecord,
            HyderabadPoliciesRulesRecordBuilder> {
  static Serializer<HyderabadPoliciesRulesRecord> get serializer =>
      _$hyderabadPoliciesRulesRecordSerializer;

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

  @BuiltValueField(wireName: 'Column31')
  String? get column31;

  @BuiltValueField(wireName: 'Column32')
  String? get column32;

  @BuiltValueField(wireName: 'Column33')
  String? get column33;

  @BuiltValueField(wireName: 'Column34')
  String? get column34;

  @BuiltValueField(wireName: 'Column35')
  String? get column35;

  @BuiltValueField(wireName: 'Column36')
  String? get column36;

  @BuiltValueField(wireName: 'Column37')
  String? get column37;

  @BuiltValueField(wireName: 'Column38')
  String? get column38;

  @BuiltValueField(wireName: 'Column39')
  String? get column39;

  @BuiltValueField(wireName: 'Column4')
  String? get column4;

  @BuiltValueField(wireName: 'Column40')
  String? get column40;

  @BuiltValueField(wireName: 'Column41')
  String? get column41;

  @BuiltValueField(wireName: 'Column42')
  String? get column42;

  @BuiltValueField(wireName: 'Column43')
  String? get column43;

  @BuiltValueField(wireName: 'Column44')
  String? get column44;

  @BuiltValueField(wireName: 'Column45')
  String? get column45;

  @BuiltValueField(wireName: 'Column46')
  String? get column46;

  @BuiltValueField(wireName: 'Column47')
  String? get column47;

  @BuiltValueField(wireName: 'Column48')
  String? get column48;

  @BuiltValueField(wireName: 'Column49')
  String? get column49;

  @BuiltValueField(wireName: 'Column5')
  String? get column5;

  @BuiltValueField(wireName: 'Column50')
  String? get column50;

  @BuiltValueField(wireName: 'Column51')
  String? get column51;

  @BuiltValueField(wireName: 'Column52')
  String? get column52;

  @BuiltValueField(wireName: 'Column53')
  String? get column53;

  @BuiltValueField(wireName: 'Column54')
  String? get column54;

  @BuiltValueField(wireName: 'Column6')
  String? get column6;

  @BuiltValueField(wireName: 'Column7')
  String? get column7;

  @BuiltValueField(wireName: 'Column8')
  String? get column8;

  @BuiltValueField(wireName: 'Column9')
  String? get column9;

  @BuiltValueField(wireName: 'Hotel_NO')
  String? get hotelNO;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HyderabadPoliciesRulesRecordBuilder builder) =>
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
        ..column31 = ''
        ..column32 = ''
        ..column33 = ''
        ..column34 = ''
        ..column35 = ''
        ..column36 = ''
        ..column37 = ''
        ..column38 = ''
        ..column39 = ''
        ..column4 = ''
        ..column40 = ''
        ..column41 = ''
        ..column42 = ''
        ..column43 = ''
        ..column44 = ''
        ..column45 = ''
        ..column46 = ''
        ..column47 = ''
        ..column48 = ''
        ..column49 = ''
        ..column5 = ''
        ..column50 = ''
        ..column51 = ''
        ..column52 = ''
        ..column53 = ''
        ..column54 = ''
        ..column6 = ''
        ..column7 = ''
        ..column8 = ''
        ..column9 = ''
        ..hotelNO = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hyderabadPoliciesRules');

  static Stream<HyderabadPoliciesRulesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HyderabadPoliciesRulesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HyderabadPoliciesRulesRecord._();
  factory HyderabadPoliciesRulesRecord(
          [void Function(HyderabadPoliciesRulesRecordBuilder) updates]) =
      _$HyderabadPoliciesRulesRecord;

  static HyderabadPoliciesRulesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHyderabadPoliciesRulesRecordData({
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
  String? column31,
  String? column32,
  String? column33,
  String? column34,
  String? column35,
  String? column36,
  String? column37,
  String? column38,
  String? column39,
  String? column4,
  String? column40,
  String? column41,
  String? column42,
  String? column43,
  String? column44,
  String? column45,
  String? column46,
  String? column47,
  String? column48,
  String? column49,
  String? column5,
  String? column50,
  String? column51,
  String? column52,
  String? column53,
  String? column54,
  String? column6,
  String? column7,
  String? column8,
  String? column9,
  String? hotelNO,
}) {
  final firestoreData = serializers.toFirestore(
    HyderabadPoliciesRulesRecord.serializer,
    HyderabadPoliciesRulesRecord(
      (h) => h
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
        ..column31 = column31
        ..column32 = column32
        ..column33 = column33
        ..column34 = column34
        ..column35 = column35
        ..column36 = column36
        ..column37 = column37
        ..column38 = column38
        ..column39 = column39
        ..column4 = column4
        ..column40 = column40
        ..column41 = column41
        ..column42 = column42
        ..column43 = column43
        ..column44 = column44
        ..column45 = column45
        ..column46 = column46
        ..column47 = column47
        ..column48 = column48
        ..column49 = column49
        ..column5 = column5
        ..column50 = column50
        ..column51 = column51
        ..column52 = column52
        ..column53 = column53
        ..column54 = column54
        ..column6 = column6
        ..column7 = column7
        ..column8 = column8
        ..column9 = column9
        ..hotelNO = hotelNO,
    ),
  );

  return firestoreData;
}
