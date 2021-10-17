part of 'token_service.dart';

final $TokenService = BindInject(
  (i) => TokenService(),
  isSingleton: true,
  isLazy: true,
);
