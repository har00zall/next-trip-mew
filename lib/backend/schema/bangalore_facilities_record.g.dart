// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bangalore_facilities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BangaloreFacilitiesRecord> _$bangaloreFacilitiesRecordSerializer =
    new _$BangaloreFacilitiesRecordSerializer();

class _$BangaloreFacilitiesRecordSerializer
    implements StructuredSerializer<BangaloreFacilitiesRecord> {
  @override
  final Iterable<Type> types = const [
    BangaloreFacilitiesRecord,
    _$BangaloreFacilitiesRecord
  ];
  @override
  final String wireName = 'BangaloreFacilitiesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BangaloreFacilitiesRecord object,
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
  BangaloreFacilitiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BangaloreFacilitiesRecordBuilder();

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

class _$BangaloreFacilitiesRecord extends BangaloreFacilitiesRecord {
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
  final DocumentReference<Object?>? ffRef;

  factory _$BangaloreFacilitiesRecord(
          [void Function(BangaloreFacilitiesRecordBuilder)? updates]) =>
      (new BangaloreFacilitiesRecordBuilder()..update(updates))._build();

  _$BangaloreFacilitiesRecord._(
      {this.column10,
      this.column11,
      this.column12,
      this.column13,
      this.column14,
      this.column15,
      this.ffRef})
      : super._();

  @override
  BangaloreFacilitiesRecord rebuild(
          void Function(BangaloreFacilitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BangaloreFacilitiesRecordBuilder toBuilder() =>
      new BangaloreFacilitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BangaloreFacilitiesRecord &&
        column10 == other.column10 &&
        column11 == other.column11 &&
        column12 == other.column12 &&
        column13 == other.column13 &&
        column14 == other.column14 &&
        column15 == other.column15 &&
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
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BangaloreFacilitiesRecord')
          ..add('column10', column10)
          ..add('column11', column11)
          ..add('column12', column12)
          ..add('column13', column13)
          ..add('column14', column14)
          ..add('column15', column15)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BangaloreFacilitiesRecordBuilder
    implements
        Builder<BangaloreFacilitiesRecord, BangaloreFacilitiesRecordBuilder> {
  _$BangaloreFacilitiesRecord? _$v;

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

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BangaloreFacilitiesRecordBuilder() {
    BangaloreFacilitiesRecord._initializeBuilder(this);
  }

  BangaloreFacilitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _column10 = $v.column10;
      _column11 = $v.column11;
      _column12 = $v.column12;
      _column13 = $v.column13;
      _column14 = $v.column14;
      _column15 = $v.column15;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BangaloreFacilitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BangaloreFacilitiesRecord;
  }

  @override
  void update(void Function(BangaloreFacilitiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BangaloreFacilitiesRecord build() => _build();

  _$BangaloreFacilitiesRecord _build() {
    final _$result = _$v ??
        new _$BangaloreFacilitiesRecord._(
            column10: column10,
            column11: column11,
            column12: column12,
            column13: column13,
            column14: column14,
            column15: column15,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
