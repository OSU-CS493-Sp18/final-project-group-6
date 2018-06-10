const router = require('express').Router();
const validation = require('../lib/validation');

/*
 * Schema describing required/optional fields of a review object.
 */
const photosSchema = {
  userid: { required: true },
  beerid: { required: true },
  caption: { required: true },
  filename: { required: true }
};

