-- Defines override
-- Please DO NOT remove the "~" character in file name, this ensures that this file will be loaded at last, overriding previous definitions

-- Opinion value modifier
-- MIN_TRUST_VALUE and MAX_TRUST_VALUE controls the minimal and maximal value of a single opinion modifier
-- MIN_OPINION_VALUE and MAX_OPINION_VALUE controls the minimal and maximal value of the sum of all opinion modifiers
-- Setting them to values over 10000 may cause overflow 
NDefines.NDiplomacy.MAX_TRUST_VALUE = 5245
NDefines.NDiplomacy.MIN_TRUST_VALUE = -5245
-- Faster wargoal justification
NDefines.NDiplomacy.MIN_WARGOAL_JUSTIFY_COST = 0.2 -- 1 cost == 5 days
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
-- More political power and others
NDefines.NCountry.POLITICAL_POWER_UPPER_CAP = 24500
NDefines.NMilitary.MAX_ARMY_EXPERIENCE = 24500
NDefines.NMilitary.MAX_NAVY_EXPERIENCE = 24500
NDefines.NMilitary.MAX_AIR_EXPERIENCE = 24500

-- Camera options
NDefines.NFrontend.CAMERA_MIN_HEIGHT = 25
NDefines.NGraphics.DRAW_COUNTRY_NAMES_CUTOFF = 125
NDefines.NGraphics.CAMERA_ZOOM_SPEED = 25
NDefines.NGraphics.UNITS_ICONS_DISTANCE_CUTOFF = 450.0
NDefines.NGraphics.CAMERA_ZOOM_KEY_SCALE = 0.02
NDefines.NGraphics.CAMERA_ZOOM_SPEED_DISTANCE_MULT = 5.0

-- Hide black country borders (TNO new map style)
NDefines.NGraphics.GRADIENT_BORDERS_THICKNESS_COUNTRY_LOW = 1.0 --5.0 -- thickness in pixels
NDefines.NGraphics.GRADIENT_BORDERS_COUNTRY_CENTER_THICKNESS = 1.0 --2.0 -- The center gradient is linear 1/255 per pixel for this many pixels
NDefines.NGraphics.GRADIENT_BORDERS_THICKNESS_COUNTRY_HIGH = 1.0 --25.0