// Auto-generated. Do not edit!

// (in-package jetbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ChassisState = require('./ChassisState.js');
let PantiltState = require('./PantiltState.js');

//-----------------------------------------------------------

class CBus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.fs = null;
      this.cp = null;
      this.cv = null;
      this.gp = null;
      this.gv = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('fs')) {
        this.fs = initObj.fs
      }
      else {
        this.fs = 0;
      }
      if (initObj.hasOwnProperty('cp')) {
        this.cp = initObj.cp
      }
      else {
        this.cp = new ChassisState();
      }
      if (initObj.hasOwnProperty('cv')) {
        this.cv = initObj.cv
      }
      else {
        this.cv = new ChassisState();
      }
      if (initObj.hasOwnProperty('gp')) {
        this.gp = initObj.gp
      }
      else {
        this.gp = new PantiltState();
      }
      if (initObj.hasOwnProperty('gv')) {
        this.gv = initObj.gv
      }
      else {
        this.gv = new PantiltState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CBus
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint32(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [fs]
    bufferOffset = _serializer.uint32(obj.fs, buffer, bufferOffset);
    // Serialize message field [cp]
    bufferOffset = ChassisState.serialize(obj.cp, buffer, bufferOffset);
    // Serialize message field [cv]
    bufferOffset = ChassisState.serialize(obj.cv, buffer, bufferOffset);
    // Serialize message field [gp]
    bufferOffset = PantiltState.serialize(obj.gp, buffer, bufferOffset);
    // Serialize message field [gv]
    bufferOffset = PantiltState.serialize(obj.gv, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CBus
    let len;
    let data = new CBus(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fs]
    data.fs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [cp]
    data.cp = ChassisState.deserialize(buffer, bufferOffset);
    // Deserialize message field [cv]
    data.cv = ChassisState.deserialize(buffer, bufferOffset);
    // Deserialize message field [gp]
    data.gp = PantiltState.deserialize(buffer, bufferOffset);
    // Deserialize message field [gv]
    data.gv = PantiltState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbot/CBus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9efec3ad9b0e585f766ffbfebbe2a46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CBus(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.fs !== undefined) {
      resolved.fs = msg.fs;
    }
    else {
      resolved.fs = 0
    }

    if (msg.cp !== undefined) {
      resolved.cp = ChassisState.Resolve(msg.cp)
    }
    else {
      resolved.cp = new ChassisState()
    }

    if (msg.cv !== undefined) {
      resolved.cv = ChassisState.Resolve(msg.cv)
    }
    else {
      resolved.cv = new ChassisState()
    }

    if (msg.gp !== undefined) {
      resolved.gp = PantiltState.Resolve(msg.gp)
    }
    else {
      resolved.gp = new PantiltState()
    }

    if (msg.gv !== undefined) {
      resolved.gv = PantiltState.Resolve(msg.gv)
    }
    else {
      resolved.gv = new PantiltState()
    }

    return resolved;
    }
};

module.exports = CBus;
