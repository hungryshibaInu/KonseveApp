// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lists_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListsRecord> _$listsRecordSerializer = new _$ListsRecordSerializer();

class _$ListsRecordSerializer implements StructuredSerializer<ListsRecord> {
  @override
  final Iterable<Type> types = const [ListsRecord, _$ListsRecord];
  @override
  final String wireName = 'ListsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ListsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.itemName;
    if (value != null) {
      result
        ..add('item_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemCat;
    if (value != null) {
      result
        ..add('item_cat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemManDate;
    if (value != null) {
      result
        ..add('item_manDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.itemDetail;
    if (value != null) {
      result
        ..add('item_detail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemDone;
    if (value != null) {
      result
        ..add('item_done')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.itemExpDate;
    if (value != null) {
      result
        ..add('item_expDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ListsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'item_name':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item_cat':
          result.itemCat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item_manDate':
          result.itemManDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'item_detail':
          result.itemDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'item_done':
          result.itemDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'item_expDate':
          result.itemExpDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ListsRecord extends ListsRecord {
  @override
  final String itemName;
  @override
  final String itemCat;
  @override
  final DateTime itemManDate;
  @override
  final String itemDetail;
  @override
  final bool itemDone;
  @override
  final DateTime itemExpDate;
  @override
  final DocumentReference<Object> reference;

  factory _$ListsRecord([void Function(ListsRecordBuilder) updates]) =>
      (new ListsRecordBuilder()..update(updates)).build();

  _$ListsRecord._(
      {this.itemName,
      this.itemCat,
      this.itemManDate,
      this.itemDetail,
      this.itemDone,
      this.itemExpDate,
      this.reference})
      : super._();

  @override
  ListsRecord rebuild(void Function(ListsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListsRecordBuilder toBuilder() => new ListsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListsRecord &&
        itemName == other.itemName &&
        itemCat == other.itemCat &&
        itemManDate == other.itemManDate &&
        itemDetail == other.itemDetail &&
        itemDone == other.itemDone &&
        itemExpDate == other.itemExpDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, itemName.hashCode), itemCat.hashCode),
                        itemManDate.hashCode),
                    itemDetail.hashCode),
                itemDone.hashCode),
            itemExpDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListsRecord')
          ..add('itemName', itemName)
          ..add('itemCat', itemCat)
          ..add('itemManDate', itemManDate)
          ..add('itemDetail', itemDetail)
          ..add('itemDone', itemDone)
          ..add('itemExpDate', itemExpDate)
          ..add('reference', reference))
        .toString();
  }
}

class ListsRecordBuilder implements Builder<ListsRecord, ListsRecordBuilder> {
  _$ListsRecord _$v;

  String _itemName;
  String get itemName => _$this._itemName;
  set itemName(String itemName) => _$this._itemName = itemName;

  String _itemCat;
  String get itemCat => _$this._itemCat;
  set itemCat(String itemCat) => _$this._itemCat = itemCat;

  DateTime _itemManDate;
  DateTime get itemManDate => _$this._itemManDate;
  set itemManDate(DateTime itemManDate) => _$this._itemManDate = itemManDate;

  String _itemDetail;
  String get itemDetail => _$this._itemDetail;
  set itemDetail(String itemDetail) => _$this._itemDetail = itemDetail;

  bool _itemDone;
  bool get itemDone => _$this._itemDone;
  set itemDone(bool itemDone) => _$this._itemDone = itemDone;

  DateTime _itemExpDate;
  DateTime get itemExpDate => _$this._itemExpDate;
  set itemExpDate(DateTime itemExpDate) => _$this._itemExpDate = itemExpDate;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ListsRecordBuilder() {
    ListsRecord._initializeBuilder(this);
  }

  ListsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemName = $v.itemName;
      _itemCat = $v.itemCat;
      _itemManDate = $v.itemManDate;
      _itemDetail = $v.itemDetail;
      _itemDone = $v.itemDone;
      _itemExpDate = $v.itemExpDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListsRecord;
  }

  @override
  void update(void Function(ListsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListsRecord build() {
    final _$result = _$v ??
        new _$ListsRecord._(
            itemName: itemName,
            itemCat: itemCat,
            itemManDate: itemManDate,
            itemDetail: itemDetail,
            itemDone: itemDone,
            itemExpDate: itemExpDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
