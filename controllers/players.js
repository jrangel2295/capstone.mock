const mysql = require('mysql')
const pool = require('../sql/connection')
const { handleSQLError } = require('../sql/error')

const getAllPlayers = (req, res) => {
    pool.query("SELECT * FROM players", (err, rows) => {
      if (err) return handleSQLError(res, err)
      return res.json(rows);
    })
  }

  const getplayersById = (req, res) => {
    const {id} = req.params
    let sql ="SELECT * FROM ?? WHERE ?? = ?"
    sql = mysql.format(sql, ['players','emp_no', id])

    pool.query(sql, (err, results) => {
      if (err) return handleSQLError(res, err)
      console.log(results)
      return res.status(200).json(results);
    })
  }




  module.exports = {
    getAllPlayers,
    getplayersById
  }