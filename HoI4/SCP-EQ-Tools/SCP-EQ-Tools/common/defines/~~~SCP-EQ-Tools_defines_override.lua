-- Defines override
-- Please DO NOT remove the "~" character in file name, this ensures that this file will be loaded at last, overriding previous definitions

-- Opinion value modifier
-- TRUST_VALUE controls the minimal and maximal value of a single opinion modifier
-- OPINION_VALUE controls the minimal and maximal value of the sum of all opinion modifiers
-- Setting them to values over 10000 may cause overflow 
NDefines.NDiplomacy.MAX_TRUST_VALUE = 5245
NDefines.NDiplomacy.MIN_TRUST_VALUE = -5245
-- Faster volunteer sending
NDefines.NDiplomacy.VOLUNTEERS_TRANSFER_SPEED = 1
-- Focus boosting
NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 245245
NDefines.NFocus.FOCUS_PROGRESS_PEACE = 5
NDefines.NFocus.FOCUS_PROGRESS_WAR = 5