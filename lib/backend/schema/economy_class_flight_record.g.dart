// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'economy_class_flight_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EconomyClassFlightRecord> _$economyClassFlightRecordSerializer =
    new _$EconomyClassFlightRecordSerializer();

class _$EconomyClassFlightRecordSerializer
    implements StructuredSerializer<EconomyClassFlightRecord> {
  @override
  final Iterable<Type> types = const [
    EconomyClassFlightRecord,
    _$EconomyClassFlightRecord
  ];
  @override
  final String wireName = 'EconomyClassFlightRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EconomyClassFlightRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.no;
    if (value != null) {
      result
        ..add('No')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.from;
    if (value != null) {
      result
        ..add('From')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.to;
    if (value != null) {
      result
        ..add('To')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('Price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.flightName;
    if (value != null) {
      result
        ..add('Flight_Name')
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
  EconomyClassFlightRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EconomyClassFlightRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'No':
          result.no = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'From':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'To':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Flight_Name':
          result.flightName = serializers.deserialize(value,
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

class _$EconomyClassFlightRecord extends EconomyClassFlightRecord {
  @override
  final int? no;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? time;
  @override
  final double? price;
  @override
  final String? flightName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EconomyClassFlightRecord(
          [void Function(EconomyClassFlightRecordBuilder)? updates]) =>
      (new EconomyClassFlightRecordBuilder()..update(updates))._build();

  _$EconomyClassFlightRecord._(
      {this.no,
      this.from,
      this.to,
      this.time,
      this.price,
      this.flightName,
      this.ffRef})
      : super._();

  @override
  EconomyClassFlightRecord rebuild(
          void Function(EconomyClassFlightRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EconomyClassFlightRecordBuilder toBuilder() =>
      new EconomyClassFlightRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EconomyClassFlightRecord &&
        no == other.no &&
        from == other.from &&
        to == other.to &&
        time == other.time &&
        price == other.price &&
        flightName == other.flightName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, flightName.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EconomyClassFlightRecord')
          ..add('no', no)
          ..add('from', from)
          ..add('to', to)
          ..add('time', time)
          ..add('price', price)
          ..add('flightName', flightName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EconomyClassFlightRecordBuilder
    implements
        Builder<EconomyClassFlightRecord, EconomyClassFlightRecordBuilder> {
  _$EconomyClassFlightRecord? _$v;

  int? _no;
  int? get no => _$this._no;
  set no(int? no) => _$this._no = no;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _flightName;
  String? get flightName => _$this._flightName;
  set flightName(String? flightName) => _$this._flightName = flightName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EconomyClassFlightRecordBuilder() {
    EconomyClassFlightRecord._initializeBuilder(this);
  }

  EconomyClassFlightRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _no = $v.no;
      _from = $v.from;
      _to = $v.to;
      _time = $v.time;
      _price = $v.price;
      _flightName = $v.flightName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EconomyClassFlightRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EconomyClassFlightRecord;
  }

  @override
  void update(void Function(EconomyClassFlightRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EconomyClassFlightRecord build() => _build();

  _$EconomyClassFlightRecord _build() {
    final _$result = _$v ??
        new _$EconomyClassFlightRecord._(
            no: no,
            from: from,
            to: to,
            time: time,
            price: price,
            flightName: flightName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
