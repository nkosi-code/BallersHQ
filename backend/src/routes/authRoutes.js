const express = require("express");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

const User = require("../models/User");

const router = express.Router();

router.post("/superadmin", async (req, res) => {
  const { password } = req.body;

  if (
    password !== process.env.SUPER_ADMIN_PASSWORD
  ) {
    return res.status(401).json({
      message: "Wrong password"
    });
  }

  const token = jwt.sign(
    {
      role: "superadmin"
    },
    process.env.JWT_SECRET
  );

  res.json({
    token
  });
});

router.post("/login", async (req, res) => {
  const { username, pin } = req.body;

  const user = await User.findOne({
    username
  });

  if (!user)
    return res.status(404).json({
      message: "User not found"
    });

  const match = await bcrypt.compare(
    pin,
    user.pin
  );

  if (!match)
    return res.status(401).json({
      message: "Wrong pin"
    });

  user.active = true;

  await user.save();

  const token = jwt.sign(
    {
      id: user._id,
      role: user.role
    },
    process.env.JWT_SECRET
  );

  res.json({
    token,
    tempPin: user.tempPin
  });
});

module.exports = router;