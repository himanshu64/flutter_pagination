part of 'ar_filter_bloc.dart';

abstract class ARFilterState extends Equatable {
  const ARFilterState();

  @override
  List<Object> get props => [];
}

class ARFilterInitial extends ARFilterState {}

class StickerSelected extends ARFilterState {
  final String sticker;

  const StickerSelected(this.sticker);

  @override
  List<Object> get props => [sticker];
}
