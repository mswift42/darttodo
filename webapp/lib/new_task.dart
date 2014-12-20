import 'package:polymer/polymer.dart';

@CustomTag('new-task')
class NewTask extends PolymerElement {
    @observable String tasksummary = '';
    @observable String taskcontent = '';

    NewTask.created() : super.created();
    
    
}
