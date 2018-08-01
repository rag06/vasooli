var express = require('express');
var router = express.Router();
var eventType = require('../model/eventType');

router.get('/:id?',function(req, res, next){

    if (req.params.id) {
        eventType.getEventTypeById(req.params.id, function (err, rows) {
            (err)? res.json(err): res.json(rows);
        });
    } else {
            eventType.getAllEventTypes(function (err, rows){
                (err)? res.json(err): res.json(rows);
            });
    }
});
router.post('/',function(req, res, next) {
    eventType.addEventType(req.body, function(err, count){
        (err)? res.json(err): res.json(req.body); //or return count for 1 &amp;amp;amp; 0
    });
});
router.delete('/:id',function (req, res, next) {
    eventType.deleteEventType(req.params.id, function (err, count){
        (err)? res.json(err): res.json(count);
    });
});
router.put('/:id',function(req, res, next) {

    eventType.updateEventType(req.params.id,req.body,function(err,rows){
        (err)? res.json(err): res.json(rows);
    });
});
module.exports = router;