import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'intake_assessment_widget.dart' show IntakeAssessmentWidget;
import 'package:flutter/material.dart';

class IntakeAssessmentModel extends FlutterFlowModel<IntakeAssessmentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for answer_1 widget.
  String? answer1Value;
  FormFieldController<String>? answer1ValueController;
  // State field(s) for answer_2 widget.
  FocusNode? answer2FocusNode;
  TextEditingController? answer2TextController;
  String? Function(BuildContext, String?)? answer2TextControllerValidator;
  String? _answer2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_3 widget.
  FocusNode? answer3FocusNode;
  TextEditingController? answer3TextController;
  String? Function(BuildContext, String?)? answer3TextControllerValidator;
  String? _answer3TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_4 widget.
  FocusNode? answer4FocusNode;
  TextEditingController? answer4TextController;
  String? Function(BuildContext, String?)? answer4TextControllerValidator;
  String? _answer4TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_5_name widget.
  FocusNode? answer5NameFocusNode;
  TextEditingController? answer5NameTextController;
  String? Function(BuildContext, String?)? answer5NameTextControllerValidator;
  String? _answer5NameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_5_age widget.
  FocusNode? answer5AgeFocusNode;
  TextEditingController? answer5AgeTextController;
  String? Function(BuildContext, String?)? answer5AgeTextControllerValidator;
  String? _answer5AgeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_5_rel widget.
  FocusNode? answer5RelFocusNode;
  TextEditingController? answer5RelTextController;
  String? Function(BuildContext, String?)? answer5RelTextControllerValidator;
  String? _answer5RelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_5_name_other widget.
  FocusNode? answer5NameOtherFocusNode;
  TextEditingController? answer5NameOtherTextController;
  String? Function(BuildContext, String?)?
      answer5NameOtherTextControllerValidator;
  // State field(s) for answer_5_age_other widget.
  FocusNode? answer5AgeOtherFocusNode;
  TextEditingController? answer5AgeOtherTextController;
  String? Function(BuildContext, String?)?
      answer5AgeOtherTextControllerValidator;
  // State field(s) for answer_5_rel_other widget.
  FocusNode? answer5RelOtherFocusNode;
  TextEditingController? answer5RelOtherTextController;
  String? Function(BuildContext, String?)?
      answer5RelOtherTextControllerValidator;
  // State field(s) for answer_6 widget.
  FocusNode? answer6FocusNode;
  TextEditingController? answer6TextController;
  String? Function(BuildContext, String?)? answer6TextControllerValidator;
  String? _answer6TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_7_name widget.
  FocusNode? answer7NameFocusNode;
  TextEditingController? answer7NameTextController;
  String? Function(BuildContext, String?)? answer7NameTextControllerValidator;
  String? _answer7NameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_7_address widget.
  FocusNode? answer7AddressFocusNode;
  TextEditingController? answer7AddressTextController;
  String? Function(BuildContext, String?)?
      answer7AddressTextControllerValidator;
  String? _answer7AddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_8 widget.
  FocusNode? answer8FocusNode;
  TextEditingController? answer8TextController;
  String? Function(BuildContext, String?)? answer8TextControllerValidator;
  String? _answer8TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_9 widget.
  FocusNode? answer9FocusNode;
  TextEditingController? answer9TextController;
  String? Function(BuildContext, String?)? answer9TextControllerValidator;
  String? _answer9TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_10 widget.
  FormFieldController<List<String>>? answer10ValueController1;
  List<String>? get answer10Values1 => answer10ValueController1?.value;
  set answer10Values1(List<String>? v) => answer10ValueController1?.value = v;

  // State field(s) for answer_10 widget.
  FormFieldController<List<String>>? answer10ValueController2;
  List<String>? get answer10Values2 => answer10ValueController2?.value;
  set answer10Values2(List<String>? v) => answer10ValueController2?.value = v;

  // State field(s) for other_answer_10 widget.
  FocusNode? otherAnswer10FocusNode;
  TextEditingController? otherAnswer10TextController;
  String? Function(BuildContext, String?)? otherAnswer10TextControllerValidator;
  // State field(s) for answer_11 widget.
  FocusNode? answer11FocusNode;
  TextEditingController? answer11TextController;
  String? Function(BuildContext, String?)? answer11TextControllerValidator;
  String? _answer11TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_12 widget.
  FocusNode? answer12FocusNode;
  TextEditingController? answer12TextController;
  String? Function(BuildContext, String?)? answer12TextControllerValidator;
  String? _answer12TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for answer_13_co_morbid widget.
  FormFieldController<List<String>>? answer13CoMorbidValueController;
  List<String>? get answer13CoMorbidValues =>
      answer13CoMorbidValueController?.value;
  set answer13CoMorbidValues(List<String>? v) =>
      answer13CoMorbidValueController?.value = v;

  // State field(s) for answer_14_diagnoses widget.
  FormFieldController<List<String>>? answer14DiagnosesValueController;
  List<String>? get answer14DiagnosesValues =>
      answer14DiagnosesValueController?.value;
  set answer14DiagnosesValues(List<String>? v) =>
      answer14DiagnosesValueController?.value = v;

  // State field(s) for answer_15_medications widget.
  FormFieldController<List<String>>? answer15MedicationsValueController;
  List<String>? get answer15MedicationsValues =>
      answer15MedicationsValueController?.value;
  set answer15MedicationsValues(List<String>? v) =>
      answer15MedicationsValueController?.value = v;

  // State field(s) for answer_15_medications_other widget.
  FormFieldController<List<String>>? answer15MedicationsOtherValueController;
  List<String>? get answer15MedicationsOtherValues =>
      answer15MedicationsOtherValueController?.value;
  set answer15MedicationsOtherValues(List<String>? v) =>
      answer15MedicationsOtherValueController?.value = v;

  // State field(s) for other_answer_15 widget.
  FocusNode? otherAnswer15FocusNode;
  TextEditingController? otherAnswer15TextController;
  String? Function(BuildContext, String?)? otherAnswer15TextControllerValidator;
  // State field(s) for answer_16 widget.
  FormFieldController<List<String>>? answer16ValueController;
  List<String>? get answer16Values => answer16ValueController?.value;
  set answer16Values(List<String>? v) => answer16ValueController?.value = v;

  // State field(s) for answer_17 widget.
  FormFieldController<List<String>>? answer17ValueController;
  List<String>? get answer17Values => answer17ValueController?.value;
  set answer17Values(List<String>? v) => answer17ValueController?.value = v;

  // State field(s) for answer_other_17 widget.
  FormFieldController<List<String>>? answerOther17ValueController;
  List<String>? get answerOther17Values => answerOther17ValueController?.value;
  set answerOther17Values(List<String>? v) =>
      answerOther17ValueController?.value = v;

  // State field(s) for other_answer_17 widget.
  FocusNode? otherAnswer17FocusNode;
  TextEditingController? otherAnswer17TextController;
  String? Function(BuildContext, String?)? otherAnswer17TextControllerValidator;
  // State field(s) for answer_18 widget.
  FormFieldController<List<String>>? answer18ValueController;
  List<String>? get answer18Values => answer18ValueController?.value;
  set answer18Values(List<String>? v) => answer18ValueController?.value = v;

  // State field(s) for answer_19 widget.
  FormFieldController<List<String>>? answer19ValueController;
  List<String>? get answer19Values => answer19ValueController?.value;
  set answer19Values(List<String>? v) => answer19ValueController?.value = v;

  // State field(s) for answer_20 widget.
  FormFieldController<List<String>>? answer20ValueController;
  List<String>? get answer20Values => answer20ValueController?.value;
  set answer20Values(List<String>? v) => answer20ValueController?.value = v;

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for aba widget.
  FormFieldController<List<String>>? abaValueController;
  List<String>? get abaValues => abaValueController?.value;
  set abaValues(List<String>? v) => abaValueController?.value = v;

  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for slp widget.
  FormFieldController<List<String>>? slpValueController;
  List<String>? get slpValues => slpValueController?.value;
  set slpValues(List<String>? v) => slpValueController?.value = v;

  // State field(s) for slp_direct widget.
  FormFieldController<List<String>>? slpDirectValueController;
  List<String>? get slpDirectValues => slpDirectValueController?.value;
  set slpDirectValues(List<String>? v) => slpDirectValueController?.value = v;

  // State field(s) for slp_indirect widget.
  FormFieldController<List<String>>? slpIndirectValueController;
  List<String>? get slpIndirectValues => slpIndirectValueController?.value;
  set slpIndirectValues(List<String>? v) =>
      slpIndirectValueController?.value = v;

  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController1;
  List<String>? get checkboxGroupValues1 =>
      checkboxGroupValueController1?.value;
  set checkboxGroupValues1(List<String>? v) =>
      checkboxGroupValueController1?.value = v;

  // State field(s) for ot_direct widget.
  FormFieldController<List<String>>? otDirectValueController;
  List<String>? get otDirectValues => otDirectValueController?.value;
  set otDirectValues(List<String>? v) => otDirectValueController?.value = v;

  // State field(s) for ot_indirect widget.
  FormFieldController<List<String>>? otIndirectValueController;
  List<String>? get otIndirectValues => otIndirectValueController?.value;
  set otIndirectValues(List<String>? v) => otIndirectValueController?.value = v;

  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController2;
  List<String>? get checkboxGroupValues2 =>
      checkboxGroupValueController2?.value;
  set checkboxGroupValues2(List<String>? v) =>
      checkboxGroupValueController2?.value = v;

  // State field(s) for pt_direct widget.
  FormFieldController<List<String>>? ptDirectValueController;
  List<String>? get ptDirectValues => ptDirectValueController?.value;
  set ptDirectValues(List<String>? v) => ptDirectValueController?.value = v;

  // State field(s) for pt_indirect widget.
  FormFieldController<List<String>>? ptIndirectValueController;
  List<String>? get ptIndirectValues => ptIndirectValueController?.value;
  set ptIndirectValues(List<String>? v) => ptIndirectValueController?.value = v;

  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for school_hours widget.
  FocusNode? schoolHoursFocusNode;
  TextEditingController? schoolHoursTextController;
  String? Function(BuildContext, String?)? schoolHoursTextControllerValidator;
  // State field(s) for schoo_type widget.
  String? schooTypeValue;
  FormFieldController<String>? schooTypeValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for services_other widget.
  FocusNode? servicesOtherFocusNode;
  TextEditingController? servicesOtherTextController;
  String? Function(BuildContext, String?)? servicesOtherTextControllerValidator;
  // State field(s) for exlang widget.
  FormFieldController<List<String>>? exlangValueController;
  List<String>? get exlangValues => exlangValueController?.value;
  set exlangValues(List<String>? v) => exlangValueController?.value = v;

  // State field(s) for reclang widget.
  FormFieldController<List<String>>? reclangValueController;
  List<String>? get reclangValues => reclangValueController?.value;
  set reclangValues(List<String>? v) => reclangValueController?.value = v;

  // State field(s) for socin widget.
  FormFieldController<List<String>>? socinValueController;
  List<String>? get socinValues => socinValueController?.value;
  set socinValues(List<String>? v) => socinValueController?.value = v;

  // State field(s) for socplay widget.
  FormFieldController<List<String>>? socplayValueController;
  List<String>? get socplayValues => socplayValueController?.value;
  set socplayValues(List<String>? v) => socplayValueController?.value = v;

  // State field(s) for problem widget.
  FormFieldController<List<String>>? problemValueController;
  List<String>? get problemValues => problemValueController?.value;
  set problemValues(List<String>? v) => problemValueController?.value = v;

  // State field(s) for rep widget.
  FormFieldController<List<String>>? repValueController;
  List<String>? get repValues => repValueController?.value;
  set repValues(List<String>? v) => repValueController?.value = v;

  // State field(s) for answer_23_si widget.
  FormFieldController<List<String>>? answer23SiValueController;
  List<String>? get answer23SiValues => answer23SiValueController?.value;
  set answer23SiValues(List<String>? v) => answer23SiValueController?.value = v;

  // State field(s) for yes_23_form widget.
  FocusNode? yes23FormFocusNode;
  TextEditingController? yes23FormTextController;
  String? Function(BuildContext, String?)? yes23FormTextControllerValidator;
  // State field(s) for yes_23_score widget.
  FocusNode? yes23ScoreFocusNode;
  TextEditingController? yes23ScoreTextController;
  String? Function(BuildContext, String?)? yes23ScoreTextControllerValidator;
  // State field(s) for answer_23_no widget.
  FormFieldController<List<String>>? answer23NoValueController;
  List<String>? get answer23NoValues => answer23NoValueController?.value;
  set answer23NoValues(List<String>? v) => answer23NoValueController?.value = v;

  // State field(s) for answer_24_si widget.
  FormFieldController<List<String>>? answer24SiValueController;
  List<String>? get answer24SiValues => answer24SiValueController?.value;
  set answer24SiValues(List<String>? v) => answer24SiValueController?.value = v;

  // State field(s) for yes_answer_24 widget.
  FocusNode? yesAnswer24FocusNode;
  TextEditingController? yesAnswer24TextController;
  String? Function(BuildContext, String?)? yesAnswer24TextControllerValidator;
  // State field(s) for answer_24_no widget.
  FormFieldController<List<String>>? answer24NoValueController;
  List<String>? get answer24NoValues => answer24NoValueController?.value;
  set answer24NoValues(List<String>? v) => answer24NoValueController?.value = v;

  // State field(s) for answer_25 widget.
  FormFieldController<List<String>>? answer25ValueController;
  List<String>? get answer25Values => answer25ValueController?.value;
  set answer25Values(List<String>? v) => answer25ValueController?.value = v;

  @override
  void initState(BuildContext context) {
    answer2TextControllerValidator = _answer2TextControllerValidator;
    answer3TextControllerValidator = _answer3TextControllerValidator;
    answer4TextControllerValidator = _answer4TextControllerValidator;
    answer5NameTextControllerValidator = _answer5NameTextControllerValidator;
    answer5AgeTextControllerValidator = _answer5AgeTextControllerValidator;
    answer5RelTextControllerValidator = _answer5RelTextControllerValidator;
    answer6TextControllerValidator = _answer6TextControllerValidator;
    answer7NameTextControllerValidator = _answer7NameTextControllerValidator;
    answer7AddressTextControllerValidator =
        _answer7AddressTextControllerValidator;
    answer8TextControllerValidator = _answer8TextControllerValidator;
    answer9TextControllerValidator = _answer9TextControllerValidator;
    answer11TextControllerValidator = _answer11TextControllerValidator;
    answer12TextControllerValidator = _answer12TextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    answer2FocusNode?.dispose();
    answer2TextController?.dispose();

    answer3FocusNode?.dispose();
    answer3TextController?.dispose();

    answer4FocusNode?.dispose();
    answer4TextController?.dispose();

    answer5NameFocusNode?.dispose();
    answer5NameTextController?.dispose();

    answer5AgeFocusNode?.dispose();
    answer5AgeTextController?.dispose();

    answer5RelFocusNode?.dispose();
    answer5RelTextController?.dispose();

    answer5NameOtherFocusNode?.dispose();
    answer5NameOtherTextController?.dispose();

    answer5AgeOtherFocusNode?.dispose();
    answer5AgeOtherTextController?.dispose();

    answer5RelOtherFocusNode?.dispose();
    answer5RelOtherTextController?.dispose();

    answer6FocusNode?.dispose();
    answer6TextController?.dispose();

    answer7NameFocusNode?.dispose();
    answer7NameTextController?.dispose();

    answer7AddressFocusNode?.dispose();
    answer7AddressTextController?.dispose();

    answer8FocusNode?.dispose();
    answer8TextController?.dispose();

    answer9FocusNode?.dispose();
    answer9TextController?.dispose();

    otherAnswer10FocusNode?.dispose();
    otherAnswer10TextController?.dispose();

    answer11FocusNode?.dispose();
    answer11TextController?.dispose();

    answer12FocusNode?.dispose();
    answer12TextController?.dispose();

    otherAnswer15FocusNode?.dispose();
    otherAnswer15TextController?.dispose();

    otherAnswer17FocusNode?.dispose();
    otherAnswer17TextController?.dispose();

    schoolHoursFocusNode?.dispose();
    schoolHoursTextController?.dispose();

    servicesOtherFocusNode?.dispose();
    servicesOtherTextController?.dispose();

    yes23FormFocusNode?.dispose();
    yes23FormTextController?.dispose();

    yes23ScoreFocusNode?.dispose();
    yes23ScoreTextController?.dispose();

    yesAnswer24FocusNode?.dispose();
    yesAnswer24TextController?.dispose();
  }
}
