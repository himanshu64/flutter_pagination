
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ar_filter_event.dart';
part 'ar_filter_state.dart';

class ARFilterBloc extends Bloc<ARFilterEvent, ARFilterState> {
  ARFilterBloc() : super(ARFilterInitial()) {
    on<SelectSticker>(_onSelectSticker);
  }
  
  _onSelectSticker(SelectSticker event, Emitter<ARFilterState> emit) async {

  }
}