ALTER_TRANS ANOMEN // file name
BEGIN 6 10 17 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  TRIGGER ~Global("AnomenMatch","GLOBAL",1)~
END

ALTER_TRANS ANOMEN // file name
BEGIN 20 END // state number (can be more than one)
BEGIN 1 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  TRIGGER ~Global("AnomenMatch","GLOBAL",1)~
END

ALTER_TRANS ANOMEN // file name
BEGIN 6 10 17 20 END // state number (can be more than one)
BEGIN 2 END // transition number (can be more than one)
BEGIN // list of changes, see below for flags
  TRIGGER ~!Global("AnomenMatch","GLOBAL",1)~
END