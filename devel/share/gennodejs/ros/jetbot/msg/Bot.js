// Auto-generated. Do not edit!

// (in-package jetbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CBus = require('./CBus.js');

//-----------------------------------------------------------

class Bot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.cbus = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('cbus')) {
        this.cbus = initObj.cbus
      }
      else {
        this.cbus = new CBus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bot
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint32(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [cbus]
    bufferOffset = CBus.serialize(obj.cbus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bot
    let len;
    let data = new Bot(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cbus]
    data.cbus = CBus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbot/Bot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '676ff8c0e5861dafed1482bc0ebcac80';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 frame_id
    CBus cbus
    ================================================================================
    MSG: jetbot/CBus
    uint32 frame_id
    uint32 fs
    ChassisState cp
    ChassisState cv
    PantiltState gp
    PantiltState gv
    ================================================================================
    MSG: jetbot/ChassisState
    int32 x
    int32 y
    int32 z
    ================================================================================
    MSG: jetbot/PantiltState
    int16 p
    int16 t
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bot(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.cbus !== undefined) {
      resolved.cbus = CBus.Resolve(msg.cbus)
    }
    else {
      resolved.cbus = new CBus()
    }

    return resolved;
    }
};

module.exports = Bot;
