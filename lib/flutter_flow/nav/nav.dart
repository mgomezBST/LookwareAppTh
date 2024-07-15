import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const DashboardWidget() : const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const DashboardWidget() : const LoginWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => const ProfileWidget(),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => const EditProfileWidget(),
        ),
        FFRoute(
          name: 'clientList',
          path: '/clientList',
          asyncParams: {
            'clientDetails': getDoc(['clients'], ClientsRecord.fromSnapshot),
            'intakeAssessment': getDoc(
                ['intake_assessment'], IntakeAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => ClientListWidget(
            clientDetails: params.getParam(
              'clientDetails',
              ParamType.Document,
            ),
            intakeAssessment: params.getParam(
              'intakeAssessment',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Success',
          path: '/success',
          builder: (context, params) => const SuccessWidget(),
        ),
        FFRoute(
          name: 'addClient',
          path: '/addClient',
          builder: (context, params) => const AddClientWidget(),
        ),
        FFRoute(
          name: 'machineList',
          path: '/machineList',
          builder: (context, params) => const MachineListWidget(),
        ),
        FFRoute(
          name: 'requestMachine',
          path: '/requestMachine',
          builder: (context, params) => const RequestMachineWidget(),
        ),
        FFRoute(
          name: 'SM-surveyList',
          path: '/sMSurveyList',
          builder: (context, params) => const SMSurveyListWidget(),
        ),
        FFRoute(
          name: 'notifications',
          path: '/notifications',
          builder: (context, params) => const NotificationsWidget(),
        ),
        FFRoute(
          name: 'support',
          path: '/support',
          builder: (context, params) => SupportWidget(
            image: params.getParam(
              'image',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: 'Status',
          path: '/status',
          builder: (context, params) => const StatusWidget(),
        ),
        FFRoute(
          name: 'viewEmail',
          path: '/viewEmail',
          builder: (context, params) => const ViewEmailWidget(),
        ),
        FFRoute(
          name: 'clientDetails',
          path: '/clientDetails',
          asyncParams: {
            'clientDetails': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => ClientDetailsWidget(
            clientDetails: params.getParam(
              'clientDetails',
              ParamType.Document,
            ),
            intakeAssessment: params.getParam(
              'intakeAssessment',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['intake_assessment'],
            ),
          ),
        ),
        FFRoute(
          name: 'SM-Login',
          path: '/sMLogin',
          builder: (context, params) => const SMLoginWidget(),
        ),
        FFRoute(
          name: 'SM-Profile',
          path: '/sMProfile',
          builder: (context, params) => const SMProfileWidget(),
        ),
        FFRoute(
          name: 'SM-createProfile',
          path: '/sMCreateProfile',
          builder: (context, params) => const SMCreateProfileWidget(),
        ),
        FFRoute(
          name: 'SM-editProfile',
          path: '/sMEditProfile',
          builder: (context, params) => const SMEditProfileWidget(),
        ),
        FFRoute(
          name: 'SM-forgotPassword',
          path: '/sMForgotPassword',
          builder: (context, params) => const SMForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'SM-notifications',
          path: '/sMNotifications',
          builder: (context, params) => const SMNotificationsWidget(),
        ),
        FFRoute(
          name: 'SM-support',
          path: '/sMSupport',
          builder: (context, params) => SMSupportWidget(
            image: params.getParam(
              'image',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: 'SM-Dashboard',
          path: '/sMDashboard',
          builder: (context, params) => const SMDashboardWidget(),
        ),
        FFRoute(
          name: 'SM-viewEmail',
          path: '/sMViewEmail',
          builder: (context, params) => const SMViewEmailWidget(),
        ),
        FFRoute(
          name: 'SM-clientList',
          path: '/sMClientList',
          builder: (context, params) => const SMClientListWidget(),
        ),
        FFRoute(
          name: 'SM-surveyDetails-Edit',
          path: '/sMSurveyDetailsEdit',
          builder: (context, params) => const SMSurveyDetailsEditWidget(),
        ),
        FFRoute(
          name: 'SM-addSurvey',
          path: '/sMAddSurvey',
          builder: (context, params) => const SMAddSurveyWidget(),
        ),
        FFRoute(
          name: 'CGDashboard',
          path: '/DashboardCopy',
          asyncParams: {
            'childReports': getDoc(['therapist_assessment'],
                TherapistAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => CGDashboardWidget(
            childReports: params.getParam(
              'childReports',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'psd_list',
          path: '/psdList',
          builder: (context, params) => const PsdListWidget(),
        ),
        FFRoute(
          name: 'psd_details',
          path: '/psdDetails',
          asyncParams: {
            'psdDetails': getDoc(['psd'], PsdRecord.fromSnapshot),
          },
          builder: (context, params) => PsdDetailsWidget(
            psdDetails: params.getParam(
              'psdDetails',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'addPSD',
          path: '/addPSD',
          builder: (context, params) => const AddPSDWidget(),
        ),
        FFRoute(
          name: 'intake_assessment',
          path: '/intakeAssessment',
          builder: (context, params) => const IntakeAssessmentWidget(),
        ),
        FFRoute(
          name: 'therapist_assessment',
          path: '/therapistAssessment',
          builder: (context, params) => const TherapistAssessmentWidget(),
        ),
        FFRoute(
          name: 'policy_termsandconditions',
          path: '/policyTermsandconditions',
          builder: (context, params) => const PolicyTermsandconditionsWidget(),
        ),
        FFRoute(
          name: 'policy_hipaa',
          path: '/policyHipaa',
          builder: (context, params) => const PolicyHipaaWidget(),
        ),
        FFRoute(
          name: 'policy_OnlinePrivacyNotice',
          path: '/policyOnlinePrivacyNotice',
          builder: (context, params) => const PolicyOnlinePrivacyNoticeWidget(),
        ),
        FFRoute(
          name: 'Childdetails',
          path: '/childdetails',
          asyncParams: {
            'clientDetails': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => ChilddetailsWidget(
            clientDetails: params.getParam(
              'clientDetails',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'childList',
          path: '/childList',
          builder: (context, params) => const ChildListWidget(),
        ),
        FFRoute(
          name: 'CGdataReports',
          path: '/CGdataReports',
          asyncParams: {
            'reports': getDoc(['therapist_assessment'],
                TherapistAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => CGdataReportsWidget(
            reports: params.getParam(
              'reports',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Providefeedback',
          path: '/Providefeedback',
          builder: (context, params) => ProvidefeedbackWidget(
            image: params.getParam(
              'image',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: 'startSessionCLIENT',
          path: '/startSessionCLIENT',
          builder: (context, params) => const StartSessionCLIENTWidget(),
        ),
        FFRoute(
          name: 'sessionProgress',
          path: '/sessionProgress',
          builder: (context, params) => const SessionProgressWidget(),
        ),
        FFRoute(
          name: 'sessionEnd',
          path: '/sessionEnd',
          builder: (context, params) => const SessionEndWidget(),
        ),
        FFRoute(
          name: 'Schedule',
          path: '/schedule',
          builder: (context, params) => const ScheduleWidget(),
        ),
        FFRoute(
          name: 'THERAPISTcreateProfile',
          path: '/tHERAPISTcreateProfile',
          builder: (context, params) => const THERAPISTcreateProfileWidget(),
        ),
        FFRoute(
          name: 'IndividualChildProgress',
          path: '/individualChildProgres',
          builder: (context, params) => const IndividualChildProgressWidget(),
        ),
        FFRoute(
          name: 'therapist_assessment_results',
          path: '/therapistAssessmentResults',
          asyncParams: {
            'results': getDoc(['therapist_assessment'],
                TherapistAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => TherapistAssessmentResultsWidget(
            results: params.getParam(
              'results',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'datainsights',
          path: '/datainsights',
          builder: (context, params) => const DatainsightsWidget(),
        ),
        FFRoute(
          name: 'therapistoverview',
          path: '/therapistoverview',
          builder: (context, params) => const TherapistoverviewWidget(),
        ),
        FFRoute(
          name: 'newdashboardtest',
          path: '/newdashboardtest',
          asyncParams: {
            'clients': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => NewdashboardtestWidget(
            clients: params.getParam(
              'clients',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'shareclient',
          path: '/shareclient',
          builder: (context, params) => const ShareclientWidget(),
        ),
        FFRoute(
          name: 'intake_assessment_results',
          path: '/intakeAssessmentResults',
          asyncParams: {
            'intakeResults': getDoc(
                ['intake_assessment'], IntakeAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => IntakeAssessmentResultsWidget(
            intakeResults: params.getParam(
              'intakeResults',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'policy_saas',
          path: '/policySaas',
          builder: (context, params) => const PolicySaasWidget(),
        ),
        FFRoute(
          name: 'TESTChilddetails',
          path: '/TESTChilddetails',
          asyncParams: {
            'clientDetails': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => TESTChilddetailsWidget(
            clientDetails: params.getParam(
              'clientDetails',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'TESTCaregiverfeedback',
          path: '/TESTCaregiverfeedback',
          asyncParams: {
            'clientDetails': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => TESTCaregiverfeedbackWidget(
            clientDetails: params.getParam(
              'clientDetails',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'TESTReportsCaregiver',
          path: '/TESTReportsCaregiver',
          builder: (context, params) => const TESTReportsCaregiverWidget(),
        ),
        FFRoute(
          name: 'TESTCaregiverDashboard',
          path: '/CaregiverTESTdashboard',
          asyncParams: {
            'childReports': getDoc(['therapist_assessment'],
                TherapistAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => TESTCaregiverDashboardWidget(
            childReports: params.getParam(
              'childReports',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'clientListCopy',
          path: '/clientListCopy',
          builder: (context, params) => const ClientListCopyWidget(),
        ),
        FFRoute(
          name: 'TESTchildList',
          path: '/TESTchildList',
          builder: (context, params) => const TESTchildListWidget(),
        ),
        FFRoute(
          name: 'TESTschedule',
          path: '/TESTschedule',
          builder: (context, params) => const TESTscheduleWidget(),
        ),
        FFRoute(
          name: 'TESTprofile',
          path: '/TESTprofile',
          builder: (context, params) => const TESTprofileWidget(),
        ),
        FFRoute(
          name: 'TESTsubscriptions',
          path: '/TESTsubscriptions',
          builder: (context, params) => const TESTsubscriptionsWidget(),
        ),
        FFRoute(
          name: 'TESTCaregiverDashboardCopy',
          path: '/CaregiverTESTdashboardcopy',
          asyncParams: {
            'childReports': getDoc(['therapist_assessment'],
                TherapistAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => TESTCaregiverDashboardCopyWidget(
            childReports: params.getParam(
              'childReports',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'OldDashboard',
          path: '/Olddashboard',
          asyncParams: {
            'clients': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => OldDashboardWidget(
            clients: params.getParam(
              'clients',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'sessionDetails',
          path: '/sessionDetails',
          asyncParams: {
            'sessionsDetails':
                getDoc(['sessions'], SessionsRecord.fromSnapshot),
          },
          builder: (context, params) => SessionDetailsWidget(
            sessionsDetails: params.getParam(
              'sessionsDetails',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Academymenu',
          path: '/Academymenu',
          asyncParams: {
            'clients': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => AcademymenuWidget(
            clients: params.getParam(
              'clients',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'howtoaddclient',
          path: '/howtoaddclient',
          asyncParams: {
            'clients': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => HowtoaddclientWidget(
            clients: params.getParam(
              'clients',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'howtocreateapsd',
          path: '/howtocreateapsd',
          asyncParams: {
            'clients': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => HowtocreateapsdWidget(
            clients: params.getParam(
              'clients',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Howtoscheduleagamesession',
          path: '/Howtoscheduleagamesession',
          asyncParams: {
            'clients': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => HowtoscheduleagamesessionWidget(
            clients: params.getParam(
              'clients',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'generalization_assessment',
          path: '/Generalization_assessmeng',
          builder: (context, params) => const GeneralizationAssessmentWidget(),
        ),
        FFRoute(
          name: 'Dashboard',
          path: '/dashboard',
          asyncParams: {
            'clients': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => DashboardWidget(
            clients: params.getParam(
              'clients',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'requestreport',
          path: '/requestreport',
          builder: (context, params) => const RequestreportWidget(),
        ),
        FFRoute(
          name: 'caregiverRegister',
          path: '/caregiverRegister',
          builder: (context, params) => const CaregiverRegisterWidget(),
        ),
        FFRoute(
          name: 'intakeList',
          path: '/intakeList',
          asyncParams: {
            'intakeAssessment': getDoc(
                ['intake_assessment'], IntakeAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => IntakeListWidget(
            intakeAssessment: params.getParam(
              'intakeAssessment',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'intake_results',
          path: '/intakeResults',
          asyncParams: {
            'results': getDoc(
                ['intake_assessment'], IntakeAssessmentRecord.fromSnapshot),
          },
          builder: (context, params) => IntakeResultsWidget(
            results: params.getParam(
              'results',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'howtolaunchgamefromdesktop',
          path: '/howtolaunchgamefromdesktop',
          asyncParams: {
            'clients': getDoc(['clients'], ClientsRecord.fromSnapshot),
          },
          builder: (context, params) => HowtolaunchgamefromdesktopWidget(
            clients: params.getParam(
              'clients',
              ParamType.Document,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
