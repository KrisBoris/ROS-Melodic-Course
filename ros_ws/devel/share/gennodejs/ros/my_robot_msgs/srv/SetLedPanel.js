// Auto-generated. Do not edit!

// (in-package my_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLedPanelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.led_number = null;
      this.led_state = null;
    }
    else {
      if (initObj.hasOwnProperty('led_number')) {
        this.led_number = initObj.led_number
      }
      else {
        this.led_number = 0;
      }
      if (initObj.hasOwnProperty('led_state')) {
        this.led_state = initObj.led_state
      }
      else {
        this.led_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLedPanelRequest
    // Serialize message field [led_number]
    bufferOffset = _serializer.int64(obj.led_number, buffer, bufferOffset);
    // Serialize message field [led_state]
    bufferOffset = _serializer.bool(obj.led_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLedPanelRequest
    let len;
    let data = new SetLedPanelRequest(null);
    // Deserialize message field [led_number]
    data.led_number = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [led_state]
    data.led_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_msgs/SetLedPanelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a9ef4af5785f2ab9471599c434f6a92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 led_number
    bool led_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLedPanelRequest(null);
    if (msg.led_number !== undefined) {
      resolved.led_number = msg.led_number;
    }
    else {
      resolved.led_number = 0
    }

    if (msg.led_state !== undefined) {
      resolved.led_state = msg.led_state;
    }
    else {
      resolved.led_state = false
    }

    return resolved;
    }
};

class SetLedPanelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLedPanelResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLedPanelResponse
    let len;
    let data = new SetLedPanelResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_robot_msgs/SetLedPanelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLedPanelResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetLedPanelRequest,
  Response: SetLedPanelResponse,
  md5sum() { return 'ca637c0799ee071ea5139620f452c21c'; },
  datatype() { return 'my_robot_msgs/SetLedPanel'; }
};
