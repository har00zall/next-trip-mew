import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
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
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
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
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? A4MainPageWidget() : A3LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? A4MainPageWidget()
              : A3LoginPageWidget(),
          routes: [
            FFRoute(
              name: 'A1Page',
              path: 'a1Page',
              builder: (context, params) => A1PageWidget(),
            ),
            FFRoute(
              name: 'A5CitiesHotels',
              path: 'a5CitiesHotels',
              builder: (context, params) => A5CitiesHotelsWidget(),
            ),
            FFRoute(
              name: 'B5HotelReviewBooking',
              path: 'b5HotelReviewBooking',
              builder: (context, params) => B5HotelReviewBookingWidget(),
            ),
            FFRoute(
              name: 'B1Hotel',
              path: 'b1Hotel',
              builder: (context, params) => B1HotelWidget(),
            ),
            FFRoute(
              name: 'B4SelectingHotelRoom',
              path: 'b4SelectingHotelRoom',
              builder: (context, params) => B4SelectingHotelRoomWidget(),
            ),
            FFRoute(
              name: 'B3HotelBooking',
              path: 'b3HotelBooking',
              builder: (context, params) => B3HotelBookingWidget(
                hotelName: params.getParam('hotelName', ParamType.String),
                noAdults: params.getParam('noAdults', ParamType.String),
                bDate: params.getParam('bDate', ParamType.String),
                noRooms: params.getParam('noRooms', ParamType.String),
                rate: params.getParam('rate', ParamType.double),
                star: params.getParam('star', ParamType.String),
                hotelAddress: params.getParam('hotelAddress', ParamType.String),
                facility: params.getParam('facility', ParamType.String),
                facility1: params.getParam('facility1', ParamType.String),
                facility2: params.getParam('facility2', ParamType.String),
                image: params.getParam('image', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'I1Resturants',
              path: 'i1Resturants',
              builder: (context, params) => I1ResturantsWidget(),
            ),
            FFRoute(
              name: 'A2SignUpPage',
              path: 'a2SignUpPage',
              builder: (context, params) => A2SignUpPageWidget(),
            ),
            FFRoute(
              name: 'C5FlightSort',
              path: 'c5FlightSort',
              builder: (context, params) => C5FlightSortWidget(),
            ),
            FFRoute(
              name: 'A4MainPage',
              path: 'a4MainPage',
              builder: (context, params) => A4MainPageWidget(),
            ),
            FFRoute(
              name: 'B2HotelMain',
              path: 'b2HotelMain',
              builder: (context, params) => B2HotelMainWidget(
                cityName: params.getParam('cityName', ParamType.String),
                noAdults: params.getParam('noAdults', ParamType.String),
                noRooms: params.getParam('noRooms', ParamType.String),
                bDate: params.getParam('bDate', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'C2FlightsMain',
              path: 'c2FlightsMain',
              builder: (context, params) => C2FlightsMainWidget(),
            ),
            FFRoute(
              name: 'C4FlightFilter',
              path: 'c4FlightFilter',
              builder: (context, params) => C4FlightFilterWidget(),
            ),
            FFRoute(
              name: 'B6SelectHotelPayment',
              path: 'b6SelectHotelPayment',
              builder: (context, params) => B6SelectHotelPaymentWidget(),
            ),
            FFRoute(
              name: 'C3FlightReview',
              path: 'c3FlightReview',
              builder: (context, params) => C3FlightReviewWidget(),
            ),
            FFRoute(
              name: 'C1Flights',
              path: 'c1Flights',
              builder: (context, params) => C1FlightsWidget(),
            ),
            FFRoute(
              name: 'C6FlightPayment',
              path: 'c6FlightPayment',
              builder: (context, params) => C6FlightPaymentWidget(),
            ),
            FFRoute(
              name: 'D1Train',
              path: 'd1Train',
              builder: (context, params) => D1TrainWidget(),
            ),
            FFRoute(
              name: 'D2Train1',
              path: 'd2Train1',
              builder: (context, params) => D2Train1Widget(),
            ),
            FFRoute(
              name: 'D4TrainFilter',
              path: 'd4TrainFilter',
              builder: (context, params) => D4TrainFilterWidget(),
            ),
            FFRoute(
              name: 'D5Trainsort',
              path: 'd5Trainsort',
              builder: (context, params) => D5TrainsortWidget(),
            ),
            FFRoute(
              name: 'D3TrainReview',
              path: 'd3TrainReview',
              builder: (context, params) => D3TrainReviewWidget(),
            ),
            FFRoute(
              name: 'D6TrainPayment',
              path: 'd6TrainPayment',
              builder: (context, params) => D6TrainPaymentWidget(),
            ),
            FFRoute(
              name: 'E2BusBooking1',
              path: 'e2BusBooking1',
              builder: (context, params) => E2BusBooking1Widget(),
            ),
            FFRoute(
              name: 'E7BusSORT',
              path: 'e7BusSORT',
              builder: (context, params) => E7BusSORTWidget(),
            ),
            FFRoute(
              name: 'E1BusBooking',
              path: 'e1BusBooking',
              builder: (context, params) => E1BusBookingWidget(),
            ),
            FFRoute(
              name: 'E6BusFILTER',
              path: 'e6BusFILTER',
              builder: (context, params) => E6BusFILTERWidget(),
            ),
            FFRoute(
              name: 'E3BusSelectSet',
              path: 'e3BusSelectSet',
              builder: (context, params) => E3BusSelectSetWidget(),
            ),
            FFRoute(
              name: 'E4BusPickupandDrop',
              path: 'e4BusPickupandDrop',
              builder: (context, params) => E4BusPickupandDropWidget(),
            ),
            FFRoute(
              name: 'E5BusReview',
              path: 'e5BusReview',
              builder: (context, params) => E5BusReviewWidget(),
            ),
            FFRoute(
              name: 'E8BusPayment',
              path: 'e8BusPayment',
              builder: (context, params) => E8BusPaymentWidget(),
            ),
            FFRoute(
              name: 'F1Holidays',
              path: 'f1Holidays',
              builder: (context, params) => F1HolidaysWidget(),
            ),
            FFRoute(
              name: 'F3Honeymoon',
              path: 'f3Honeymoon',
              builder: (context, params) => F3HoneymoonWidget(),
            ),
            FFRoute(
              name: 'F2Historical',
              path: 'f2Historical',
              builder: (context, params) => F2HistoricalWidget(),
            ),
            FFRoute(
              name: 'F4CarRent',
              path: 'f4CarRent',
              builder: (context, params) => F4CarRentWidget(),
            ),
            FFRoute(
              name: 'G2ClaimRefund',
              path: 'g2ClaimRefund',
              builder: (context, params) => G2ClaimRefundWidget(),
            ),
            FFRoute(
              name: 'G1EventFestival',
              path: 'g1EventFestival',
              builder: (context, params) => G1EventFestivalWidget(),
            ),
            FFRoute(
              name: 'G3OfferDiscount',
              path: 'g3OfferDiscount',
              builder: (context, params) => G3OfferDiscountWidget(),
            ),
            FFRoute(
              name: 'H1MyAccount',
              path: 'h1MyAccount',
              builder: (context, params) => H1MyAccountWidget(),
            ),
            FFRoute(
              name: 'H1EditProfileMyAccount',
              path: 'h1EditProfileMyAccount',
              builder: (context, params) => H1EditProfileMyAccountWidget(),
            ),
            FFRoute(
              name: 'H2WishList',
              path: 'h2WishList',
              builder: (context, params) => H2WishListWidget(),
            ),
            FFRoute(
              name: 'H2ViewManageTrip',
              path: 'h2ViewManageTrip',
              builder: (context, params) => H2ViewManageTripWidget(),
            ),
            FFRoute(
              name: 'H4Refer3Earns',
              path: 'h4Refer3Earns',
              builder: (context, params) => H4Refer3EarnsWidget(),
            ),
            FFRoute(
              name: 'H6MyReward',
              path: 'h6MyReward',
              builder: (context, params) => H6MyRewardWidget(),
            ),
            FFRoute(
              name: 'H5GiftCard',
              path: 'h5GiftCard',
              builder: (context, params) => H5GiftCardWidget(),
            ),
            FFRoute(
              name: 'H7Setting',
              path: 'h7Setting',
              builder: (context, params) => H7SettingWidget(),
            ),
            FFRoute(
              name: 'H8CustomerCare',
              path: 'h8CustomerCare',
              builder: (context, params) => H8CustomerCareWidget(),
            ),
            FFRoute(
              name: 'H9RateUs',
              path: 'h9RateUs',
              builder: (context, params) => H9RateUsWidget(),
            ),
            FFRoute(
              name: 'A3LoginPage',
              path: 'a3LoginPage',
              builder: (context, params) => A3LoginPageWidget(),
            ),
            FFRoute(
              name: 'A6BudgetSearch',
              path: 'a6BudgetSearch',
              builder: (context, params) => A6BudgetSearchWidget(
                budget: params.getParam('budget', ParamType.double),
                days: params.getParam('days', ParamType.int),
                transportation:
                    params.getParam('transportation', ParamType.bool),
                percentageToExpense:
                    params.getParam('percentageToExpense', ParamType.double),
              ),
            ),
            FFRoute(
              name: 'Simole',
              path: 'simole',
              builder: (context, params) => SimoleWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
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
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
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
      (state.extraMap.length == 1 &&
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
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
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
    return deserializeParam<T>(param, type, isList, collectionNamePath);
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
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/a3LoginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
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
                    child: SpinKitCircle(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
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
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
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
