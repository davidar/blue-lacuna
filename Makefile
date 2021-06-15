all:
	bin/ni-5Z71 -rules Extensions -package BL-Release4.inform -extension=ulx
	bin/inform6-6M62 -wE2SDG '$$SYMBOLS_CHUNK_SIZE=10000' BL-Release4.inform/Build/auto.inf BL-Release4.inform/Build/output.ulx
