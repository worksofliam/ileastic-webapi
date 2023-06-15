ILEASTIC_LIB=ILEASTIC

get_headers:
	mkdir -p qrpgleref
	system "CPYTOSTMF FROMMBR('/QSYS.LIB/$(ILEASTIC_LIB).LIB/QRPGLEREF.FILE/ILEASTIC.MBR') TOSTMF('./qrpgleref/ileastic.rpgleinc') STMFOPT(*REPLACE) STMFCCSID(1208)"
	system "CPYTOSTMF FROMMBR('/QSYS.LIB/$(ILEASTIC_LIB).LIB/QRPGLEREF.FILE/JSONPARSER.MBR') TOSTMF('./qrpgleref/jsonparser.rpgleinc') STMFOPT(*REPLACE) STMFCCSID(1208)"