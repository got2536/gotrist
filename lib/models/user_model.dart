class UserModel {
  
  // field
  String id, resultCode, name, surName;

  // Constructor
  UserModel(this.id, this.resultCode, this.name, this.surName);

  UserModel.fromJSON(Map<String, dynamic> map){
    id = map['id'];
    resultCode = map['ResultCode'];
    name = map['Name'];
    surName = map['Surname'];
  }
}
