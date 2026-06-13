const mongoose = require("mongoose");

const userSchema = new mongoose.Schema(
  {
    username: {
      type: String,
      unique: true
    },

    pin: {
      type: String
    },

    role: {
      type: String,
      enum: ["superadmin", "admin", "player"],
      default: "player"
    },

    tempPin: {
      type: Boolean,
      default: true
    },

    active: {
      type: Boolean,
      default: false
    },

    createdBy: {
      type: String
    }
  },
  { timestamps: true }
);

module.exports = mongoose.model("User", userSchema);