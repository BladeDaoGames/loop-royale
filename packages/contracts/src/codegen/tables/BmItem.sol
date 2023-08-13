// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

/* Autogenerated file. Do not edit manually. */

// Import schema type
import { SchemaType } from "@latticexyz/schema-type/src/solidity/SchemaType.sol";

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { Schema, SchemaLib } from "@latticexyz/store/src/Schema.sol";
import { PackedCounter, PackedCounterLib } from "@latticexyz/store/src/PackedCounter.sol";

// Import user types
import { ItemType } from "./../Types.sol";

bytes32 constant _tableId = bytes32(abi.encodePacked(bytes16(""), bytes16("BmItem")));
bytes32 constant BmItemTableId = _tableId;

library BmItem {
  /** Get the table's schema */
  function getSchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](5);
    _schema[0] = SchemaType.UINT8;
    _schema[1] = SchemaType.INT32;
    _schema[2] = SchemaType.BYTES32;
    _schema[3] = SchemaType.UINT32;
    _schema[4] = SchemaType.UINT32;

    return SchemaLib.encode(_schema);
  }

  function getKeySchema() internal pure returns (Schema) {
    SchemaType[] memory _schema = new SchemaType[](1);
    _schema[0] = SchemaType.BYTES32;

    return SchemaLib.encode(_schema);
  }

  /** Get the table's metadata */
  function getMetadata() internal pure returns (string memory, string[] memory) {
    string[] memory _fieldNames = new string[](5);
    _fieldNames[0] = "itemtype";
    _fieldNames[1] = "buff";
    _fieldNames[2] = "mapId";
    _fieldNames[3] = "x";
    _fieldNames[4] = "y";
    return ("BmItem", _fieldNames);
  }

  /** Register the table's schema */
  function registerSchema() internal {
    StoreSwitch.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Register the table's schema (using the specified store) */
  function registerSchema(IStore _store) internal {
    _store.registerSchema(_tableId, getSchema(), getKeySchema());
  }

  /** Set the table's metadata */
  function setMetadata() internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    StoreSwitch.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Set the table's metadata (using the specified store) */
  function setMetadata(IStore _store) internal {
    (string memory _tableName, string[] memory _fieldNames) = getMetadata();
    _store.setMetadata(_tableId, _tableName, _fieldNames);
  }

  /** Get itemtype */
  function getItemtype(bytes32 key) internal view returns (ItemType itemtype) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 0);
    return ItemType(uint8(Bytes.slice1(_blob, 0)));
  }

  /** Get itemtype (using the specified store) */
  function getItemtype(IStore _store, bytes32 key) internal view returns (ItemType itemtype) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 0);
    return ItemType(uint8(Bytes.slice1(_blob, 0)));
  }

  /** Set itemtype */
  function setItemtype(bytes32 key, ItemType itemtype) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 0, abi.encodePacked(uint8(itemtype)));
  }

  /** Set itemtype (using the specified store) */
  function setItemtype(IStore _store, bytes32 key, ItemType itemtype) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 0, abi.encodePacked(uint8(itemtype)));
  }

  /** Get buff */
  function getBuff(bytes32 key) internal view returns (int32 buff) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 1);
    return (int32(uint32(Bytes.slice4(_blob, 0))));
  }

  /** Get buff (using the specified store) */
  function getBuff(IStore _store, bytes32 key) internal view returns (int32 buff) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 1);
    return (int32(uint32(Bytes.slice4(_blob, 0))));
  }

  /** Set buff */
  function setBuff(bytes32 key, int32 buff) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 1, abi.encodePacked((buff)));
  }

  /** Set buff (using the specified store) */
  function setBuff(IStore _store, bytes32 key, int32 buff) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 1, abi.encodePacked((buff)));
  }

  /** Get mapId */
  function getMapId(bytes32 key) internal view returns (bytes32 mapId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 2);
    return (Bytes.slice32(_blob, 0));
  }

  /** Get mapId (using the specified store) */
  function getMapId(IStore _store, bytes32 key) internal view returns (bytes32 mapId) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 2);
    return (Bytes.slice32(_blob, 0));
  }

  /** Set mapId */
  function setMapId(bytes32 key, bytes32 mapId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 2, abi.encodePacked((mapId)));
  }

  /** Set mapId (using the specified store) */
  function setMapId(IStore _store, bytes32 key, bytes32 mapId) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 2, abi.encodePacked((mapId)));
  }

  /** Get x */
  function getX(bytes32 key) internal view returns (uint32 x) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 3);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get x (using the specified store) */
  function getX(IStore _store, bytes32 key) internal view returns (uint32 x) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 3);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set x */
  function setX(bytes32 key, uint32 x) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 3, abi.encodePacked((x)));
  }

  /** Set x (using the specified store) */
  function setX(IStore _store, bytes32 key, uint32 x) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 3, abi.encodePacked((x)));
  }

  /** Get y */
  function getY(bytes32 key) internal view returns (uint32 y) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getField(_tableId, _keyTuple, 4);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Get y (using the specified store) */
  function getY(IStore _store, bytes32 key) internal view returns (uint32 y) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getField(_tableId, _keyTuple, 4);
    return (uint32(Bytes.slice4(_blob, 0)));
  }

  /** Set y */
  function setY(bytes32 key, uint32 y) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setField(_tableId, _keyTuple, 4, abi.encodePacked((y)));
  }

  /** Set y (using the specified store) */
  function setY(IStore _store, bytes32 key, uint32 y) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setField(_tableId, _keyTuple, 4, abi.encodePacked((y)));
  }

  /** Get the full data */
  function get(bytes32 key) internal view returns (ItemType itemtype, int32 buff, bytes32 mapId, uint32 x, uint32 y) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = StoreSwitch.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Get the full data (using the specified store) */
  function get(
    IStore _store,
    bytes32 key
  ) internal view returns (ItemType itemtype, int32 buff, bytes32 mapId, uint32 x, uint32 y) {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    bytes memory _blob = _store.getRecord(_tableId, _keyTuple, getSchema());
    return decode(_blob);
  }

  /** Set the full data using individual values */
  function set(bytes32 key, ItemType itemtype, int32 buff, bytes32 mapId, uint32 x, uint32 y) internal {
    bytes memory _data = encode(itemtype, buff, mapId, x, y);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.setRecord(_tableId, _keyTuple, _data);
  }

  /** Set the full data using individual values (using the specified store) */
  function set(IStore _store, bytes32 key, ItemType itemtype, int32 buff, bytes32 mapId, uint32 x, uint32 y) internal {
    bytes memory _data = encode(itemtype, buff, mapId, x, y);

    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.setRecord(_tableId, _keyTuple, _data);
  }

  /** Decode the tightly packed blob using this table's schema */
  function decode(
    bytes memory _blob
  ) internal pure returns (ItemType itemtype, int32 buff, bytes32 mapId, uint32 x, uint32 y) {
    itemtype = ItemType(uint8(Bytes.slice1(_blob, 0)));

    buff = (int32(uint32(Bytes.slice4(_blob, 1))));

    mapId = (Bytes.slice32(_blob, 5));

    x = (uint32(Bytes.slice4(_blob, 37)));

    y = (uint32(Bytes.slice4(_blob, 41)));
  }

  /** Tightly pack full data using this table's schema */
  function encode(
    ItemType itemtype,
    int32 buff,
    bytes32 mapId,
    uint32 x,
    uint32 y
  ) internal view returns (bytes memory) {
    return abi.encodePacked(itemtype, buff, mapId, x, y);
  }

  /** Encode keys as a bytes32 array using this table's schema */
  function encodeKeyTuple(bytes32 key) internal pure returns (bytes32[] memory _keyTuple) {
    _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;
  }

  /* Delete all data for given keys */
  function deleteRecord(bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /* Delete all data for given keys (using the specified store) */
  function deleteRecord(IStore _store, bytes32 key) internal {
    bytes32[] memory _keyTuple = new bytes32[](1);
    _keyTuple[0] = key;

    _store.deleteRecord(_tableId, _keyTuple);
  }
}