part of 'main-service.dart';

final $MainService = BindInject(
  (i) => MainService(),
  isSingleton: true,
  isLazy: true,
);
