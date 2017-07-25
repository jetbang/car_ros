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

class Uwb {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frame_id = null;
      this.flag = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.w = null;
    }
    else {
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = 0;
      }
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0;
      }
      if (initObj.hasOwnProperty('w')) {
        this.w = initObj.w
      }
      else {
        this.w = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Uwb
    // Serialize message field [frame_id]
    bufferOffset = _serializer.uint32(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [flag]
    bufferOffset = _serializer.uint8(obj.flag, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.uint32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.uint32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.uint32(obj.z, buffer, bufferOffset);
    // Serialize message field [w]
    bufferOffset = _serializer.uint32(obj.w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Uwb
    let len;
    let data = new Uwb(null);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [flag]
    data.flag = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [w]
    data.w = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbot/Uwb';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd081c1ded50e40b797a8b93692c3f0f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 frame_id
    uint8 flag
    uint32 x
    uint32 y
    uint32 z
    uint32 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Uwb(null);
    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = 0
    }

    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0
    }

    if (msg.w !== undefined) {
      resolved.w = msg.w;
    }
    else {
      resolved.w = 0
    }

    return resolved;
    }
};

module.exports = Uwb;
