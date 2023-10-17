
import 'package:flutter_bloc/flutter_bloc.dart';

part 'invoice_event.dart';
part 'invoice_state.dart';

class InvoiceBloc extends Bloc<InvoiceEvent, InvoiceState> {
  InvoiceBloc() : super(InvoiceInitial()) {
    on<InvoiceEvent>((event, emit) {
      
    });
  }
}
