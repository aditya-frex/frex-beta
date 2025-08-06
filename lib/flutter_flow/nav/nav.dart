import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  FrexFinalAuthUser? initialUser;
  FrexFinalAuthUser? user;
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

  void update(FrexFinalAuthUser newUser) {
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
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? AHomeWidget() : AWalkthroughWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? AHomeWidget() : AWalkthroughWidget(),
        ),
        FFRoute(
          name: AWalkthroughWidget.routeName,
          path: AWalkthroughWidget.routePath,
          builder: (context, params) => AWalkthroughWidget(),
        ),
        FFRoute(
          name: CLoginWidget.routeName,
          path: CLoginWidget.routePath,
          builder: (context, params) => CLoginWidget(),
        ),
        FFRoute(
          name: DRegisterWidget.routeName,
          path: DRegisterWidget.routePath,
          builder: (context, params) => DRegisterWidget(),
        ),
        FFRoute(
          name: AHomeWidget.routeName,
          path: AHomeWidget.routePath,
          builder: (context, params) => AHomeWidget(
            fromLogin: params.getParam(
              'fromLogin',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: EVerifiedAccountWidget.routeName,
          path: EVerifiedAccountWidget.routePath,
          builder: (context, params) => EVerifiedAccountWidget(),
        ),
        FFRoute(
          name: CreateAccountWidget.routeName,
          path: CreateAccountWidget.routePath,
          builder: (context, params) => CreateAccountWidget(),
        ),
        FFRoute(
          name: AContactsWidget.routeName,
          path: AContactsWidget.routePath,
          builder: (context, params) => AContactsWidget(),
        ),
        FFRoute(
          name: InsightsWidget.routeName,
          path: InsightsWidget.routePath,
          builder: (context, params) => InsightsWidget(),
        ),
        FFRoute(
          name: NotificationWidget.routeName,
          path: NotificationWidget.routePath,
          builder: (context, params) => NotificationWidget(),
        ),
        FFRoute(
          name: ASettingsWidget.routeName,
          path: ASettingsWidget.routePath,
          builder: (context, params) => ASettingsWidget(),
        ),
        FFRoute(
          name: CNotificationsWidget.routeName,
          path: CNotificationsWidget.routePath,
          builder: (context, params) => CNotificationsWidget(),
        ),
        FFRoute(
          name: DAccountSecurityWidget.routeName,
          path: DAccountSecurityWidget.routePath,
          builder: (context, params) => DAccountSecurityWidget(),
        ),
        FFRoute(
          name: FDataAnalyticsWidget.routeName,
          path: FDataAnalyticsWidget.routePath,
          builder: (context, params) => FDataAnalyticsWidget(),
        ),
        FFRoute(
          name: GHelpSupportWidget.routeName,
          path: GHelpSupportWidget.routePath,
          builder: (context, params) => GHelpSupportWidget(),
        ),
        FFRoute(
          name: CaProfilePrivacyWidget.routeName,
          path: CaProfilePrivacyWidget.routePath,
          builder: (context, params) => CaProfilePrivacyWidget(),
        ),
        FFRoute(
          name: CaProfileUsernameWidget.routeName,
          path: CaProfileUsernameWidget.routePath,
          builder: (context, params) => CaProfileUsernameWidget(),
        ),
        FFRoute(
          name: CaProfileVisibilityWidget.routeName,
          path: CaProfileVisibilityWidget.routePath,
          builder: (context, params) => CaProfileVisibilityWidget(),
        ),
        FFRoute(
          name: CaProfileManageActiveWidget.routeName,
          path: CaProfileManageActiveWidget.routePath,
          builder: (context, params) => CaProfileManageActiveWidget(),
        ),
        FFRoute(
          name: CaProfileManageMessagesWidget.routeName,
          path: CaProfileManageMessagesWidget.routePath,
          builder: (context, params) => CaProfileManageMessagesWidget(),
        ),
        FFRoute(
          name: EAppAppearanceLanguageWidget.routeName,
          path: EAppAppearanceLanguageWidget.routePath,
          builder: (context, params) => EAppAppearanceLanguageWidget(),
        ),
        FFRoute(
          name: PaymentMethod2Widget.routeName,
          path: PaymentMethod2Widget.routePath,
          builder: (context, params) => PaymentMethod2Widget(
            fromWithdraw: params.getParam(
              'fromWithdraw',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: GHelpSupportFaqWidget.routeName,
          path: GHelpSupportFaqWidget.routePath,
          builder: (context, params) => GHelpSupportFaqWidget(),
        ),
        FFRoute(
          name: GHelpSupportSupportWidget.routeName,
          path: GHelpSupportSupportWidget.routePath,
          builder: (context, params) => GHelpSupportSupportWidget(),
        ),
        FFRoute(
          name: GHelpSupportTermsWidget.routeName,
          path: GHelpSupportTermsWidget.routePath,
          builder: (context, params) => GHelpSupportTermsWidget(),
        ),
        FFRoute(
          name: GHelpSupportPrivacyWidget.routeName,
          path: GHelpSupportPrivacyWidget.routePath,
          builder: (context, params) => GHelpSupportPrivacyWidget(),
        ),
        FFRoute(
          name: SingleChatWidget.routeName,
          path: SingleChatWidget.routePath,
          builder: (context, params) => SingleChatWidget(),
        ),
        FFRoute(
          name: ReadyAccountWidget.routeName,
          path: ReadyAccountWidget.routePath,
          builder: (context, params) => ReadyAccountWidget(),
        ),
        FFRoute(
          name: SearchWidget.routeName,
          path: SearchWidget.routePath,
          builder: (context, params) => SearchWidget(),
        ),
        FFRoute(
          name: HistoryWidget.routeName,
          path: HistoryWidget.routePath,
          builder: (context, params) => HistoryWidget(),
        ),
        FFRoute(
          name: EPaymentMethod1Widget.routeName,
          path: EPaymentMethod1Widget.routePath,
          builder: (context, params) => EPaymentMethod1Widget(),
        ),
        FFRoute(
          name: ELinkedAccountsWidget.routeName,
          path: ELinkedAccountsWidget.routePath,
          builder: (context, params) => ELinkedAccountsWidget(),
        ),
        FFRoute(
          name: PersonalinformationWidget.routeName,
          path: PersonalinformationWidget.routePath,
          builder: (context, params) => PersonalinformationWidget(),
        ),
        FFRoute(
          name: AWalkthroughStartWidget.routeName,
          path: AWalkthroughStartWidget.routePath,
          builder: (context, params) => AWalkthroughStartWidget(),
        ),
        FFRoute(
          name: HistorySingleWidget.routeName,
          path: HistorySingleWidget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => HistorySingleWidget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: ViewReceiptWidget.routeName,
          path: ViewReceiptWidget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => ViewReceiptWidget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: HistorySingleRequestWidget.routeName,
          path: HistorySingleRequestWidget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => HistorySingleRequestWidget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: SendMoneyWidget.routeName,
          path: SendMoneyWidget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => SendMoneyWidget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: HistorySingleDeclinedWidget.routeName,
          path: HistorySingleDeclinedWidget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => HistorySingleDeclinedWidget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: MenuSendWidget.routeName,
          path: MenuSendWidget.routePath,
          builder: (context, params) => MenuSendWidget(),
        ),
        FFRoute(
          name: NewContactAddWidget.routeName,
          path: NewContactAddWidget.routePath,
          builder: (context, params) => NewContactAddWidget(),
        ),
        FFRoute(
          name: NewContactAdd2Widget.routeName,
          path: NewContactAdd2Widget.routePath,
          builder: (context, params) => NewContactAdd2Widget(),
        ),
        FFRoute(
          name: MenuSendSearchWidget.routeName,
          path: MenuSendSearchWidget.routePath,
          builder: (context, params) => MenuSendSearchWidget(),
        ),
        FFRoute(
          name: MenuContactSingleWidget.routeName,
          path: MenuContactSingleWidget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => MenuContactSingleWidget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
            fromQr: params.getParam(
              'fromQr',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: MenuSend2Widget.routeName,
          path: MenuSend2Widget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => MenuSend2Widget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
            fromQR: params.getParam(
              'fromQR',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: MenuRequestWidget.routeName,
          path: MenuRequestWidget.routePath,
          builder: (context, params) => MenuRequestWidget(),
        ),
        FFRoute(
          name: MenuRequestMoneyWidget.routeName,
          path: MenuRequestMoneyWidget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => MenuRequestMoneyWidget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: RequestMoneyDoneWidget.routeName,
          path: RequestMoneyDoneWidget.routePath,
          asyncParams: {
            'data': getDoc(['transactions'], TransactionsRecord.fromSnapshot),
          },
          builder: (context, params) => RequestMoneyDoneWidget(
            data: params.getParam(
              'data',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: TopUpMethodWidget.routeName,
          path: TopUpMethodWidget.routePath,
          builder: (context, params) => TopUpMethodWidget(),
        ),
        FFRoute(
          name: TopUpNowWidget.routeName,
          path: TopUpNowWidget.routePath,
          builder: (context, params) => TopUpNowWidget(),
        ),
        FFRoute(
          name: TopUppDoneWidget.routeName,
          path: TopUppDoneWidget.routePath,
          builder: (context, params) => TopUppDoneWidget(
            price: params.getParam(
              'price',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: WithdrawMethodWidget.routeName,
          path: WithdrawMethodWidget.routePath,
          builder: (context, params) => WithdrawMethodWidget(),
        ),
        FFRoute(
          name: WithdrawNowWidget.routeName,
          path: WithdrawNowWidget.routePath,
          builder: (context, params) => WithdrawNowWidget(),
        ),
        FFRoute(
          name: WithdrawDoneWidget.routeName,
          path: WithdrawDoneWidget.routePath,
          builder: (context, params) => WithdrawDoneWidget(
            price: params.getParam(
              'price',
              ParamType.double,
            ),
          ),
        ),
        FFRoute(
          name: EPaymentMethod3Widget.routeName,
          path: EPaymentMethod3Widget.routePath,
          builder: (context, params) => EPaymentMethod3Widget(
            fromWithdraw: params.getParam(
              'fromWithdraw',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: ScanWidget.routeName,
          path: ScanWidget.routePath,
          builder: (context, params) => ScanWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
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
    StructBuilder<T>? structBuilder,
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
      structBuilder: structBuilder,
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
            return '/aWalkthrough';
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
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/gifLoading.gif',
                    fit: BoxFit.cover,
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
