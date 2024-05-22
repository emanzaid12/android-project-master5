part of 'user_cubit.dart';

@immutable
sealed class ItemState {}

final class ItemLoadingState extends ItemState {}

final class ItemLoadedState extends ItemState {}

final class ItemEmptystate extends ItemState {}
