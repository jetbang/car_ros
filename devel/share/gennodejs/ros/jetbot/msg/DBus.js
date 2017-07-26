// Auto-generated. Do not edit!

// (in-package jetbot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rcp = require('./Rcp.js');
let Hcp = require('./Hcp.js');

//-----------------------------------------------------------

class DBus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcp = null;
      this.hcp = null;
    }
    else {
      if (initObj.hasOwnProperty('rcp')) {
        this.rcp = initObj.rcp
      }
      else {
        this.rcp = new Rcp();
      }
      if (initObj.hasOwnProperty('hcp')) {
        this.hcp = initObj.hcp
      }
      else {
        this.hcp = new Hcp();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DBus
    // Serialize message field [rcp]
    bufferOffset = Rcp.serialize(obj.rcp, buffer, bufferOffset);
    // Serialize message field [hcp]
    bufferOffset = Hcp.serialize(obj.hcp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DBus
    let len;
    let data = new DBus(null);
    // Deserialize message field [rcp]
    data.rcp = Rcp.deserialize(buffer, bufferOffset);
    // Deserialize message field [hcp]
    data.hcp = Hcp.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbot/DBus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8afdad0d004f8088d4c832bf9a170a35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Rcp rcp
    Hcp hcp
    ================================================================================
    MSG: jetbot/Rcp
    uint16 ch1
    uint16 ch2
    uint16 ch3
    uint16 ch4
    uint8 sw1
    uint8 sw2
    ================================================================================
    MSG: jetbot/Hcp
    int16 mouse_speed_x
    int16 mouse_speed_y
    int16 mouse_speed_z
    uint8 mouse_button_left
    uint8 mouse_button_right
    uint16 key
    uint16 res
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DBus(null);
    if (msg.rcp !== undefined) {
      resolved.rcp = Rcp.Resolve(msg.rcp)
    }
    else {
      resolved.rcp = new Rcp()
    }

    if (msg.hcp !== undefined) {
      resolved.hcp = Hcp.Resolve(msg.hcp)
    }
    else {
      resolved.hcp = new Hcp()
    }

    return resolved;
    }
};

module.exports = DBus;
