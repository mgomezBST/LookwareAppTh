import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IntakeAssessmentRecord extends FirestoreRecord {
  IntakeAssessmentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "answer_1" field.
  String? _answer1;
  String get answer1 => _answer1 ?? '';
  bool hasAnswer1() => _answer1 != null;

  // "answer_2" field.
  String? _answer2;
  String get answer2 => _answer2 ?? '';
  bool hasAnswer2() => _answer2 != null;

  // "answer_3" field.
  String? _answer3;
  String get answer3 => _answer3 ?? '';
  bool hasAnswer3() => _answer3 != null;

  // "answer_4" field.
  String? _answer4;
  String get answer4 => _answer4 ?? '';
  bool hasAnswer4() => _answer4 != null;

  // "answer_6" field.
  String? _answer6;
  String get answer6 => _answer6 ?? '';
  bool hasAnswer6() => _answer6 != null;

  // "answer_8" field.
  String? _answer8;
  String get answer8 => _answer8 ?? '';
  bool hasAnswer8() => _answer8 != null;

  // "answer_9" field.
  String? _answer9;
  String get answer9 => _answer9 ?? '';
  bool hasAnswer9() => _answer9 != null;

  // "answer_10" field.
  List<String>? _answer10;
  List<String> get answer10 => _answer10 ?? const [];
  bool hasAnswer10() => _answer10 != null;

  // "other_answer_10" field.
  String? _otherAnswer10;
  String get otherAnswer10 => _otherAnswer10 ?? '';
  bool hasOtherAnswer10() => _otherAnswer10 != null;

  // "answer_11" field.
  String? _answer11;
  String get answer11 => _answer11 ?? '';
  bool hasAnswer11() => _answer11 != null;

  // "answer_12" field.
  String? _answer12;
  String get answer12 => _answer12 ?? '';
  bool hasAnswer12() => _answer12 != null;

  // "answer_13" field.
  List<String>? _answer13;
  List<String> get answer13 => _answer13 ?? const [];
  bool hasAnswer13() => _answer13 != null;

  // "answer_14" field.
  List<String>? _answer14;
  List<String> get answer14 => _answer14 ?? const [];
  bool hasAnswer14() => _answer14 != null;

  // "answer_5_name" field.
  String? _answer5Name;
  String get answer5Name => _answer5Name ?? '';
  bool hasAnswer5Name() => _answer5Name != null;

  // "answer_5_age" field.
  String? _answer5Age;
  String get answer5Age => _answer5Age ?? '';
  bool hasAnswer5Age() => _answer5Age != null;

  // "answer_5_rel" field.
  String? _answer5Rel;
  String get answer5Rel => _answer5Rel ?? '';
  bool hasAnswer5Rel() => _answer5Rel != null;

  // "answer_7_name" field.
  String? _answer7Name;
  String get answer7Name => _answer7Name ?? '';
  bool hasAnswer7Name() => _answer7Name != null;

  // "answer_7_address" field.
  String? _answer7Address;
  String get answer7Address => _answer7Address ?? '';
  bool hasAnswer7Address() => _answer7Address != null;

  // "other_answer5_name" field.
  String? _otherAnswer5Name;
  String get otherAnswer5Name => _otherAnswer5Name ?? '';
  bool hasOtherAnswer5Name() => _otherAnswer5Name != null;

  // "other_answer5_age" field.
  String? _otherAnswer5Age;
  String get otherAnswer5Age => _otherAnswer5Age ?? '';
  bool hasOtherAnswer5Age() => _otherAnswer5Age != null;

  // "other_answer5_relationship" field.
  String? _otherAnswer5Relationship;
  String get otherAnswer5Relationship => _otherAnswer5Relationship ?? '';
  bool hasOtherAnswer5Relationship() => _otherAnswer5Relationship != null;

  // "answer_15" field.
  List<String>? _answer15;
  List<String> get answer15 => _answer15 ?? const [];
  bool hasAnswer15() => _answer15 != null;

  // "answer_16" field.
  List<String>? _answer16;
  List<String> get answer16 => _answer16 ?? const [];
  bool hasAnswer16() => _answer16 != null;

  // "answer_17" field.
  List<String>? _answer17;
  List<String> get answer17 => _answer17 ?? const [];
  bool hasAnswer17() => _answer17 != null;

  // "other_answer_17" field.
  String? _otherAnswer17;
  String get otherAnswer17 => _otherAnswer17 ?? '';
  bool hasOtherAnswer17() => _otherAnswer17 != null;

  // "answer_18" field.
  List<String>? _answer18;
  List<String> get answer18 => _answer18 ?? const [];
  bool hasAnswer18() => _answer18 != null;

  // "answer_19" field.
  List<String>? _answer19;
  List<String> get answer19 => _answer19 ?? const [];
  bool hasAnswer19() => _answer19 != null;

  // "answer_25" field.
  List<String>? _answer25;
  List<String> get answer25 => _answer25 ?? const [];
  bool hasAnswer25() => _answer25 != null;

  // "yes_23_form" field.
  String? _yes23Form;
  String get yes23Form => _yes23Form ?? '';
  bool hasYes23Form() => _yes23Form != null;

  // "yes_23_score" field.
  String? _yes23Score;
  String get yes23Score => _yes23Score ?? '';
  bool hasYes23Score() => _yes23Score != null;

  // "other_answer_15" field.
  String? _otherAnswer15;
  String get otherAnswer15 => _otherAnswer15 ?? '';
  bool hasOtherAnswer15() => _otherAnswer15 != null;

  // "vp_no" field.
  String? _vpNo;
  String get vpNo => _vpNo ?? '';
  bool hasVpNo() => _vpNo != null;

  // "vp_yes_score" field.
  String? _vpYesScore;
  String get vpYesScore => _vpYesScore ?? '';
  bool hasVpYesScore() => _vpYesScore != null;

  // "servic_aba" field.
  List<String>? _servicAba;
  List<String> get servicAba => _servicAba ?? const [];
  bool hasServicAba() => _servicAba != null;

  // "slp_direct" field.
  List<String>? _slpDirect;
  List<String> get slpDirect => _slpDirect ?? const [];
  bool hasSlpDirect() => _slpDirect != null;

  // "slp_indirect" field.
  List<String>? _slpIndirect;
  List<String> get slpIndirect => _slpIndirect ?? const [];
  bool hasSlpIndirect() => _slpIndirect != null;

  // "ot_direct" field.
  List<String>? _otDirect;
  List<String> get otDirect => _otDirect ?? const [];
  bool hasOtDirect() => _otDirect != null;

  // "ot_indirect" field.
  List<String>? _otIndirect;
  List<String> get otIndirect => _otIndirect ?? const [];
  bool hasOtIndirect() => _otIndirect != null;

  // "pt_direct" field.
  List<String>? _ptDirect;
  List<String> get ptDirect => _ptDirect ?? const [];
  bool hasPtDirect() => _ptDirect != null;

  // "school_hours" field.
  String? _schoolHours;
  String get schoolHours => _schoolHours ?? '';
  bool hasSchoolHours() => _schoolHours != null;

  // "school_type" field.
  String? _schoolType;
  String get schoolType => _schoolType ?? '';
  bool hasSchoolType() => _schoolType != null;

  // "other_service" field.
  String? _otherService;
  String get otherService => _otherService ?? '';
  bool hasOtherService() => _otherService != null;

  // "therapist" field.
  String? _therapist;
  String get therapist => _therapist ?? '';
  bool hasTherapist() => _therapist != null;

  // "yes_answer_24" field.
  String? _yesAnswer24;
  String get yesAnswer24 => _yesAnswer24 ?? '';
  bool hasYesAnswer24() => _yesAnswer24 != null;

  // "answer_24_no" field.
  List<String>? _answer24No;
  List<String> get answer24No => _answer24No ?? const [];
  bool hasAnswer24No() => _answer24No != null;

  // "answer_23_no" field.
  List<String>? _answer23No;
  List<String> get answer23No => _answer23No ?? const [];
  bool hasAnswer23No() => _answer23No != null;

  // "answer_20" field.
  List<String>? _answer20;
  List<String> get answer20 => _answer20 ?? const [];
  bool hasAnswer20() => _answer20 != null;

  // "pt_indirect" field.
  List<String>? _ptIndirect;
  List<String> get ptIndirect => _ptIndirect ?? const [];
  bool hasPtIndirect() => _ptIndirect != null;

  // "answer_23_reclang" field.
  List<String>? _answer23Reclang;
  List<String> get answer23Reclang => _answer23Reclang ?? const [];
  bool hasAnswer23Reclang() => _answer23Reclang != null;

  // "answer_23_socin" field.
  List<String>? _answer23Socin;
  List<String> get answer23Socin => _answer23Socin ?? const [];
  bool hasAnswer23Socin() => _answer23Socin != null;

  // "answer_23_socplay" field.
  List<String>? _answer23Socplay;
  List<String> get answer23Socplay => _answer23Socplay ?? const [];
  bool hasAnswer23Socplay() => _answer23Socplay != null;

  // "answer_23_problem" field.
  List<String>? _answer23Problem;
  List<String> get answer23Problem => _answer23Problem ?? const [];
  bool hasAnswer23Problem() => _answer23Problem != null;

  // "answer_23_rep" field.
  List<String>? _answer23Rep;
  List<String> get answer23Rep => _answer23Rep ?? const [];
  bool hasAnswer23Rep() => _answer23Rep != null;

  // "answer_22_exlang" field.
  List<String>? _answer22Exlang;
  List<String> get answer22Exlang => _answer22Exlang ?? const [];
  bool hasAnswer22Exlang() => _answer22Exlang != null;

  // "answer_22_reclang" field.
  List<String>? _answer22Reclang;
  List<String> get answer22Reclang => _answer22Reclang ?? const [];
  bool hasAnswer22Reclang() => _answer22Reclang != null;

  // "answer_22_socin" field.
  List<String>? _answer22Socin;
  List<String> get answer22Socin => _answer22Socin ?? const [];
  bool hasAnswer22Socin() => _answer22Socin != null;

  // "answer_22_socplay" field.
  List<String>? _answer22Socplay;
  List<String> get answer22Socplay => _answer22Socplay ?? const [];
  bool hasAnswer22Socplay() => _answer22Socplay != null;

  // "answer_22_problem" field.
  List<String>? _answer22Problem;
  List<String> get answer22Problem => _answer22Problem ?? const [];
  bool hasAnswer22Problem() => _answer22Problem != null;

  // "answer_22_rep" field.
  List<String>? _answer22Rep;
  List<String> get answer22Rep => _answer22Rep ?? const [];
  bool hasAnswer22Rep() => _answer22Rep != null;

  void _initializeFields() {
    _answer1 = snapshotData['answer_1'] as String?;
    _answer2 = snapshotData['answer_2'] as String?;
    _answer3 = snapshotData['answer_3'] as String?;
    _answer4 = snapshotData['answer_4'] as String?;
    _answer6 = snapshotData['answer_6'] as String?;
    _answer8 = snapshotData['answer_8'] as String?;
    _answer9 = snapshotData['answer_9'] as String?;
    _answer10 = getDataList(snapshotData['answer_10']);
    _otherAnswer10 = snapshotData['other_answer_10'] as String?;
    _answer11 = snapshotData['answer_11'] as String?;
    _answer12 = snapshotData['answer_12'] as String?;
    _answer13 = getDataList(snapshotData['answer_13']);
    _answer14 = getDataList(snapshotData['answer_14']);
    _answer5Name = snapshotData['answer_5_name'] as String?;
    _answer5Age = snapshotData['answer_5_age'] as String?;
    _answer5Rel = snapshotData['answer_5_rel'] as String?;
    _answer7Name = snapshotData['answer_7_name'] as String?;
    _answer7Address = snapshotData['answer_7_address'] as String?;
    _otherAnswer5Name = snapshotData['other_answer5_name'] as String?;
    _otherAnswer5Age = snapshotData['other_answer5_age'] as String?;
    _otherAnswer5Relationship =
        snapshotData['other_answer5_relationship'] as String?;
    _answer15 = getDataList(snapshotData['answer_15']);
    _answer16 = getDataList(snapshotData['answer_16']);
    _answer17 = getDataList(snapshotData['answer_17']);
    _otherAnswer17 = snapshotData['other_answer_17'] as String?;
    _answer18 = getDataList(snapshotData['answer_18']);
    _answer19 = getDataList(snapshotData['answer_19']);
    _answer25 = getDataList(snapshotData['answer_25']);
    _yes23Form = snapshotData['yes_23_form'] as String?;
    _yes23Score = snapshotData['yes_23_score'] as String?;
    _otherAnswer15 = snapshotData['other_answer_15'] as String?;
    _vpNo = snapshotData['vp_no'] as String?;
    _vpYesScore = snapshotData['vp_yes_score'] as String?;
    _servicAba = getDataList(snapshotData['servic_aba']);
    _slpDirect = getDataList(snapshotData['slp_direct']);
    _slpIndirect = getDataList(snapshotData['slp_indirect']);
    _otDirect = getDataList(snapshotData['ot_direct']);
    _otIndirect = getDataList(snapshotData['ot_indirect']);
    _ptDirect = getDataList(snapshotData['pt_direct']);
    _schoolHours = snapshotData['school_hours'] as String?;
    _schoolType = snapshotData['school_type'] as String?;
    _otherService = snapshotData['other_service'] as String?;
    _therapist = snapshotData['therapist'] as String?;
    _yesAnswer24 = snapshotData['yes_answer_24'] as String?;
    _answer24No = getDataList(snapshotData['answer_24_no']);
    _answer23No = getDataList(snapshotData['answer_23_no']);
    _answer20 = getDataList(snapshotData['answer_20']);
    _ptIndirect = getDataList(snapshotData['pt_indirect']);
    _answer23Reclang = getDataList(snapshotData['answer_23_reclang']);
    _answer23Socin = getDataList(snapshotData['answer_23_socin']);
    _answer23Socplay = getDataList(snapshotData['answer_23_socplay']);
    _answer23Problem = getDataList(snapshotData['answer_23_problem']);
    _answer23Rep = getDataList(snapshotData['answer_23_rep']);
    _answer22Exlang = getDataList(snapshotData['answer_22_exlang']);
    _answer22Reclang = getDataList(snapshotData['answer_22_reclang']);
    _answer22Socin = getDataList(snapshotData['answer_22_socin']);
    _answer22Socplay = getDataList(snapshotData['answer_22_socplay']);
    _answer22Problem = getDataList(snapshotData['answer_22_problem']);
    _answer22Rep = getDataList(snapshotData['answer_22_rep']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('intake_assessment');

  static Stream<IntakeAssessmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IntakeAssessmentRecord.fromSnapshot(s));

  static Future<IntakeAssessmentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IntakeAssessmentRecord.fromSnapshot(s));

  static IntakeAssessmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IntakeAssessmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IntakeAssessmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IntakeAssessmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IntakeAssessmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IntakeAssessmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIntakeAssessmentRecordData({
  String? answer1,
  String? answer2,
  String? answer3,
  String? answer4,
  String? answer6,
  String? answer8,
  String? answer9,
  String? otherAnswer10,
  String? answer11,
  String? answer12,
  String? answer5Name,
  String? answer5Age,
  String? answer5Rel,
  String? answer7Name,
  String? answer7Address,
  String? otherAnswer5Name,
  String? otherAnswer5Age,
  String? otherAnswer5Relationship,
  String? otherAnswer17,
  String? yes23Form,
  String? yes23Score,
  String? otherAnswer15,
  String? vpNo,
  String? vpYesScore,
  String? schoolHours,
  String? schoolType,
  String? otherService,
  String? therapist,
  String? yesAnswer24,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'answer_1': answer1,
      'answer_2': answer2,
      'answer_3': answer3,
      'answer_4': answer4,
      'answer_6': answer6,
      'answer_8': answer8,
      'answer_9': answer9,
      'other_answer_10': otherAnswer10,
      'answer_11': answer11,
      'answer_12': answer12,
      'answer_5_name': answer5Name,
      'answer_5_age': answer5Age,
      'answer_5_rel': answer5Rel,
      'answer_7_name': answer7Name,
      'answer_7_address': answer7Address,
      'other_answer5_name': otherAnswer5Name,
      'other_answer5_age': otherAnswer5Age,
      'other_answer5_relationship': otherAnswer5Relationship,
      'other_answer_17': otherAnswer17,
      'yes_23_form': yes23Form,
      'yes_23_score': yes23Score,
      'other_answer_15': otherAnswer15,
      'vp_no': vpNo,
      'vp_yes_score': vpYesScore,
      'school_hours': schoolHours,
      'school_type': schoolType,
      'other_service': otherService,
      'therapist': therapist,
      'yes_answer_24': yesAnswer24,
    }.withoutNulls,
  );

  return firestoreData;
}

