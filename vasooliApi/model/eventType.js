var db = require('../dbconnection'); //reference of dbconnection.js

var eventType = {

getAllEventTypes: function (callback) {
    return db.query("Select * from eventtype", callback);
} ,
getEventTypeById: function (id, callback) {
    return db.query("select * from eventtype where eventType_Id=?",[id], callback);
},
addEventType: function (EventType, callback) {
    return db.query("Insert into eventtype (eventType_Name, eventType_Amount, eventType_Status)  values(?,?,?)", [EventType.eventType_Name, EventType.eventType_Amount, EventType.eventType_Status], callback);
},
deleteEventType: function (id, callback) {
    return db.query("delete from eventtype where eventType_Id=?",[id], callback);
},
updateEventType: function (id, EventType, callback){
    return db.query("update eventtype set eventType_Name=?,eventType_Amount=?,eventType_Status=? where eventType_Id=?",[EventType.eventType_Name, EventType.eventType_Amount, eventType_Status, id], callback);
}

};
module.exports = eventType;