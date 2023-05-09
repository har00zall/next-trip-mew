// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holi_jaipur_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HoliJaipurRecord> _$holiJaipurRecordSerializer =
    new _$HoliJaipurRecordSerializer();

class _$HoliJaipurRecordSerializer
    implements StructuredSerializer<HoliJaipurRecord> {
  @override
  final Iterable<Type> types = const [HoliJaipurRecord, _$HoliJaipurRecord];
  @override
  final String wireName = 'HoliJaipurRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HoliJaipurRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nameOfPlace;
    if (value != null) {
      result
        ..add('Name-of-Place')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nearByAddress;
    if (value != null) {
      result
        ..add('Near-by-address')
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
    value = object.closingTime;
    if (value != null) {
      result
        ..add('Closing-Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thingsYouCanSeeInThere;
    if (value != null) {
      result
        ..add('Things-you-can-see-in-there')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
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
  HoliJaipurRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HoliJaipurRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name-of-Place':
          result.nameOfPlace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Review':
          result.review = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Near-by-address':
          result.nearByAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Opening-Time':
          result.openingTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Closing-Time':
          result.closingTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Things-you-can-see-in-there':
          result.thingsYouCanSeeInThere = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Image':
          result.image = serializers.deserialize(value,
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

class _$HoliJaipurRecord extends HoliJaipurRecord {
  @override
  final String? nameOfPlace;
  @override
  final bool? review;
  @override
  final String? type;
  @override
  final String? nearByAddress;
  @override
  final String? openingTime;
  @override
  final String? closingTime;
  @override
  final String? thingsYouCanSeeInThere;
  @override
  final String? image;
  @override
  final int? no;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HoliJaipurRecord(
          [void Function(HoliJaipurRecordBuilder)? updates]) =>
      (new HoliJaipurRecordBuilder()..update(updates))._build();

  _$HoliJaipurRecord._(
      {this.nameOfPlace,
      this.review,
      this.type,
      this.nearByAddress,
      this.openingTime,
      this.closingTime,
      this.thingsYouCanSeeInThere,
      this.image,
      this.no,
      this.ffRef})
      : super._();

  @override
  HoliJaipurRecord rebuild(void Function(HoliJaipurRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HoliJaipurRecordBuilder toBuilder() =>
      new HoliJaipurRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HoliJaipurRecord &&
        nameOfPlace == other.nameOfPlace &&
        review == other.review &&
        type == other.type &&
        nearByAddress == other.nearByAddress &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime &&
        thingsYouCanSeeInThere == other.thingsYouCanSeeInThere &&
        image == other.image &&
        no == other.no &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nameOfPlace.hashCode);
    _$hash = $jc(_$hash, review.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, nearByAddress.hashCode);
    _$hash = $jc(_$hash, openingTime.hashCode);
    _$hash = $jc(_$hash, closingTime.hashCode);
    _$hash = $jc(_$hash, thingsYouCanSeeInThere.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, no.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HoliJaipurRecord')
          ..add('nameOfPlace', nameOfPlace)
          ..add('review', review)
          ..add('type', type)
          ..add('nearByAddress', nearByAddress)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime)
          ..add('thingsYouCanSeeInThere', thingsYouCanSeeInThere)
          ..add('image', image)
          ..add('no', no)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HoliJaipurRecordBuilder
    implements Builder<HoliJaipurRecord, HoliJaipurRecordBuilder> {
  _$HoliJaipurRecord? _$v;

  String? _nameOfPlace;
  String? get nameOfPlace => _$this._nameOfPlace;
  set nameOfPlace(String? nameOfPlace) => _$this._nameOfPlace = nameOfPlace;

  bool? _review;
  bool? get review => _$this._review;
  set review(bool? review) => _$this._review = review;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _nearByAddress;
  String? get nearByAddress => _$this._nearByAddress;
  set nearByAddress(String? nearByAddress) =>
      _$this._nearByAddress = nearByAddress;

  String? _openingTime;
  String? get openingTime => _$this._openingTime;
  set openingTime(String? openingTime) => _$this._openingTime = openingTime;

  String? _closingTime;
  String? get closingTime => _$this._closingTime;
  set closingTime(String? closingTime) => _$this._closingTime = closingTime;

  String? _thingsYouCanSeeInThere;
  String? get thingsYouCanSeeInThere => _$this._thingsYouCanSeeInThere;
  set thingsYouCanSeeInThere(String? thingsYouCanSeeInThere) =>
      _$this._thingsYouCanSeeInThere = thingsYouCanSeeInThere;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  int? _no;
  int? get no => _$this._no;
  set no(int? no) => _$this._no = no;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HoliJaipurRecordBuilder() {
    HoliJaipurRecord._initializeBuilder(this);
  }

  HoliJaipurRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nameOfPlace = $v.nameOfPlace;
      _review = $v.review;
      _type = $v.type;
      _nearByAddress = $v.nearByAddress;
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _thingsYouCanSeeInThere = $v.thingsYouCanSeeInThere;
      _image = $v.image;
      _no = $v.no;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HoliJaipurRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HoliJaipurRecord;
  }

  @override
  void update(void Function(HoliJaipurRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HoliJaipurRecord build() => _build();

  _$HoliJaipurRecord _build() {
    final _$result = _$v ??
        new _$HoliJaipurRecord._(
            nameOfPlace: nameOfPlace,
            review: review,
            type: type,
            nearByAddress: nearByAddress,
            openingTime: openingTime,
            closingTime: closingTime,
            thingsYouCanSeeInThere: thingsYouCanSeeInThere,
            image: image,
            no: no,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
