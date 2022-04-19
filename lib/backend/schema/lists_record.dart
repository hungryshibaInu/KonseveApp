import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'lists_record.g.dart';

abstract class ListsRecord implements Built<ListsRecord, ListsRecordBuilder> {
  static Serializer<ListsRecord> get serializer => _$listsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'item_name')
  String get itemName;

  @nullable
  @BuiltValueField(wireName: 'item_cat')
  String get itemCat;

  @nullable
  @BuiltValueField(wireName: 'item_manDate')
  DateTime get itemManDate;

  @nullable
  @BuiltValueField(wireName: 'item_detail')
  String get itemDetail;

  @nullable
  @BuiltValueField(wireName: 'item_done')
  bool get itemDone;

  @nullable
  @BuiltValueField(wireName: 'item_expDate')
  DateTime get itemExpDate;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ListsRecordBuilder builder) => builder
    ..itemName = ''
    ..itemCat = ''
    ..itemDetail = ''
    ..itemDone = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lists');

  static Stream<ListsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ListsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ListsRecord._();
  factory ListsRecord([void Function(ListsRecordBuilder) updates]) =
      _$ListsRecord;

  static ListsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createListsRecordData({
  String itemName,
  String itemCat,
  DateTime itemManDate,
  String itemDetail,
  bool itemDone,
  DateTime itemExpDate,
}) =>
    serializers.toFirestore(
        ListsRecord.serializer,
        ListsRecord((l) => l
          ..itemName = itemName
          ..itemCat = itemCat
          ..itemManDate = itemManDate
          ..itemDetail = itemDetail
          ..itemDone = itemDone
          ..itemExpDate = itemExpDate));
