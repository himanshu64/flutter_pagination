part of 'ar_filter_bloc.dart';

abstract class ARFilterEvent extends Equatable {
  const ARFilterEvent();

  @override
  List<Object> get props => [];
}

class SelectSticker extends ARFilterEvent {
  final String sticker;

  const SelectSticker(this.sticker);

  @override
  List<Object> get props => [sticker];
}