class IntakeAssessmentRecordDocumentEquality
    implements Equality<IntakeAssessmentRecord> {
  const IntakeAssessmentRecordDocumentEquality();

  @override
  bool equals(IntakeAssessmentRecord? e1, IntakeAssessmentRecord? e2) {
    const listEquality = ListEquality();
    return e1?.answer1 == e2?.answer1 &&
        e1?.answer2 == e2?.answer2 &&
        e1?.answer3 == e2?.answer3 &&
        e1?.answer4 == e2?.answer4 &&
        e1?.answer6 == e2?.answer6 &&
        e1?.answer8 == e2?.answer8 &&
        e1?.answer9 == e2?.answer9 &&
        listEquality.equals(e1?.answer10, e2?.answer10) &&
        e1?.otherAnswer10 == e2?.otherAnswer10 &&
        e1?.answer11 == e2?.answer11 &&
        e1?.answer12 == e2?.answer12 &&
        listEquality.equals(e1?.answer13, e2?.answer13) &&
        listEquality.equals(e1?.answer14, e2?.answer14) &&
        e1?.answer5Name == e2?.answer5Name &&
        e1?.answer5Age == e2?.answer5Age &&
        e1?.answer5Rel == e2?.answer5Rel &&
        e1?.answer7Name == e2?.answer7Name &&
        e1?.answer7Address == e2?.answer7Address &&
        e1?.otherAnswer5Name == e2?.otherAnswer5Name &&
        e1?.otherAnswer5Age == e2?.otherAnswer5Age &&
        e1?.otherAnswer5Relationship == e2?.otherAnswer5Relationship &&
        listEquality.equals(e1?.answer15, e2?.answer15) &&
        listEquality.equals(e1?.answer16, e2?.answer16) &&
        listEquality.equals(e1?.answer17, e2?.answer17) &&
        e1?.otherAnswer17 == e2?.otherAnswer17 &&
        listEquality.equals(e1?.answer18, e2?.answer18) &&
        listEquality.equals(e1?.answer19, e2?.answer19) &&
        listEquality.equals(e1?.answer25, e2?.answer25) &&
        e1?.yes23Form == e2?.yes23Form &&
        e1?.yes23Score == e2?.yes23Score &&
        e1?.otherAnswer15 == e2?.otherAnswer15 &&
        e1?.vpNo == e2?.vpNo &&
        e1?.vpYesScore == e2?.vpYesScore &&
        listEquality.equals(e1?.servicAba, e2?.servicAba) &&
        listEquality.equals(e1?.slpDirect, e2?.slpDirect) &&
        listEquality.equals(e1?.slpIndirect, e2?.slpIndirect) &&
        listEquality.equals(e1?.otDirect, e2?.otDirect) &&
        listEquality.equals(e1?.otIndirect, e2?.otIndirect) &&
        listEquality.equals(e1?.ptDirect, e2?.ptDirect) &&
        e1?.schoolHours == e2?.schoolHours &&
        e1?.schoolType == e2?.schoolType &&
        e1?.otherService == e2?.otherService &&
        e1?.therapist == e2?.therapist &&
        e1?.yesAnswer24 == e2?.yesAnswer24 &&
        listEquality.equals(e1?.answer24No, e2?.answer24No) &&
        listEquality.equals(e1?.answer23No, e2?.answer23No) &&
        listEquality.equals(e1?.answer20, e2?.answer20) &&
        listEquality.equals(e1?.ptIndirect, e2?.ptIndirect) &&
        listEquality.equals(e1?.answer23Reclang, e2?.answer23Reclang) &&
        listEquality.equals(e1?.answer23Socin, e2?.answer23Socin) &&
        listEquality.equals(e1?.answer23Socplay, e2?.answer23Socplay) &&
        listEquality.equals(e1?.answer23Problem, e2?.answer23Problem) &&
        listEquality.equals(e1?.answer23Rep, e2?.answer23Rep) &&
        listEquality.equals(e1?.answer22Exlang, e2?.answer22Exlang) &&
        listEquality.equals(e1?.answer22Reclang, e2?.answer22Reclang) &&
        listEquality.equals(e1?.answer22Socin, e2?.answer22Socin) &&
        listEquality.equals(e1?.answer22Socplay, e2?.answer22Socplay) &&
        listEquality.equals(e1?.answer22Problem, e2?.answer22Problem) &&
        listEquality.equals(e1?.answer22Rep, e2?.answer22Rep);
  }

  @override
  int hash(IntakeAssessmentRecord? e) => const ListEquality().hash([
        e?.answer1,
        e?.answer2,
        e?.answer3,
        e?.answer4,
        e?.answer6,
        e?.answer8,
        e?.answer9,
        e?.answer10,
        e?.otherAnswer10,
        e?.answer11,
        e?.answer12,
        e?.answer13,
        e?.answer14,
        e?.answer5Name,
        e?.answer5Age,
        e?.answer5Rel,
        e?.answer7Name,
        e?.answer7Address,
        e?.otherAnswer5Name,
        e?.otherAnswer5Age,
        e?.otherAnswer5Relationship,
        e?.answer15,
        e?.answer16,
        e?.answer17,
        e?.otherAnswer17,
        e?.answer18,
        e?.answer19,
        e?.answer25,
        e?.yes23Form,
        e?.yes23Score,
        e?.otherAnswer15,
        e?.vpNo,
        e?.vpYesScore,
        e?.servicAba,
        e?.slpDirect,
        e?.slpIndirect,
        e?.otDirect,
        e?.otIndirect,
        e?.ptDirect,
        e?.schoolHours,
        e?.schoolType,
        e?.otherService,
        e?.therapist,
        e?.yesAnswer24,
        e?.answer24No,
        e?.answer23No,
        e?.answer20,
        e?.ptIndirect,
        e?.answer23Reclang,
        e?.answer23Socin,
        e?.answer23Socplay,
        e?.answer23Problem,
        e?.answer23Rep,
        e?.answer22Exlang,
        e?.answer22Reclang,
        e?.answer22Socin,
        e?.answer22Socplay,
        e?.answer22Problem,
        e?.answer22Rep
      ]);

  @override
  bool isValidKey(Object? o) => o is IntakeAssessmentRecord;
}
