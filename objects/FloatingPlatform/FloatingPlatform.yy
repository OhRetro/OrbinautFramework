{
  "spriteId": {
    "name": "spr_obj_platform_template",
    "path": "sprites/spr_obj_platform_template/spr_obj_platform_template.yy",
  },
  "solid": false,
  "visible": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "UnloadNone",
    "path": "objects/UnloadNone/UnloadNone.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
    {"isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMEvent",},
  ],
  "properties": [
    {"varType":1,"value":"32","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"XRadius","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"11","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"YRadius","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"0","rangeEnabled":true,"rangeMin":0.0,"rangeMax":360.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"StartAngle","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"Speed","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":1,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"Distance","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":4,"value":"spr_obj_platform_template","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"Sprite","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":6,"value":"\"None\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"None\"",
        "\"Horizontal\"",
        "\"Vertical\"",
        "\"Diagonal\"",
        "\"Circular\"",
      ],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"MovementType","tags":[],"resourceType":"GMObjectProperty",},
    {"varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],"resourceVersion":"1.0","name":"DoFall","tags":[],"resourceType":"GMObjectProperty",},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Floating Platform",
    "path": "folders/Game Objects/Floating Platform.yy",
  },
  "resourceVersion": "1.0",
  "name": "FloatingPlatform",
  "tags": [],
  "resourceType": "GMObject",
}