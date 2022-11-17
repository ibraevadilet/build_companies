// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../features/apartments/presentation/apartments/screen/apartments_screen.dart'
    as _i6;
import '../features/companies/data/models/comany_model.dart' as _i11;
import '../features/companies/presentation/companies/screen/companies_screen.dart'
    as _i5;
import '../features/companies/presentation/company_detail/screen/company_detail_screen.dart'
    as _i2;
import '../features/map/presentation/screen/map_screen.dart' as _i7;
import '../features/profile/presentation/profile_main_screen/profile_screen.dart'
    as _i8;
import '../features/splash/splash_screen.dart' as _i1;
import '../widgets/bottom_navigator.dart' as _i3;
import 'mobile_app_router.dart' as _i4;

class MobileAppRouter extends _i9.RootStackRouter {
  MobileAppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    CompanyDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CompanyDetailScreenRouteArgs>();
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.CompanyDetailScreen(
          model: args.model,
          key: args.key,
        ),
      );
    },
    BottomNavigatorRoute.name: (routeData) {
      return _i9.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.BottomNavigator(),
      );
    },
    CompaniesScreenNavigator.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    ApartmentsScreenNavigator.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    MapScreenNavigator.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    ProfileScreenNavigator.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    CompaniesScreenRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CompaniesScreen(),
      );
    },
    ApartmentsScreenRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ApartmentsScreen(),
      );
    },
    MapScreenRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i7.MapScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ProfileScreen(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          CompanyDetailScreenRoute.name,
          path: 'company_detail_screen',
        ),
        _i9.RouteConfig(
          BottomNavigatorRoute.name,
          path: '/navigator',
          children: [
            _i9.RouteConfig(
              CompaniesScreenNavigator.name,
              path: 'companies',
              parent: BottomNavigatorRoute.name,
              children: [
                _i9.RouteConfig(
                  CompaniesScreenRoute.name,
                  path: '',
                  parent: CompaniesScreenNavigator.name,
                ),
                _i9.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: CompaniesScreenNavigator.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i9.RouteConfig(
              ApartmentsScreenNavigator.name,
              path: 'apartments',
              parent: BottomNavigatorRoute.name,
              children: [
                _i9.RouteConfig(
                  ApartmentsScreenRoute.name,
                  path: '',
                  parent: ApartmentsScreenNavigator.name,
                ),
                _i9.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ApartmentsScreenNavigator.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i9.RouteConfig(
              MapScreenNavigator.name,
              path: 'map',
              parent: BottomNavigatorRoute.name,
              children: [
                _i9.RouteConfig(
                  MapScreenRoute.name,
                  path: '',
                  parent: MapScreenNavigator.name,
                ),
                _i9.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: MapScreenNavigator.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i9.RouteConfig(
              ProfileScreenNavigator.name,
              path: 'profile',
              parent: BottomNavigatorRoute.name,
              children: [
                _i9.RouteConfig(
                  ProfileScreenRoute.name,
                  path: '',
                  parent: ProfileScreenNavigator.name,
                ),
                _i9.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ProfileScreenNavigator.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i9.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.CompanyDetailScreen]
class CompanyDetailScreenRoute
    extends _i9.PageRouteInfo<CompanyDetailScreenRouteArgs> {
  CompanyDetailScreenRoute({
    required _i11.CompanyModel model,
    _i10.Key? key,
  }) : super(
          CompanyDetailScreenRoute.name,
          path: 'company_detail_screen',
          args: CompanyDetailScreenRouteArgs(
            model: model,
            key: key,
          ),
        );

  static const String name = 'CompanyDetailScreenRoute';
}

class CompanyDetailScreenRouteArgs {
  const CompanyDetailScreenRouteArgs({
    required this.model,
    this.key,
  });

  final _i11.CompanyModel model;

  final _i10.Key? key;

  @override
  String toString() {
    return 'CompanyDetailScreenRouteArgs{model: $model, key: $key}';
  }
}

/// generated route for
/// [_i3.BottomNavigator]
class BottomNavigatorRoute extends _i9.PageRouteInfo<void> {
  const BottomNavigatorRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BottomNavigatorRoute.name,
          path: '/navigator',
          initialChildren: children,
        );

  static const String name = 'BottomNavigatorRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class CompaniesScreenNavigator extends _i9.PageRouteInfo<void> {
  const CompaniesScreenNavigator({List<_i9.PageRouteInfo>? children})
      : super(
          CompaniesScreenNavigator.name,
          path: 'companies',
          initialChildren: children,
        );

  static const String name = 'CompaniesScreenNavigator';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ApartmentsScreenNavigator extends _i9.PageRouteInfo<void> {
  const ApartmentsScreenNavigator({List<_i9.PageRouteInfo>? children})
      : super(
          ApartmentsScreenNavigator.name,
          path: 'apartments',
          initialChildren: children,
        );

  static const String name = 'ApartmentsScreenNavigator';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class MapScreenNavigator extends _i9.PageRouteInfo<void> {
  const MapScreenNavigator({List<_i9.PageRouteInfo>? children})
      : super(
          MapScreenNavigator.name,
          path: 'map',
          initialChildren: children,
        );

  static const String name = 'MapScreenNavigator';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ProfileScreenNavigator extends _i9.PageRouteInfo<void> {
  const ProfileScreenNavigator({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileScreenNavigator.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileScreenNavigator';
}

/// generated route for
/// [_i5.CompaniesScreen]
class CompaniesScreenRoute extends _i9.PageRouteInfo<void> {
  const CompaniesScreenRoute()
      : super(
          CompaniesScreenRoute.name,
          path: '',
        );

  static const String name = 'CompaniesScreenRoute';
}

/// generated route for
/// [_i6.ApartmentsScreen]
class ApartmentsScreenRoute extends _i9.PageRouteInfo<void> {
  const ApartmentsScreenRoute()
      : super(
          ApartmentsScreenRoute.name,
          path: '',
        );

  static const String name = 'ApartmentsScreenRoute';
}

/// generated route for
/// [_i7.MapScreen]
class MapScreenRoute extends _i9.PageRouteInfo<void> {
  const MapScreenRoute()
      : super(
          MapScreenRoute.name,
          path: '',
        );

  static const String name = 'MapScreenRoute';
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileScreenRoute extends _i9.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'ProfileScreenRoute';
}
