--- ltmain.sh.orig	Tue Oct 30 15:25:31 2001
+++ ltmain.sh	Tue Oct 30 15:40:27 2001
@@ -1027,15 +1027,30 @@
 	    # These systems don't actually have a C or math library (as such)
 	    continue
 	    ;;
+
 	  *-*-mingw* | *-*-os2*)
 	    # These systems don't actually have a C library (as such)
 	    test "X$arg" = "X-lc" && continue
 	    ;;
+	  *-*-openbsd*)
+	    # Do not include libc due to us having libc/libc_r.
+	    continue
+	    ;;
+          esac
+        elif test "$arg" = "-lc_r"; then
+	  case "$host" in
+	  *-*-openbsd*)
+        # Do not include libc_r directly, use -pthread flag.
+	     continue
+	     ;;
 	  esac
 	fi
 	deplibs="$deplibs $arg"
 	continue
 	;;
+	-?thread)
+	  deplibs="$deplibs $arg"
+	  ;;
 
       -module)
 	module=yes
@@ -2408,6 +2423,9 @@
 	  *-*-netbsd*)
 	    # Don't link with libc until the a.out ld.so is fixed.
 	    ;;
+	  *-*-openbsd*)
+	    # Do not include libc due to us having libc/libc_r
+	    ;;
 	  *)
 	    # Add libc to deplibs on all other systems if necessary.
 	    if test $build_libtool_need_lc = "yes"; then
@@ -4412,40 +4430,6 @@
     # Exit here if they wanted silent mode.
     test "$show" = ":" && exit 0
 
-    echo "----------------------------------------------------------------------"
-    echo "Libraries have been installed in:"
-    for libdir in $libdirs; do
-      echo "   $libdir"
-    done
-    echo
-    echo "If you ever happen to want to link against installed libraries"
-    echo "in a given directory, LIBDIR, you must either use libtool, and"
-    echo "specify the full pathname of the library, or use the \`-LLIBDIR'"
-    echo "flag during linking and do at least one of the following:"
-    if test -n "$shlibpath_var"; then
-      echo "   - add LIBDIR to the \`$shlibpath_var' environment variable"
-      echo "     during execution"
-    fi
-    if test -n "$runpath_var"; then
-      echo "   - add LIBDIR to the \`$runpath_var' environment variable"
-      echo "     during linking"
-    fi
-    if test -n "$hardcode_libdir_flag_spec"; then
-      libdir=LIBDIR
-      eval flag=\"$hardcode_libdir_flag_spec\"
-
-      echo "   - use the \`$flag' linker flag"
-    fi
-    if test -n "$admincmds"; then
-      echo "   - have your system administrator run these commands:$admincmds"
-    fi
-    if test -f /etc/ld.so.conf; then
-      echo "   - have your system administrator add LIBDIR to \`/etc/ld.so.conf'"
-    fi
-    echo
-    echo "See any operating system documentation about shared libraries for"
-    echo "more information, such as the ld(1) and ld.so(8) manual pages."
-    echo "----------------------------------------------------------------------"
     exit 0
     ;;
 
