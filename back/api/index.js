const express = require('express');
const router = express.Router();
const {schedule,schedule_add,schedule_update,schedule_delete,schedule_day} = require('./schedule')
router.get('/schedule',  schedule)
router.get('/schedule/day',  schedule_day)
router.post('/schedule/add',schedule_add)
router.put('/schedule/update',schedule_update)
router.delete('/schedule/delete/:id',schedule_delete)
module.exports = router;