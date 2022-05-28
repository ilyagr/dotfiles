#!/bin/sh
# May want to run this with --dry-run
exec patch --verbose -bN $@ /usr/share/vis/plugins/filetype.lua $0

--- null	2022-05-27 23:09:09.810607770 -0700
+++ null	2022-05-27 23:08:51.501608687 -0700
@@ -330,7 +330,7 @@
 	},
 	python = {
 		ext = { "%.sc$", "%.py$", "%.pyw$" },
-		mime = { "text/x-python" },
+		mime = { "text/x-python", "text/x-script.python" },
 	},
 	reason = {
 		ext = { "%.re$" },
