// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'non_ac_bus_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NonAcBusRecord> _$nonAcBusRecordSerializer =
    new _$NonAcBusRecordSerializer();

class _$NonAcBusRecordSerializer
    implements StructuredSerializer<NonAcBusRecord> {
  @override
  final Iterable<Type> types = const [NonAcBusRecord, _$NonAcBusRecord];
  @override
  final String wireName = 'NonAcBusRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NonAcBusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.no;
    if (value != null) {
      result
        ..add('No')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.busName;
    if (value != null) {
      result
        ..add('BusName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.boarding;
    if (value != null) {
      result
        ..add('Boarding')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.destination;
    if (value != null) {
      result
        ..add('Destination')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nonACSeater;
    if (value != null) {
      result
        ..add('NonAC_Seater')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nonAcSleeper;
    if (value != null) {
      result
        ..add('NonAc_Sleeper')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('Duration')
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
  NonAcBusRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NonAcBusRecordBuilder();

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
        case 'BusName':
          result.busName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'From':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'To':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Boarding':
          result.boarding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Destination':
          result.destination = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NonAC_Seater':
          result.nonACSeater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'NonAc_Sleeper':
          result.nonAcSleeper = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Duration':
          result.duration = serializers.deserialize(value,
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

class _$NonAcBusRecord extends NonAcBusRecord {
  @override
  final int? no;
  @override
  final String? busName;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? boarding;
  @override
  final String? destination;
  @override
  final int? nonACSeater;
  @override
  final int? nonAcSleeper;
  @override
  final String? time;
  @override
  final String? duration;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NonAcBusRecord([void Function(NonAcBusRecordBuilder)? updates]) =>
      (new NonAcBusRecordBuilder()..update(updates))._build();

  _$NonAcBusRecord._(
      {this.no,
      this.busName,
      this.from,
      this.to,
      this.boarding,
      this.destination,
      this.nonACSeater,
      this.nonAcSleeper,
      this.time,
      this.duration,
      this.ffRef})
      : super._();

  @override
  NonAcBusRecord rebuild(void Function(NonAcBusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NonAcBusRecordBuilder toBuilder() =>
      new NonAcBusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NonAcBusRecord &&
        no == other.no &&
        busName == other.busName &&
        from == other.from &&
        to == other.to &&
        boarding == other.boarding &&
        destination == other.destination &&
        nonACSeater == other.nonACSeater &&
        nonAcSleeper == other.nonAcSleeper &&
        time == other.time &&
        duration == other.duration &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, busName.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, boarding.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, nonACSeater.hashCode);
    _$hash = $jc(_$hash, nonAcSleeper.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NonAcBusRecord')
          ..add('no', no)
          ..add('busName', busName)
          ..add('from', from)
          ..add('to', to)
          ..add('boarding', boarding)
          ..add('destination', destination)
          ..add('nonACSeater', nonACSeater)
          ..add('nonAcSleeper', nonAcSleeper)
          ..add('time', time)
          ..add('duration', duration)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NonAcBusRecordBuilder
    implements Builder<NonAcBusRecord, NonAcBusRecordBuilder> {
  _$NonAcBusRecord? _$v;

  int? _no;
  int? get no => _$this._no;
  set no(int? no) => _$this._no = no;

  String? _busName;
  String? get busName => _$this._busName;
  set busName(String? busName) => _$this._busName = busName;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  String? _boarding;
  String? get boarding => _$this._boarding;
  set boarding(String? boarding) => _$this._boarding = boarding;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  int? _nonACSeater;
  int? get nonACSeater => _$this._nonACSeater;
  set nonACSeater(int? nonACSeater) => _$this._nonACSeater = nonACSeater;

  int? _nonAcSleeper;
  int? get nonAcSleeper => _$this._nonAcSleeper;
  set nonAcSleeper(int? nonAcSleeper) => _$this._nonAcSleeper = nonAcSleeper;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NonAcBusRecordBuilder() {
    NonAcBusRecord._initializeBuilder(this);
  }

  NonAcBusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _no = $v.no;
      _busName = $v.busName;
      _from = $v.from;
      _to = $v.to;
      _boarding = $v.boarding;
      _destination = $v.destination;
      _nonACSeater = $v.nonACSeater;
      _nonAcSleeper = $v.nonAcSleeper;
      _time = $v.time;
      _duration = $v.duration;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NonAcBusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NonAcBusRecord;
  }

  @override
  void update(void Function(NonAcBusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NonAcBusRecord build() => _build();

  _$NonAcBusRecord _build() {
    final _$result = _$v ??
        new _$NonAcBusRecord._(
            no: no,
            busName: busName,
            from: from,
            to: to,
            boarding: boarding,
            destination: destination,
            nonACSeater: nonACSeater,
            nonAcSleeper: nonAcSleeper,
            time: time,
            duration: duration,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
