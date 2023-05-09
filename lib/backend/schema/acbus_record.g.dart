// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acbus_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AcbusRecord> _$acbusRecordSerializer = new _$AcbusRecordSerializer();

class _$AcbusRecordSerializer implements StructuredSerializer<AcbusRecord> {
  @override
  final Iterable<Type> types = const [AcbusRecord, _$AcbusRecord];
  @override
  final String wireName = 'AcbusRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AcbusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.busName;
    if (value != null) {
      result
        ..add('Bus_Name')
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
    value = object.acSeater;
    if (value != null) {
      result
        ..add('Ac_Seater')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.acSleeper;
    if (value != null) {
      result
        ..add('Ac_Sleeper')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
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
    value = object.duration;
    if (value != null) {
      result
        ..add('Duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.no;
    if (value != null) {
      result
        ..add('No')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  AcbusRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AcbusRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Bus_Name':
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
        case 'Ac_Seater':
          result.acSeater = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Ac_Sleeper':
          result.acSleeper = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'No':
          result.no = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$AcbusRecord extends AcbusRecord {
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
  final int? acSeater;
  @override
  final int? acSleeper;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? duration;
  @override
  final int? no;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AcbusRecord([void Function(AcbusRecordBuilder)? updates]) =>
      (new AcbusRecordBuilder()..update(updates))._build();

  _$AcbusRecord._(
      {this.busName,
      this.from,
      this.to,
      this.boarding,
      this.destination,
      this.acSeater,
      this.acSleeper,
      this.date,
      this.time,
      this.duration,
      this.no,
      this.ffRef})
      : super._();

  @override
  AcbusRecord rebuild(void Function(AcbusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcbusRecordBuilder toBuilder() => new AcbusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcbusRecord &&
        busName == other.busName &&
        from == other.from &&
        to == other.to &&
        boarding == other.boarding &&
        destination == other.destination &&
        acSeater == other.acSeater &&
        acSleeper == other.acSleeper &&
        date == other.date &&
        time == other.time &&
        duration == other.duration &&
        no == other.no &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, busName.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, boarding.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, acSeater.hashCode);
    _$hash = $jc(_$hash, acSleeper.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AcbusRecord')
          ..add('busName', busName)
          ..add('from', from)
          ..add('to', to)
          ..add('boarding', boarding)
          ..add('destination', destination)
          ..add('acSeater', acSeater)
          ..add('acSleeper', acSleeper)
          ..add('date', date)
          ..add('time', time)
          ..add('duration', duration)
          ..add('no', no)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AcbusRecordBuilder implements Builder<AcbusRecord, AcbusRecordBuilder> {
  _$AcbusRecord? _$v;

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

  int? _acSeater;
  int? get acSeater => _$this._acSeater;
  set acSeater(int? acSeater) => _$this._acSeater = acSeater;

  int? _acSleeper;
  int? get acSleeper => _$this._acSleeper;
  set acSleeper(int? acSleeper) => _$this._acSleeper = acSleeper;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  int? _no;
  int? get no => _$this._no;
  set no(int? no) => _$this._no = no;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AcbusRecordBuilder() {
    AcbusRecord._initializeBuilder(this);
  }

  AcbusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _busName = $v.busName;
      _from = $v.from;
      _to = $v.to;
      _boarding = $v.boarding;
      _destination = $v.destination;
      _acSeater = $v.acSeater;
      _acSleeper = $v.acSleeper;
      _date = $v.date;
      _time = $v.time;
      _duration = $v.duration;
      _no = $v.no;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcbusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcbusRecord;
  }

  @override
  void update(void Function(AcbusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcbusRecord build() => _build();

  _$AcbusRecord _build() {
    final _$result = _$v ??
        new _$AcbusRecord._(
            busName: busName,
            from: from,
            to: to,
            boarding: boarding,
            destination: destination,
            acSeater: acSeater,
            acSleeper: acSleeper,
            date: date,
            time: time,
            duration: duration,
            no: no,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
