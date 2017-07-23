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
| Name of Files | Function                                                 | Depth from Main (start from 0 which represents just the main) |
|---------------|----------------------------------------------------------|---------------------------------------------------------------|
| main.py       | maintain the lifetime                                    | 0                                                             |
| handler.py    | answer the content from person and the official qq group | 1                                                             |
| database.py   | record and provide the data from teachers                | 2                                                             |
| interface.py  | drivers for qq, for sending and answering qq messages    | 2                                                             |

## Structure of Database

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
| Word            | Utilities                      |
|-----------------|--------------------------------|
| Id              | Main Key, Unique               |
| QQNumber        | qq number of the teacher, text |
| Name of Teacher | name of the teacher, text      |

