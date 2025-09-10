-- Modified by Dr. Picsell Dois to fix TFR's ultra-fast map zooming when camera is at max height
-- Tested on TFR v0.1, for other versions, you can modify lines with "P.D." comment

	NDefines.NGraphics.COUNTRY_FLAG_TEX_MAX_SIZE = 2048
	NDefines.NGraphics.COUNTRY_FLAG_SMALL_TEX_MAX_SIZE = 512
	NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_WIDTH = 10
	NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_HEIGHT = 16384
	NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_WIDTH = 41
	NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_HEIGHT = 16384

	-- P.D.: Restore HoI's default camera defines
	--NDefines.NGraphics.CAMERA_OUTSIDE_MAP_DISTANCE_TOP = 100.0
	--NDefines.NGraphics.CAMERA_OUTSIDE_MAP_DISTANCE_BOTTOM = 100.0
	--NDefines.NGraphics.CAMERA_ZOOM_KEY_SCALE = 0.01
	--NDefines.NGraphics.CAMERA_ZOOM_SPEED_DISTANCE_MULT = 50.0
	-- EndOf: P.D.: Restore HoI's default camera defines
	
	NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_X = 2058.0
	NDefines.NFrontend.CAMERA_MIN_HEIGHT = 30.0