//= require active_admin/base
//= require jquery
//= require anytime/anytimec
//= require anytime/anytimetz


$(document).ready(function(){
  $("#user_birthdate").AnyTime_picker(
    { 
      format: "%Y-%m-%d %H:%i:%s %+",
      formatUtcOffset: "%: (%@)",
      hideInput: false
    }
  );
});