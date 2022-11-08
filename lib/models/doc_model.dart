class DocModel {
  List<Data>? data;

  DocModel({this.data});

  DocModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? doctorSpId;
  String? doctorSubSpId;
  String? doctorName;
  String? doctorDeg;
  String? doctorDesc;
  String? doctorImage;
  String? hospitalId;
  String? doctorFee;
  String? doctorSymtom;
  String? availability;
  String? emergencyFlag;
  Null? language;
  Null? shetime;
  String? regionbody;
  String? userId;
  String? specialityName;
  String? hospitalName;

  Data(
      {this.id,
      this.doctorSpId,
      this.doctorSubSpId,
      this.doctorName,
      this.doctorDeg,
      this.doctorDesc,
      this.doctorImage,
      this.hospitalId,
      this.doctorFee,
      this.doctorSymtom,
      this.availability,
      this.emergencyFlag,
      this.language,
      this.shetime,
      this.regionbody,
      this.userId,
      this.specialityName,
      this.hospitalName});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    doctorSpId = json['doctorSpId'];
    doctorSubSpId = json['doctorSubSpId'];
    doctorName = json['doctorName'];
    doctorDeg = json['doctorDeg'];
    doctorDesc = json['doctorDesc'];
    doctorImage = json['doctorImage'];
    hospitalId = json['hospitalId'];
    doctorFee = json['doctorFee'];
    doctorSymtom = json['doctorSymtom'];
    availability = json['availability'];
    emergencyFlag = json['emergencyFlag'];
    language = json['language'];
    shetime = json['shetime'];
    regionbody = json['regionbody'];
    userId = json['user_id'];
    specialityName = json['specialityName'];
    hospitalName = json['hospitalName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['doctorSpId'] = this.doctorSpId;
    data['doctorSubSpId'] = this.doctorSubSpId;
    data['doctorName'] = this.doctorName;
    data['doctorDeg'] = this.doctorDeg;
    data['doctorDesc'] = this.doctorDesc;
    data['doctorImage'] = this.doctorImage;
    data['hospitalId'] = this.hospitalId;
    data['doctorFee'] = this.doctorFee;
    data['doctorSymtom'] = this.doctorSymtom;
    data['availability'] = this.availability;
    data['emergencyFlag'] = this.emergencyFlag;
    data['language'] = this.language;
    data['shetime'] = this.shetime;
    data['regionbody'] = this.regionbody;
    data['user_id'] = this.userId;
    data['specialityName'] = this.specialityName;
    data['hospitalName'] = this.hospitalName;
    return data;
  }
}
