// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ef_goa_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EfGoaRecord> _$efGoaRecordSerializer = new _$EfGoaRecordSerializer();

class _$EfGoaRecordSerializer implements StructuredSerializer<EfGoaRecord> {
  @override
  final Iterable<Type> types = const [EfGoaRecord, _$EfGoaRecord];
  @override
  final String wireName = 'EfGoaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EfGoaRecord object,
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
    value = object.nameOfFestival;
    if (value != null) {
      result
        ..add('Name-of-festival')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.when;
    if (value != null) {
      result
        ..add('When')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.where;
    if (value != null) {
      result
        ..add('Where')
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
    value = object.famousFor;
    if (value != null) {
      result
        ..add('famous-for')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('Images')
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
  EfGoaRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EfGoaRecordBuilder();

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
        case 'Name-of-festival':
          result.nameOfFestival = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'When':
          result.when = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Where':
          result.where = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'famous-for':
          result.famousFor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Images':
          result.images = serializers.deserialize(value,
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

class _$EfGoaRecord extends EfGoaRecord {
  @override
  final bool? no;
  @override
  final String? nameOfFestival;
  @override
  final String? when;
  @override
  final String? where;
  @override
  final String? duration;
  @override
  final String? famousFor;
  @override
  final String? images;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EfGoaRecord([void Function(EfGoaRecordBuilder)? updates]) =>
      (new EfGoaRecordBuilder()..update(updates))._build();

  _$EfGoaRecord._(
      {this.no,
      this.nameOfFestival,
      this.when,
      this.where,
      this.duration,
      this.famousFor,
      this.images,
      this.ffRef})
      : super._();

  @override
  EfGoaRecord rebuild(void Function(EfGoaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EfGoaRecordBuilder toBuilder() => new EfGoaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EfGoaRecord &&
        no == other.no &&
        nameOfFestival == other.nameOfFestival &&
        when == other.when &&
        where == other.where &&
        duration == other.duration &&
        famousFor == other.famousFor &&
        images == other.images &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, nameOfFestival.hashCode);
    _$hash = $jc(_$hash, when.hashCode);
    _$hash = $jc(_$hash, where.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, famousFor.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EfGoaRecord')
          ..add('no', no)
          ..add('nameOfFestival', nameOfFestival)
          ..add('when', when)
          ..add('where', where)
          ..add('duration', duration)
          ..add('famousFor', famousFor)
          ..add('images', images)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EfGoaRecordBuilder implements Builder<EfGoaRecord, EfGoaRecordBuilder> {
  _$EfGoaRecord? _$v;

  bool? _no;
  bool? get no => _$this._no;
  set no(bool? no) => _$this._no = no;

  String? _nameOfFestival;
  String? get nameOfFestival => _$this._nameOfFestival;
  set nameOfFestival(String? nameOfFestival) =>
      _$this._nameOfFestival = nameOfFestival;

  String? _when;
  String? get when => _$this._when;
  set when(String? when) => _$this._when = when;

  String? _where;
  String? get where => _$this._where;
  set where(String? where) => _$this._where = where;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _famousFor;
  String? get famousFor => _$this._famousFor;
  set famousFor(String? famousFor) => _$this._famousFor = famousFor;

  String? _images;
  String? get images => _$this._images;
  set images(String? images) => _$this._images = images;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EfGoaRecordBuilder() {
    EfGoaRecord._initializeBuilder(this);
  }

  EfGoaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _no = $v.no;
      _nameOfFestival = $v.nameOfFestival;
      _when = $v.when;
      _where = $v.where;
      _duration = $v.duration;
      _famousFor = $v.famousFor;
      _images = $v.images;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EfGoaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EfGoaRecord;
  }

  @override
  void update(void Function(EfGoaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EfGoaRecord build() => _build();

  _$EfGoaRecord _build() {
    final _$result = _$v ??
        new _$EfGoaRecord._(
            no: no,
            nameOfFestival: nameOfFestival,
            when: when,
            where: where,
            duration: duration,
            famousFor: famousFor,
            images: images,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
