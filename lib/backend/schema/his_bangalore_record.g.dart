// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'his_bangalore_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HisBangaloreRecord> _$hisBangaloreRecordSerializer =
    new _$HisBangaloreRecordSerializer();

class _$HisBangaloreRecordSerializer
    implements StructuredSerializer<HisBangaloreRecord> {
  @override
  final Iterable<Type> types = const [HisBangaloreRecord, _$HisBangaloreRecord];
  @override
  final String wireName = 'HisBangaloreRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HisBangaloreRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('Url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('Rate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('Review')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('Type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
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
  HisBangaloreRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HisBangaloreRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$HisBangaloreRecord extends HisBangaloreRecord {
  @override
  final String? url;
  @override
  final String? name;
  @override
  final bool? rate;
  @override
  final bool? review;
  @override
  final String? type;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HisBangaloreRecord(
          [void Function(HisBangaloreRecordBuilder)? updates]) =>
      (new HisBangaloreRecordBuilder()..update(updates))._build();

  _$HisBangaloreRecord._(
      {this.url,
      this.name,
      this.rate,
      this.review,
      this.type,
      this.image,
      this.ffRef})
      : super._();

  @override
  HisBangaloreRecord rebuild(
          void Function(HisBangaloreRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HisBangaloreRecordBuilder toBuilder() =>
      new HisBangaloreRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HisBangaloreRecord &&
        url == other.url &&
        name == other.name &&
        rate == other.rate &&
        review == other.review &&
        type == other.type &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, rate.hashCode);
    _$hash = $jc(_$hash, review.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HisBangaloreRecord')
          ..add('url', url)
          ..add('name', name)
          ..add('rate', rate)
          ..add('review', review)
          ..add('type', type)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HisBangaloreRecordBuilder
    implements Builder<HisBangaloreRecord, HisBangaloreRecordBuilder> {
  _$HisBangaloreRecord? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _rate;
  bool? get rate => _$this._rate;
  set rate(bool? rate) => _$this._rate = rate;

  bool? _review;
  bool? get review => _$this._review;
  set review(bool? review) => _$this._review = review;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HisBangaloreRecordBuilder() {
    HisBangaloreRecord._initializeBuilder(this);
  }

  HisBangaloreRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _name = $v.name;
      _rate = $v.rate;
      _review = $v.review;
      _type = $v.type;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HisBangaloreRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HisBangaloreRecord;
  }

  @override
  void update(void Function(HisBangaloreRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HisBangaloreRecord build() => _build();

  _$HisBangaloreRecord _build() {
    final _$result = _$v ??
        new _$HisBangaloreRecord._(
            url: url,
            name: name,
            rate: rate,
            review: review,
            type: type,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
