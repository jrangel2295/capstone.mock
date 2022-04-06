const express = require('express')
const playersController = require('../controllers/players')
const router = express.Router()
const pool = require('../sql/connection')

router.get('/', playersController.getAllPlayers)

router.get('/:id', playersController.getplayersById)

module.exports = router