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

class Rcp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ch1 = null;
      this.ch2 = null;
      this.ch3 = null;
      this.ch4 = null;
      this.sw1 = null;
      this.sw2 = null;
    }
    else {
      if (initObj.hasOwnProperty('ch1')) {
        this.ch1 = initObj.ch1
      }
      else {
        this.ch1 = 0;
      }
      if (initObj.hasOwnProperty('ch2')) {
        this.ch2 = initObj.ch2
      }
      else {
        this.ch2 = 0;
      }
      if (initObj.hasOwnProperty('ch3')) {
        this.ch3 = initObj.ch3
      }
      else {
        this.ch3 = 0;
      }
      if (initObj.hasOwnProperty('ch4')) {
        this.ch4 = initObj.ch4
      }
      else {
        this.ch4 = 0;
      }
      if (initObj.hasOwnProperty('sw1')) {
        this.sw1 = initObj.sw1
      }
      else {
        this.sw1 = 0;
      }
      if (initObj.hasOwnProperty('sw2')) {
        this.sw2 = initObj.sw2
      }
      else {
        this.sw2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rcp
    // Serialize message field [ch1]
    bufferOffset = _serializer.uint16(obj.ch1, buffer, bufferOffset);
    // Serialize message field [ch2]
    bufferOffset = _serializer.uint16(obj.ch2, buffer, bufferOffset);
    // Serialize message field [ch3]
    bufferOffset = _serializer.uint16(obj.ch3, buffer, bufferOffset);
    // Serialize message field [ch4]
    bufferOffset = _serializer.uint16(obj.ch4, buffer, bufferOffset);
    // Serialize message field [sw1]
    bufferOffset = _serializer.uint8(obj.sw1, buffer, bufferOffset);
    // Serialize message field [sw2]
    bufferOffset = _serializer.uint8(obj.sw2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rcp
    let len;
    let data = new Rcp(null);
    // Deserialize message field [ch1]
    data.ch1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ch2]
    data.ch2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ch3]
    data.ch3 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ch4]
    data.ch4 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sw1]
    data.sw1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sw2]
    data.sw2 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetbot/Rcp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5bd0f9dd4a8a3cd6a641f38748d7c7e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 ch1
    uint16 ch2
    uint16 ch3
    uint16 ch4
    uint8 sw1
    uint8 sw2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rcp(null);
    if (msg.ch1 !== undefined) {
      resolved.ch1 = msg.ch1;
    }
    else {
      resolved.ch1 = 0
    }

    if (msg.ch2 !== undefined) {
      resolved.ch2 = msg.ch2;
    }
    else {
      resolved.ch2 = 0
    }

    if (msg.ch3 !== undefined) {
      resolved.ch3 = msg.ch3;
    }
    else {
      resolved.ch3 = 0
    }

    if (msg.ch4 !== undefined) {
      resolved.ch4 = msg.ch4;
    }
    else {
      resolved.ch4 = 0
    }

    if (msg.sw1 !== undefined) {
      resolved.sw1 = msg.sw1;
    }
    else {
      resolved.sw1 = 0
    }

    if (msg.sw2 !== undefined) {
      resolved.sw2 = msg.sw2;
    }
    else {
      resolved.sw2 = 0
    }

    return resolved;
    }
};

module.exports = Rcp;
