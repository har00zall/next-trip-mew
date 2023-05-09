// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holi_hyderabad_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HoliHyderabadRecord> _$holiHyderabadRecordSerializer =
    new _$HoliHyderabadRecordSerializer();

class _$HoliHyderabadRecordSerializer
    implements StructuredSerializer<HoliHyderabadRecord> {
  @override
  final Iterable<Type> types = const [
    HoliHyderabadRecord,
    _$HoliHyderabadRecord
  ];
  @override
  final String wireName = 'HoliHyderabadRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HoliHyderabadRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.no;
    if (value != null) {
      result
        ..add('No')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.nameOfPlace;
    if (value != null) {
      result
        ..add('Name-of-Place')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.openingTime;
    if (value != null) {
      result
        ..add('Opening-Time')
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
  HoliHyderabadRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HoliHyderabadRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'No':
          result.no = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Name-of-Place':
          result.nameOfPlace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Opening-Time':
          result.openingTime = serializers.deserialize(value,
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

class _$HoliHyderabadRecord extends HoliHyderabadRecord {
  @override
  final bool? no;
  @override
  final String? nameOfPlace;
  @override
  final String? type;
  @override
  final String? openingTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HoliHyderabadRecord(
          [void Function(HoliHyderabadRecordBuilder)? updates]) =>
      (new HoliHyderabadRecordBuilder()..update(updates))._build();

  _$HoliHyderabadRecord._(
      {this.no, this.nameOfPlace, this.type, this.openingTime, this.ffRef})
      : super._();

  @override
  HoliHyderabadRecord rebuild(
          void Function(HoliHyderabadRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoliHyderabadRecordBuilder toBuilder() =>
      new HoliHyderabadRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoliHyderabadRecord &&
        no == other.no &&
        nameOfPlace == other.nameOfPlace &&
        type == other.type &&
        openingTime == other.openingTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, nameOfPlace.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoliHyderabadRecord')
          ..add('no', no)
          ..add('nameOfPlace', nameOfPlace)
          ..add('type', type)
          ..add('openingTime', openingTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HoliHyderabadRecordBuilder
    implements Builder<HoliHyderabadRecord, HoliHyderabadRecordBuilder> {
  _$HoliHyderabadRecord? _$v;

  bool? _no;
  bool? get no => _$this._no;
  set no(bool? no) => _$this._no = no;

  String? _nameOfPlace;
  String? get nameOfPlace => _$this._nameOfPlace;
  set nameOfPlace(String? nameOfPlace) => _$this._nameOfPlace = nameOfPlace;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(String? openingTime) => _$this._openingTime = openingTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HoliHyderabadRecordBuilder() {
    HoliHyderabadRecord._initializeBuilder(this);
  }

  HoliHyderabadRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _no = $v.no;
      _nameOfPlace = $v.nameOfPlace;
      _type = $v.type;
      _openingTime = $v.openingTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoliHyderabadRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoliHyderabadRecord;
  }

  @override
  void update(void Function(HoliHyderabadRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoliHyderabadRecord build() => _build();

  _$HoliHyderabadRecord _build() {
    final _$result = _$v ??
        new _$HoliHyderabadRecord._(
            no: no,
            nameOfPlace: nameOfPlace,
            type: type,
            openingTime: openingTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
