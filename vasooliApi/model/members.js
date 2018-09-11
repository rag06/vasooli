var db = require('../dbconnection'); //reference of dbconnection.js

var members = {

getAllMembers: function (callback) {
    return db.query("Select * from members", callback);
} ,
getMemberById: function (id, callback) {
    return db.query("select * from members where member_Id=?",[id], callback);
},
addMember: function (members, callback) {
    return db.query("Insert into members (member_EmpId, member_Name, member_EmailId, member_Image, member_Role, member_DateOfBirth, member_Password, member_Status, member_PhoneNumber)  values(?,?,?,?,?,?,?,?,?)", [members.member_EmpId, members.member_Name, members.member_EmailId, members.member_Image, members.member_Role, members.member_DateOfBirth,members.member_Password, members.member_Status, members.member_PhoneNumber], callback);
},
deleteMember: function (id, callback) {
    return db.query("delete from members where member_Id=?",[id], callback);
},
updateMember: function (id, members, callback){
    return db.query("update members set member_EmpId=?, member_Name=?, member_EmailId=?, member_Image=?, member_Role=?, member_DateOfBirth=?, member_Password=?, member_Status=?, member_PhoneNumber=? where member_Id=?", [members.member_EmpId, members.member_Name, members.member_EmailId, members.member_Image, members.member_Role, members.member_DateOfBirth,members.member_Password, members.member_Status, members.member_PhoneNumber, id], callback);
}

};
 module.exports = members;