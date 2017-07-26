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

class Hcp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mouse_speed_x = null;
      this.mouse_speed_y = null;
      this.mouse_speed_z = null;
      this.mouse_button_left = null;
      this.mouse_button_right = null;
      this.key = null;
      this.res = null;
    }
    else {
      if (initObj.hasOwnProperty('mouse_speed_x')) {
        this.mouse_speed_x = initObj.mouse_speed_x
      }
      else {
        this.mouse_speed_x = 0;
      }
      if (initObj.hasOwnProperty('mouse_speed_y')) {
        this.mouse_speed_y = initObj.mouse_speed_y
      }
      else {
        this.mouse_speed_y = 0;
      }
      if (initObj.hasOwnProperty('mouse_speed_z')) {
        this.mouse_speed_z = initObj.mouse_speed_z
      }
      else {
        this.mouse_speed_z = 0;
      }
      if (initObj.hasOwnProperty('mouse_button_left')) {
        this.mouse_button_left = initObj.mouse_button_left
      }
      else {
        this.mouse_button_left = 0;
      }
      if (initObj.hasOwnProperty('mouse_button_right')) {
        this.mouse_button_right = initObj.mouse_button_right
      }
      else {
        this.mouse_button_right = 0;
      }
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = 0;
      }
      if (initObj.hasOwnProperty('res')) {
        this.res = initObj.res
      }
      else {
        this.res = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hcp
    // Serialize message field [mouse_speed_x]
    bufferOffset = _serializer.int16(obj.mouse_speed_x, buffer, bufferOffset);
    // Serialize message field [mouse_speed_y]
    bufferOffset = _serializer.int16(obj.mouse_speed_y, buffer, bufferOffset);
    // Serialize message field [mouse_speed_z]
    bufferOffset = _serializer.int16(obj.mouse_speed_z, buffer, bufferOffset);
    // Serialize message field [mouse_button_left]
    bufferOffset = _serializer.uint8(obj.mouse_button_left, buffer, bufferOffset);
    // Serialize message field [mouse_button_right]
    bufferOffset = _serializer.uint8(obj.mouse_button_right, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = _serializer.uint16(obj.key, buffer, bufferOffset);
    // Serialize message field [res]
    bufferOffset = _serializer.uint16(obj.res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hcp
    let len;
    let data = new Hcp(null);
    // Deserialize message field [mouse_speed_x]
    data.mouse_speed_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_speed_y]
    data.mouse_speed_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_speed_z]
    data.mouse_speed_z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_button_left]
    data.mouse_button_left = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mouse_button_right]
    data.mouse_button_right = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [res]
    data.res = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbot/Hcp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b43018bb32e264090ccdd50096e77265';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Hcp(null);
    if (msg.mouse_speed_x !== undefined) {
      resolved.mouse_speed_x = msg.mouse_speed_x;
    }
    else {
      resolved.mouse_speed_x = 0
    }

    if (msg.mouse_speed_y !== undefined) {
      resolved.mouse_speed_y = msg.mouse_speed_y;
    }
    else {
      resolved.mouse_speed_y = 0
    }

    if (msg.mouse_speed_z !== undefined) {
      resolved.mouse_speed_z = msg.mouse_speed_z;
    }
    else {
      resolved.mouse_speed_z = 0
    }

    if (msg.mouse_button_left !== undefined) {
      resolved.mouse_button_left = msg.mouse_button_left;
    }
    else {
      resolved.mouse_button_left = 0
    }

    if (msg.mouse_button_right !== undefined) {
      resolved.mouse_button_right = msg.mouse_button_right;
    }
    else {
      resolved.mouse_button_right = 0
    }

    if (msg.key !== undefined) {
      resolved.key = msg.key;
    }
    else {
      resolved.key = 0
    }

    if (msg.res !== undefined) {
      resolved.res = msg.res;
    }
    else {
      resolved.res = 0
    }

    return resolved;
    }
};

module.exports = Hcp;
