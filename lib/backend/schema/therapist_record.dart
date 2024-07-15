import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TherapistRecord extends FirestoreRecord {
  TherapistRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id_th" field.
  String? _idTh;
  String get idTh => _idTh ?? '';
  bool hasIdTh() => _idTh != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "th_first_name" field.
  String? _thFirstName;
  String get thFirstName => _thFirstName ?? '';
  bool hasThFirstName() => _thFirstName != null;

  // "email_th" field.
  String? _emailTh;
  String get emailTh => _emailTh ?? '';
  bool hasEmailTh() => _emailTh != null;

  // "th_last_name" field.
  String? _thLastName;
  String get thLastName => _thLastName ?? '';
  bool hasThLastName() => _thLastName != null;

  // "center" field.
  String? _center;
  String get center => _center ?? '';
  bool hasCenter() => _center != null;

  // "th_type" field.
  String? _thType;
  String get thType => _thType ?? '';
  bool hasThType() => _thType != null;

  // "th_phone" field.
  String? _thPhone;
  String get thPhone => _thPhone ?? '';
  bool hasThPhone() => _thPhone != null;

  // "clients" field.
  List<String>? _clients;
  List<String> get clients => _clients ?? const [];
  bool hasClients() => _clients != null;

  void _initializeFields() {
    _idTh = snapshotData['id_th'] as String?;
    _role = snapshotData['role'] as String?;
    _thFirstName = snapshotData['th_first_name'] as String?;
    _emailTh = snapshotData['email_th'] as String?;
    _thLastName = snapshotData['th_last_name'] as String?;
    _center = snapshotData['center'] as String?;
    _thType = snapshotData['th_type'] as String?;
    _thPhone = snapshotData['th_phone'] as String?;
    _clients = getDataList(snapshotData['clients']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('therapist');

  static Stream<TherapistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TherapistRecord.fromSnapshot(s));

  static Future<TherapistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TherapistRecord.fromSnapshot(s));

  static TherapistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TherapistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TherapistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TherapistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TherapistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TherapistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTherapistRecordData({
  String? idTh,
  String? role,
  String? thFirstName,
  String? emailTh,
  String? thLastName,
  String? center,
  String? thType,
  String? thPhone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_th': idTh,
      'role': role,
      'th_first_name': thFirstName,
      'email_th': emailTh,
      'th_last_name': thLastName,
      'center': center,
      'th_type': thType,
      'th_phone': thPhone,
    }.withoutNulls,
  );

  return firestoreData;
}

class TherapistRecordDocumentEquality implements Equality<TherapistRecord> {
  const TherapistRecordDocumentEquality();

  @override
  bool equals(TherapistRecord? e1, TherapistRecord? e2) {
    const listEquality = ListEquality();
    return e1?.idTh == e2?.idTh &&
        e1?.role == e2?.role &&
        e1?.thFirstName == e2?.thFirstName &&
        e1?.emailTh == e2?.emailTh &&
        e1?.thLastName == e2?.thLastName &&
        e1?.center == e2?.center &&
        e1?.thType == e2?.thType &&
        e1?.thPhone == e2?.thPhone &&
        listEquality.equals(e1?.clients, e2?.clients);
  }

  @override
  int hash(TherapistRecord? e) => const ListEquality().hash([
        e?.idTh,
        e?.role,
        e?.thFirstName,
        e?.emailTh,
        e?.thLastName,
        e?.center,
        e?.thType,
        e?.thPhone,
        e?.clients
      ]);

  @override
  bool isValidKey(Object? o) => o is TherapistRecord;
}
