// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bangalore_policies_rules_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangalorePoliciesRulesRecord>
    _$bangalorePoliciesRulesRecordSerializer =
    new _$BangalorePoliciesRulesRecordSerializer();

class _$BangalorePoliciesRulesRecordSerializer
    implements StructuredSerializer<BangalorePoliciesRulesRecord> {
  @override
  final Iterable<Type> types = const [
    BangalorePoliciesRulesRecord,
    _$BangalorePoliciesRulesRecord
  ];
  @override
  final String wireName = 'BangalorePoliciesRulesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BangalorePoliciesRulesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.column10;
    if (value != null) {
      result
        ..add('Column10')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column11;
    if (value != null) {
      result
        ..add('Column11')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column12;
    if (value != null) {
      result
        ..add('Column12')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column13;
    if (value != null) {
      result
        ..add('Column13')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column14;
    if (value != null) {
      result
        ..add('Column14')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column15;
    if (value != null) {
      result
        ..add('Column15')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column16;
    if (value != null) {
      result
        ..add('Column16')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column17;
    if (value != null) {
      result
        ..add('Column17')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column18;
    if (value != null) {
      result
        ..add('Column18')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column19;
    if (value != null) {
      result
        ..add('Column19')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column2;
    if (value != null) {
      result
        ..add('Column2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column20;
    if (value != null) {
      result
        ..add('Column20')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column21;
    if (value != null) {
      result
        ..add('Column21')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column22;
    if (value != null) {
      result
        ..add('Column22')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column23;
    if (value != null) {
      result
        ..add('Column23')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column24;
    if (value != null) {
      result
        ..add('Column24')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column25;
    if (value != null) {
      result
        ..add('Column25')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column26;
    if (value != null) {
      result
        ..add('Column26')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column27;
    if (value != null) {
      result
        ..add('Column27')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column28;
    if (value != null) {
      result
        ..add('Column28')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column29;
    if (value != null) {
      result
        ..add('Column29')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column3;
    if (value != null) {
      result
        ..add('Column3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column30;
    if (value != null) {
      result
        ..add('Column30')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column4;
    if (value != null) {
      result
        ..add('Column4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column5;
    if (value != null) {
      result
        ..add('Column5')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column6;
    if (value != null) {
      result
        ..add('Column6')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column7;
    if (value != null) {
      result
        ..add('Column7')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.column8;
    if (value != null) {
      result
        ..add('Column8')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BangalorePoliciesRulesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangalorePoliciesRulesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Column10':
          result.column10 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column11':
          result.column11 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column12':
          result.column12 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column13':
          result.column13 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column14':
          result.column14 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column15':
          result.column15 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column16':
          result.column16 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column17':
          result.column17 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column18':
          result.column18 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column19':
          result.column19 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column2':
          result.column2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column20':
          result.column20 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column21':
          result.column21 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column22':
          result.column22 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column23':
          result.column23 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column24':
          result.column24 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column25':
          result.column25 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column26':
          result.column26 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column27':
          result.column27 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column28':
          result.column28 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column29':
          result.column29 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column3':
          result.column3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column30':
          result.column30 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column4':
          result.column4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column5':
          result.column5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column6':
          result.column6 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column7':
          result.column7 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Column8':
          result.column8 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BangalorePoliciesRulesRecord extends BangalorePoliciesRulesRecord {
  @override
  final String? column10;
  @override
  final String? column11;
  @override
  final String? column12;
  @override
  final String? column13;
  @override
  final String? column14;
  @override
  final String? column15;
  @override
  final String? column16;
  @override
  final String? column17;
  @override
  final String? column18;
  @override
  final String? column19;
  @override
  final String? column2;
  @override
  final String? column20;
  @override
  final String? column21;
  @override
  final String? column22;
  @override
  final String? column23;
  @override
  final String? column24;
  @override
  final String? column25;
  @override
  final String? column26;
  @override
  final String? column27;
  @override
  final String? column28;
  @override
  final String? column29;
  @override
  final String? column3;
  @override
  final String? column30;
  @override
  final String? column4;
  @override
  final String? column5;
  @override
  final String? column6;
  @override
  final String? column7;
  @override
  final String? column8;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BangalorePoliciesRulesRecord(
          [void Function(BangalorePoliciesRulesRecordBuilder)? updates]) =>
      (new BangalorePoliciesRulesRecordBuilder()..update(updates))._build();

  _$BangalorePoliciesRulesRecord._(
      {this.column10,
      this.column11,
      this.column12,
      this.column13,
      this.column14,
      this.column15,
      this.column16,
      this.column17,
      this.column18,
      this.column19,
      this.column2,
      this.column20,
      this.column21,
      this.column22,
      this.column23,
      this.column24,
      this.column25,
      this.column26,
      this.column27,
      this.column28,
      this.column29,
      this.column3,
      this.column30,
      this.column4,
      this.column5,
      this.column6,
      this.column7,
      this.column8,
      this.ffRef})
      : super._();

  @override
  BangalorePoliciesRulesRecord rebuild(
          void Function(BangalorePoliciesRulesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangalorePoliciesRulesRecordBuilder toBuilder() =>
      new BangalorePoliciesRulesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangalorePoliciesRulesRecord &&
        column10 == other.column10 &&
        column11 == other.column11 &&
        column12 == other.column12 &&
        column13 == other.column13 &&
        column14 == other.column14 &&
        column15 == other.column15 &&
        column16 == other.column16 &&
        column17 == other.column17 &&
        column18 == other.column18 &&
        column19 == other.column19 &&
        column2 == other.column2 &&
        column20 == other.column20 &&
        column21 == other.column21 &&
        column22 == other.column22 &&
        column23 == other.column23 &&
        column24 == other.column24 &&
        column25 == other.column25 &&
        column26 == other.column26 &&
        column27 == other.column27 &&
        column28 == other.column28 &&
        column29 == other.column29 &&
        column3 == other.column3 &&
        column30 == other.column30 &&
        column4 == other.column4 &&
        column5 == other.column5 &&
        column6 == other.column6 &&
        column7 == other.column7 &&
        column8 == other.column8 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, column10.hashCode);
    _$hash = $jc(_$hash, column11.hashCode);
    _$hash = $jc(_$hash, column12.hashCode);
    _$hash = $jc(_$hash, column13.hashCode);
    _$hash = $jc(_$hash, column14.hashCode);
    _$hash = $jc(_$hash, column15.hashCode);
    _$hash = $jc(_$hash, column16.hashCode);
    _$hash = $jc(_$hash, column17.hashCode);
    _$hash = $jc(_$hash, column18.hashCode);
    _$hash = $jc(_$hash, column19.hashCode);
    _$hash = $jc(_$hash, column2.hashCode);
    _$hash = $jc(_$hash, column20.hashCode);
    _$hash = $jc(_$hash, column21.hashCode);
    _$hash = $jc(_$hash, column22.hashCode);
    _$hash = $jc(_$hash, column23.hashCode);
    _$hash = $jc(_$hash, column24.hashCode);
    _$hash = $jc(_$hash, column25.hashCode);
    _$hash = $jc(_$hash, column26.hashCode);
    _$hash = $jc(_$hash, column27.hashCode);
    _$hash = $jc(_$hash, column28.hashCode);
    _$hash = $jc(_$hash, column29.hashCode);
    _$hash = $jc(_$hash, column3.hashCode);
    _$hash = $jc(_$hash, column30.hashCode);
    _$hash = $jc(_$hash, column4.hashCode);
    _$hash = $jc(_$hash, column5.hashCode);
    _$hash = $jc(_$hash, column6.hashCode);
    _$hash = $jc(_$hash, column7.hashCode);
    _$hash = $jc(_$hash, column8.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BangalorePoliciesRulesRecord')
          ..add('column10', column10)
          ..add('column11', column11)
          ..add('column12', column12)
          ..add('column13', column13)
          ..add('column14', column14)
          ..add('column15', column15)
          ..add('column16', column16)
          ..add('column17', column17)
          ..add('column18', column18)
          ..add('column19', column19)
          ..add('column2', column2)
          ..add('column20', column20)
          ..add('column21', column21)
          ..add('column22', column22)
          ..add('column23', column23)
          ..add('column24', column24)
          ..add('column25', column25)
          ..add('column26', column26)
          ..add('column27', column27)
          ..add('column28', column28)
          ..add('column29', column29)
          ..add('column3', column3)
          ..add('column30', column30)
          ..add('column4', column4)
          ..add('column5', column5)
          ..add('column6', column6)
          ..add('column7', column7)
          ..add('column8', column8)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BangalorePoliciesRulesRecordBuilder
    implements
        Builder<BangalorePoliciesRulesRecord,
            BangalorePoliciesRulesRecordBuilder> {
  _$BangalorePoliciesRulesRecord? _$v;

  String? _column10;
  String? get column10 => _$this._column10;
  set column10(String? column10) => _$this._column10 = column10;

  String? _column11;
  String? get column11 => _$this._column11;
  set column11(String? column11) => _$this._column11 = column11;

  String? _column12;
  String? get column12 => _$this._column12;
  set column12(String? column12) => _$this._column12 = column12;

  String? _column13;
  String? get column13 => _$this._column13;
  set column13(String? column13) => _$this._column13 = column13;

  String? _column14;
  String? get column14 => _$this._column14;
  set column14(String? column14) => _$this._column14 = column14;

  String? _column15;
  String? get column15 => _$this._column15;
  set column15(String? column15) => _$this._column15 = column15;

  String? _column16;
  String? get column16 => _$this._column16;
  set column16(String? column16) => _$this._column16 = column16;

  String? _column17;
  String? get column17 => _$this._column17;
  set column17(String? column17) => _$this._column17 = column17;

  String? _column18;
  String? get column18 => _$this._column18;
  set column18(String? column18) => _$this._column18 = column18;

  String? _column19;
  String? get column19 => _$this._column19;
  set column19(String? column19) => _$this._column19 = column19;

  String? _column2;
  String? get column2 => _$this._column2;
  set column2(String? column2) => _$this._column2 = column2;

  String? _column20;
  String? get column20 => _$this._column20;
  set column20(String? column20) => _$this._column20 = column20;

  String? _column21;
  String? get column21 => _$this._column21;
  set column21(String? column21) => _$this._column21 = column21;

  String? _column22;
  String? get column22 => _$this._column22;
  set column22(String? column22) => _$this._column22 = column22;

  String? _column23;
  String? get column23 => _$this._column23;
  set column23(String? column23) => _$this._column23 = column23;

  String? _column24;
  String? get column24 => _$this._column24;
  set column24(String? column24) => _$this._column24 = column24;

  String? _column25;
  String? get column25 => _$this._column25;
  set column25(String? column25) => _$this._column25 = column25;

  String? _column26;
  String? get column26 => _$this._column26;
  set column26(String? column26) => _$this._column26 = column26;

  String? _column27;
  String? get column27 => _$this._column27;
  set column27(String? column27) => _$this._column27 = column27;

  String? _column28;
  String? get column28 => _$this._column28;
  set column28(String? column28) => _$this._column28 = column28;

  String? _column29;
  String? get column29 => _$this._column29;
  set column29(String? column29) => _$this._column29 = column29;

  String? _column3;
  String? get column3 => _$this._column3;
  set column3(String? column3) => _$this._column3 = column3;

  String? _column30;
  String? get column30 => _$this._column30;
  set column30(String? column30) => _$this._column30 = column30;

  String? _column4;
  String? get column4 => _$this._column4;
  set column4(String? column4) => _$this._column4 = column4;

  String? _column5;
  String? get column5 => _$this._column5;
  set column5(String? column5) => _$this._column5 = column5;

  String? _column6;
  String? get column6 => _$this._column6;
  set column6(String? column6) => _$this._column6 = column6;

  String? _column7;
  String? get column7 => _$this._column7;
  set column7(String? column7) => _$this._column7 = column7;

  String? _column8;
  String? get column8 => _$this._column8;
  set column8(String? column8) => _$this._column8 = column8;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BangalorePoliciesRulesRecordBuilder() {
    BangalorePoliciesRulesRecord._initializeBuilder(this);
  }

  BangalorePoliciesRulesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _column10 = $v.column10;
      _column11 = $v.column11;
      _column12 = $v.column12;
      _column13 = $v.column13;
      _column14 = $v.column14;
      _column15 = $v.column15;
      _column16 = $v.column16;
      _column17 = $v.column17;
      _column18 = $v.column18;
      _column19 = $v.column19;
      _column2 = $v.column2;
      _column20 = $v.column20;
      _column21 = $v.column21;
      _column22 = $v.column22;
      _column23 = $v.column23;
      _column24 = $v.column24;
      _column25 = $v.column25;
      _column26 = $v.column26;
      _column27 = $v.column27;
      _column28 = $v.column28;
      _column29 = $v.column29;
      _column3 = $v.column3;
      _column30 = $v.column30;
      _column4 = $v.column4;
      _column5 = $v.column5;
      _column6 = $v.column6;
      _column7 = $v.column7;
      _column8 = $v.column8;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangalorePoliciesRulesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BangalorePoliciesRulesRecord;
  }

  @override
  void update(void Function(BangalorePoliciesRulesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BangalorePoliciesRulesRecord build() => _build();

  _$BangalorePoliciesRulesRecord _build() {
    final _$result = _$v ??
        new _$BangalorePoliciesRulesRecord._(
            column10: column10,
            column11: column11,
            column12: column12,
            column13: column13,
            column14: column14,
            column15: column15,
            column16: column16,
            column17: column17,
            column18: column18,
            column19: column19,
            column2: column2,
            column20: column20,
            column21: column21,
            column22: column22,
            column23: column23,
            column24: column24,
            column25: column25,
            column26: column26,
            column27: column27,
            column28: column28,
            column29: column29,
            column3: column3,
            column30: column30,
            column4: column4,
            column5: column5,
            column6: column6,
            column7: column7,
            column8: column8,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
