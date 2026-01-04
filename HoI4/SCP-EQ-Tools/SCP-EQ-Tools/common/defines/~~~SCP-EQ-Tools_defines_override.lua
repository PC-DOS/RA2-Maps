-- Defines override
-- Please DO NOT remove the "~" character in file name, this ensures that this file will be loaded at last, overriding previous definitions

-- Opinion value modifier
-- MIN_TRUST_VALUE and MAX_TRUST_VALUE controls the minimal and maximal value of a single opinion modifier
-- MIN_OPINION_VALUE and MAX_OPINION_VALUE controls the minimal and maximal value of the sum of all opinion modifiers
-- Setting them to values over 10000 may cause overflow 
NDefines.NDiplomacy.MAX_TRUST_VALUE = 5245
NDefines.NDiplomacy.MIN_TRUST_VALUE = -5245
-- Faster volunteer sending
NDefines.NDiplomacy.VOLUNTEERS_TRANSFER_SPEED = 1
-- Faster lend-lease delivering
NDefines.NProduction.LEND_LEASE_DELIVERY_TOTAL_DAYS = 1
-- Focus boosting
-- Since you can complete current focus in decisions without waiting, some of the following cheats will be disabled
NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 245
--NDefines.NFocus.FOCUS_PROGRESS_PEACE = 5
--NDefines.NFocus.FOCUS_PROGRESS_WAR = 5
-- Reduce some diplomacy operations' tension
NDefines.NDiplomacy.TENSION_VOLUNTEER_FORCE_DIVISION = 0