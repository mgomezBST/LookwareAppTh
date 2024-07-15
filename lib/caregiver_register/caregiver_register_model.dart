import '/flutter_flow/flutter_flow_util.dart';
import 'caregiver_register_widget.dart' show CaregiverRegisterWidget;
import 'package:flutter/material.dart';

class CaregiverRegisterModel extends FlutterFlowModel<CaregiverRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for phoneNo widget.
  FocusNode? phoneNoFocusNode;
  TextEditingController? phoneNoTextController;
  String? Function(BuildContext, String?)? phoneNoTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode3;
  TextEditingController? emailTextController3;
  String? Function(BuildContext, String?)? emailTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    phoneNoFocusNode?.dispose();
    phoneNoTextController?.dispose();

    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();

    emailFocusNode3?.dispose();
    emailTextController3?.dispose();
  }
}
