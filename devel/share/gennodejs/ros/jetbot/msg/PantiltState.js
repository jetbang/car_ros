// Auto-generated. Do not edit!

// (in-package jetbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PantiltState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p = null;
      this.t = null;
    }
    else {
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = 0;
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PantiltState
    // Serialize message field [p]
    bufferOffset = _serializer.int16(obj.p, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.int16(obj.t, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PantiltState
    let len;
    let data = new PantiltState(null);
    // Deserialize message field [p]
    data.p = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbot/PantiltState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b08ea430ac45fde2716ea064d94e7a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 p
    int16 t
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PantiltState(null);
    if (msg.p !== undefined) {
      resolved.p = msg.p;
    }
    else {
      resolved.p = 0
    }

    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = 0
    }

    return resolved;
    }
};

module.exports = PantiltState;
