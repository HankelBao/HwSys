# HwSys
>> Homework System for Suzhou Foreign Language School

## Intention
Clean the mass in the class QQ group
Help students put all the Homework together, give them required information
In order to reduce the effort needed for learning how to use the software, the interface is based on QQ (like a robot)

## Language and Parts descriptions
python with qqbot && sqlite3
sqlite3

## Files of the Program
| File Name | Function |
| --------- | -------- |
| main.py   | all the logic stuff |
| database.py | all about recording and abstracting |

## Structure of Database

### Names
Name of the database : hw.db
Names of tables: record, rel_teacher


### Table: record
Main Record of the homework history
| Word      | Utilities                                  |
|-----------|--------------------------------------------|
| Id        | Main Key, for linear search, Unique        |
| TeacherId | id of the teaher, index from another table |
| SendTime  | time of the message                        |
| DueTime   | time from the message content              |
| Content   | orginal content of the message             |

### Table: rel_teacher
Relationship Table: who the teachers are
| Word     | Utilities                      |
|----------|--------------------------------|
| Id       | Main Key, Unique               |
| QQNumber | qq number of the teacher, text |
| Name     | name of the teacher, text      |


## Let's choose the editor, atom or vscode
