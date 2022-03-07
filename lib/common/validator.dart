

class FormValidator {
  validPhone(String value, {bool req=true}){
    if(value != null && value != ''){
      if(value.length != 9)return false;
      else return true;
    }else{
      if(req)return false;
      else return true;
    }
  }
  validEmail(String value, {bool req=true}){
    if(value != null && value != ''){
      return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
    }else{
      if(req)return false;
      else return true;
    }
  }
  validFullName(String value, {bool req=true}){
    if(value != null && value != ''){

      var valChecked = value.split(' ');
      if (valChecked.length >= 2) {
        return true;
      }
      else
        return false;
    }else{
      if(req)return false;
      else return true;
    }
  }
  validDate(String value, {bool req=true}){
    if(value != null && value != ''){
      return RegExp(r"^([0-2][0-9]|(3)[0-1])(\.)(((0)[0-9])|((1)[0-2]))(\.)\d{4}$").hasMatch(value);
    }else{
      if(req)return false;
      else return true;
    }
  }
  validHeight(String value, {bool req=true}){
    if(value != null && value != ''){
      if (value.length > 0) {
        return true;
      }
      else return false;
    }else{
      if(req)return false;
      else return true;
    }
  }

  validInviteCode(String value, {bool req=false}){
    if(value != null && value != ''){
      if (value.length > 0) {
        return true;
      }
      else return false;
    }else{
      if(req)return false;
      else return true;
    }
  }
  validWeight(String value, {bool req=true}){
    if(value != null && value != ''){
      if (value.length > 0) {
        return true;
      }
      else return false;
    }else{
      if(req)return false;
      else return true;
    }
  }
}