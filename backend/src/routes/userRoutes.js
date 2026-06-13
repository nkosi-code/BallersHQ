const express = require("express");
const bcrypt = require("bcryptjs");

const User = require("../models/User");

const auth = require("../middleware/auth");
const roles = require("../middleware/roles");

const router = express.Router();

router.post(
  "/create-admin",
  auth,
  roles("superadmin"),
  async (req, res) => {
    const { username } = req.body;

    const tempPin = "1234";

    const hashed =
      await bcrypt.hash(tempPin, 10);

    const admin = await User.create({
      username,
      pin: hashed,
      role: "admin",
      tempPin: true
    });

    res.json(admin);
  }
);

router.post(
  "/create-player",
  auth,
  roles("superadmin", "admin"),
  async (req, res) => {
    const { username } = req.body;

    const tempPin = "1234";

    const hashed =
      await bcrypt.hash(tempPin, 10);

    const player = await User.create({
      username,
      pin: hashed,
      role: "player",
      tempPin: true
    });

    res.json(player);
  }
);

module.exports = router;