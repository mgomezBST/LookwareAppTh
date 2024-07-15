import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'policy_saas_model.dart';
export 'policy_saas_model.dart';

class PolicySaasWidget extends StatefulWidget {
  const PolicySaasWidget({super.key});

  @override
  State<PolicySaasWidget> createState() => _PolicySaasWidgetState();
}

class _PolicySaasWidgetState extends State<PolicySaasWidget> {
  late PolicySaasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PolicySaasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await _model.columnController?.animateTo(
              _model.columnController!.position.maxScrollExtent,
              duration: const Duration(milliseconds: 100),
              curve: Curves.ease,
            );
          },
          backgroundColor: const Color(0xFF129389),
          elevation: 8.0,
          child: Icon(
            Icons.arrow_drop_down,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Stack(
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    'Software-As-A-Service Trial Agreement',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleLargeFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleLargeFamily),
                        ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Text(
                  'Software-As-A-Service\nTrial Agreement',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleLargeFamily),
                      ),
                ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
            child: SingleChildScrollView(
              controller: _model.columnController,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Text(
                      'LOOKWARE™ DIGITAL ADJUNCTIVE THERAPEUTIC PLATFORM\n\nSOFTWARE-AS-A-SERVICE TRIAL AGREEMENT\n',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'THIS SOFTWARE-AS-A-SERVICE TRIAL AGREEMENT',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            const TextSpan(
                              text: ' (“',
                              style: TextStyle(),
                            ),
                            const TextSpan(
                              text: 'Agreement',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: '”) is dated as of User’s acceptance (“',
                              style: TextStyle(),
                            ),
                            const TextSpan(
                              text: 'Effective Date',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: '”), by and between you (“',
                              style: TextStyle(),
                            ),
                            const TextSpan(
                              text: 'User',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: '” or “',
                              style: TextStyle(),
                            ),
                            const TextSpan(
                              text: 'you',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: '”), and BioStream Technologies, LLC (“',
                              style: TextStyle(),
                            ),
                            const TextSpan(
                              text: 'Licensor',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const TextSpan(
                              text: '”).\n',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Text(
                      'This is a legal agreement between you and Licensor, the owner and developer of the Lookwaretm Digital Adjunctive Therapeutic Platform (“Lookware”). Lookware includes application components, online services, and a mobile app – all of which are part of Lookware. By registering for any service provided on Lookware you become a \"User\" and you agree to be bound by all of the terms (the \"Terms\") set forth in this Agreement as long as you remain a User. IF YOU DO NOT AGREE TO THE TERMS, PLEASE DO NOT REGISTER FOR ANY LOOKWARE SERVICE. The Terms are subject to change at any time, effective upon notice to you.\n\nBY CLICKING THE BOX CONFIRMING YOUR AGREEMENT AND FINALIZING YOUR REGISTRATION FOR THE LOOKWARE APPLICATION, YOU AGREE THAT YOU HAVE READ, UNDERSTAND AND AGREE TO BE BOUND BY THIS AGREEMENT.  THE MOST CURRENT VERSION OF THE TERMS, WHICH SUPERSEDES ALL PREVIOUS VERSIONS, CAN BE REVIEWED IN THE LOOKWARE APPLICATION.  LICENSOR RESERVES THE RIGHT TO CHANGE THE TERMS OF THIS AGREEMENT AT ANY TIME AND WITHOUT NOTICE TO YOU.\n\nThis Agreement sets forth the terms and conditions under which Licensor will grant User a right to access and use the software-as-a-service and necessary local software and hardware offering as described in Exhibit A (the “Lookware SaaS”).\n',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'NOW, THEREFORE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            const TextSpan(
                              text:
                                  ', the parties, intending to be legally bound, agree as follows:\n',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: const [
                          TextSpan(
                            text: '1.1     ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'Access and Use',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text:
                                '. Subject to the terms and conditions of this Agreement, Licensor hereby grants to User a non-exclusive, non-sublicensable, non-transferable, and revocable: (a) right to remotely access and use the Lookware SaaS solely for User’s use; and (b) license to use the Lookware SaaS documentation including but not limited to the Lookware Instructions for Use, the Lookware Quick Start Guide and any other documentation accompanying Lookware (the “',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: 'Documentation',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                '”) as reasonably required in connection with User’s use. Licensor will provide assistance to User concerning the operation and evaluation of the Lookware SaaS.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.2     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Restrictions on Use',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '. User will not: (a) copy, modify, or create derivative works of the Lookware SaaS; (b) rent, lease, lend, sell, sublicense, assign, distribute, publish, transfer, or otherwise make available the Lookware SaaS or the Documentation; (c) reverse engineer, decompile, create video recordings/screenshots or disassemble the Lookware SaaS or otherwise attempt to derive or gain access to any software component of the Lookware SaaS; (d) remove any proprietary notices from the Lookware SaaS or the Documentation; (e) interfere with the operation or security of the Lookware SaaS; (f) employ the Lookware SaaS in any hazardous environments requiring fail-safe performance where failure could lead to personal injury (including death) or property damage; or (g) use the Lookware SaaS in a way that would reasonably be expected to cause liability or harm to Licensor or a third party.  Your use of Lookware is contingent upon and shall comply with applicable: (1) therapeutic professional standards; (2) the Lookware Instructions for Use, this Agreement, the Lookware Application Terms and Conditions of Use and other policies and requirements published in, or accompanying, Lookware; and (3) federal, state and local laws, requirements and regulations including but not limited to, those laws and regulations applicable to human subjects research involving children, data privacy, and the obtaining of required informed consent.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.3     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Term and Termination',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '. This Agreement will commence on the Effective Date.   Either party may terminate this Agreement at any time upon written notice to the other party.  Upon termination of this Agreement, User will immediately discontinue use of the Lookware SaaS, and, return to Licensor the Lookware SaaS as set forth in Exhibit A and the Documentation.  If requested by Licensor, User shall return or destroy all Confidential Information and certify the same in writing.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.4     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Confidentiality',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '.  All non-public, confidential or proprietary information disclosed by a party to the other party in performance of this Agreement (“',
                            style: TextStyle(),
                          ),
                          const TextSpan(
                            text: 'Confidential Information',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '”) will be protected using the same degree of care, but no less than reasonable care, as the recipient uses to protect is own Confidential Information and will not, without the written consent of the disclosing party, be used or disclosed except for the purpose of this Agreement and only by the receiving party’s affiliates, employees and service providers who are bound to substantially similar obligations of confidentiality and have a need to know. Each party will be responsible for any breaches of the foregoing confidentiality obligations by its affiliates, employees or service providers. Except as set out in this Agreement, information will not be Confidential Information unless reasonably be understood to be confidential given the nature of the information as sensitive and non-public. Confidential Information excludes information that: (a) was already known to the recipient without restriction; (b) is publicly available through no fault of the recipient; (c) is rightfully received by the recipient from a third party without a duty of confidentiality; or (d) is independently developed. A party may disclose Confidential Information when compelled to do so by law if it provides (if permitted) prior notice to the other party and reasonable opportunity to contest or limit disclosure.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.5     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Ownership',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '.  All right, title and interest in the Lookware SaaS and the Documentation and all of their derivative works, modifications, and improvements are owned exclusively by Licensor and constitute Licensor’s Confidential Information.  User agrees that Licensor owns all of the data that is collected during and as a result of User’s use of the Lookware SaaS. User acknowledges that the Lookware SaaS will collect usage and performance related data and transmit such data to Licensor (including via the internet). No rights or licenses whatsoever are granted or conveyed to User under this Agreement with respect to the Lookware SaaS or any intellectual property of Licensor, whether expressly, by implication, estoppel, reliance or otherwise, all of which are specifically excluded and disclaimed.  \n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.6     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'User Data, Intellectual Property',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '. User retains all rights over data and other information provided to Licensor by or on behalf of User through the Lookware SaaS (“',
                            style: TextStyle(),
                          ),
                          const TextSpan(
                            text: 'User Data',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '”). Notwithstanding anything in this Agreement to the contrary, User hereby grants to Licensor a non-exclusive, irrevocable, perpetual, royalty-free, assignable, transferrable, sublicensable license to reproduce, distribute, display, create derivative works from and otherwise exploit the User Data solely for the purposes of providing, improving, and developing the Lookware SaaS and related products and services. User has sole responsibility for obtaining all consents and permissions (including providing notices to users or third parties) necessary to permit Licensor’s use of User Data.  In the event User provides Licensor with suggestions or ideas for changes, improvements, innovations, feedback, information, and know-how in connection with your use of the Lookware SaaS (“Feedback”), or you conceive or first reduce to practice an invention in connection with the Lookware SaaS (“Inventions”), you hereby assign, transfer and convey to Licensor, or its designee, all worldwide right, title and interest in and to any and all Feedback and Inventions, including but not limited to any ideas, inventions, discoveries, original works of authorship (including derivative works there from), findings, conclusions, concepts and improvements in the Feedback (and all other intellectual property rights). The Feedback and Inventions shall be the exclusive property of Licensor, and the Feedback and Inventions may be used by Licensor for all purposes, without any accounting or any payment to you. You agree to promptly disclose in writing to Licensor any Feedback and Inventions, and you will cooperate with us to sign other documents as may be reasonably required to secure Licensor’s rights in the Feedback and Inventions. This paragraph shall survive termination of this Agreement.  User acknowledges and agrees that it is solely responsible for ensuring the confidentiality, integrity and availability of its User Data and conducting appropriate data backups.  Licensor is not an insurer and is in no way responsible for any damages resulting from the loss, in whole or in part, of any data or other items making up User Data, regardless of the reason for such loss.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.7     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Disclaimer of Warranties',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '. THE LOOKWARE SAAS IS PROVIDED “AS IS” WITH NO REPRESENTATIONS OR WARRANTIES OF ANY KIND (EXPRESS OR IMPLIED, BY OPERATION OF LAW OR OTHERWISE) REGARDING THE SAAS, INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. ALL SUCH WARRANTIES, TO THE EXTENT PERMISSIBLE UNDER APPLICABLE LAW, ARE EXPRESSLY DISCLAIMED AND EXCLUDED.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.8     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Limitation of Liability',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '. NEITHER LICENSOR NOR ITS AFFILIATES WILL BE LIABLE TO USER OR TO ANY THIRD PARTY FOR ANY DAMAGES ARISING UNDER THIS AGREEMENT, INCLUDING, WITHOUT LIMITATION, ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, OR CONSEQUENTIAL DAMAGES.  IN NO EVENT SHALL LICENSOR’S LIABILITY TO USER UNDER THIS AGREEMENT EXCEED \$1,000.00.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.9     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Responsibility for Use of Lookware',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '. User understands and agrees that User is solely responsible for User’s actions and decisions by virtue of the services provided on Lookware. User understands and agrees that Licensor is in no position to be responsible for Applied Behavior Analysis as provided by User, User’s school, User’s therapy center, any Board Certified Behavioral Analyst, any Registered Behavior Technician or any Special Education Teacher. This application is intended for use only by trained and licensed therapists or special education teachers in accordance with applicable professional standards and practices and other professionals in support of such therapists or special education teachers and ancillary support providers there for. This application is not intended for any children under the age of 18 except under the supervision and oversight of trained and licensed therapists or special education teachers.  LOOKWARE SAAS IS INVESTIGATIONAL AND FOR INVESTIGATIONAL USE ONLY. IT IS NOT FDA APPROVED OR CLEARED NOR HAS IT BEEN DETERMINED TO BE SAFE AND EFFECTIVE BY FDA. ALTHOUGH LOOKWARE IS A DIGITAL ADJUNCTIVE THERAPY FOR USE BY TRAINED AND LICENSED THERAPISTS AND SPECIAL EDUCATION TEACHERS, LOOKWARE IS NOT INTENDED TO DIAGNOSE DISEASE, PRESCRIBE TREATMENT, OR PERFORM ANY OTHER TASKS THAT CONSTITUTE OR MAY CONSTITUTE THE PRACTICE OF MEDICINE OR OF OTHER PROFESSIONAL OR ACADEMIC DISCIPLINES.  THE SOFTWARE IS FOR INVESTIGATIONAL PURPOSES ONLY AND REQUIRES THE INVOLVEMENT OF PROFESSIONAL PERSONNEL.  INFORMATION PROVIDED IS NOT INTENDED TO BE A SUBSTITUTE FOR USER’S COMPETENT PROFESSIONAL ADVICE AND PROFESSIONAL JUDGMENT AND UNDERTAKING WHATEVER ACTIVITIES YOU DEEM NECESSARY, IN YOUR PROFESSIONAL JUDGMENT, FOR THE PROPER CARE AND THERAPY OR TRAINING OF AN INDIVIDUAL. THE INFORMATION PROVIDED BY LOOKWARE DOES NOT CREATE A THERAPIST-CLIENT OR TEACHER-STUDENT RELATIONSHIP BETWEEN LICENSOR AND ANY INDIVIDUAL.  LICENSOR SHALL HAVE NO RESPONSIBILITY AS A RESULT OF THIS AGREEMENT OR USER’S USE OF LOOKWARE FOR ANY DECISIONS MADE OR ACTIONS TAKEN OR NOT TAKEN BY USER INVOLVING CLIENT OR STUDENT CARE.  USER UNDERSTANDS AND AGREES THAT USER IS SOLELY RESPONSIBLE FOR (I) ALL CLIENT THERAPY OR TRAINING DECISIONS AND SERVICES PROVIDED BY USER TO USER’S CLIENTS OR STUDENTS; (II) ANY DECISIONS REGARDING INCORPORATING OR NOT INCORPORATING THE SOFTWARE OR INFORMATION PROVIDED BY THE SOFTWARE IN USER’S THERAPY OR TRAINING PROCESSES; (III) FOLLOWING APPLICABLE THERAPEUTIC OR EDUCATIONAL PROFESSIONAL STANDARDS; AND (IV) COMPLIANCE WITH APPLICABLE FEDERAL, STATE AND LOCAL LAWS, RULES AND REGULATIONS INCLUDING BUT NOT LIMITED TO, THOSE LAWS AND REGULATIONS APPLICABLE TO HUMAN SUBJECTS RESEARCH INVOLVING CHILDREN, DATA PRIVACY, AND THE OBTAINING OF REQUIRED INFORMED CONSENT.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '1.10     ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            const TextSpan(
                              text: 'Security',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const TextSpan(
                              text:
                                  '. Licensor will follow reasonable security practices in connection with providing the Lookware SaaS, including implementing reasonable physical and technical safeguards to protect User Data.\n',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.11     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Entire Agreement; Governing Law; Survival',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '.  This Agreement, the Lookware Instructions for Use, and the Lookware Application Terms and Conditions of Use constitute the entire agreement and understanding between the parties relating to User’s use of the Lookware SaaS.  This Agreement will be governed and construed in accordance with the laws of the Commonwealth of Pennsylvania without regard to its choice of law provisions.  Sections 1.4, 1.5, 1.6, 1.7, 1.8, 1.9 and this 1.10 will survive expiration or termination of this Agreement for any reason.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1.12     ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Miscellaneous',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '. This Agreement and all questions relating to its validity, interpretation, performance and enforcement (including, without limitation, provisions concerning limitations of actions), shall be governed by and construed in accordance with the laws of the Commonwealth of Pennsylvania, without the aid of any canon, custom, or rule of law including conflicts of law principles of any jurisdiction. This Agreement may be terminated by Licensor or you at any time for any reason or no reason, with or without prior notice, by providing a written notice of termination. This paragraph shall survive termination of this Agreement.  User and Licensor agree to submit to mandatory binding arbitration any and all claims arising out of or related to User’s use of Lookware SaaS.  Further, to the fullest extent permitted by law, User and Licensor agree that no class or collective actions can be asserted in arbitration or otherwise. All claims, whether in arbitration or otherwise, must be brought solely in User’s or Licensor’s individual capacity, and not as a plaintiff or class member in any purported class or collective proceeding.\n',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Text(
                        'EXHIBIT A\nLOOKWARE SAAS COMPONENTS SCHEDULE\n',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '1. ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          const TextSpan(
                            text: 'Lookware SaaS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const TextSpan(
                            text:
                                '.   Lookware Workstation comprised of a laptop computer, videogame controller, and eye tracking device. The workstation is configured to run the Lookware Digital Adjunctive Therapeutic Platform which provides computer-based social skills training embedded in engaging videogames that incorporate use of the eye tracking device. ',
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
