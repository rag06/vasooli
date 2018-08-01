var express = require('express');
var router = express.Router();
var members = require('../model/members');

router.get('/:id?',function(req, res, next){

    if (req.params.id) {
        members.getMemberById(req.params.id, function (err, rows) {
            (err)? res.json(err): res.json(rows);
        });
    } else {
        members.getAllMembers(function (err, rows){
                (err)? res.json(err): res.json(rows);
            });
    }
});
router.post('/',function(req, res, next) {
    members.addMember(req.body, function(err, count){
        (err)? res.json(err): res.json(req.body); //or return count for 1 &amp;amp;amp; 0
    });
});
router.delete('/:id',function (req, res, next) {
    members.deleteMember(req.params.id, function (err, count){
        (err)? res.json(err): res.json(count);
    });
});
router.put('/:id',function(req, res, next) {

    members.updateMember(req.params.id, req.body, function(err, rows){
        (err)? res.json(err): res.json(rows);
    });
});
module.exports = router;