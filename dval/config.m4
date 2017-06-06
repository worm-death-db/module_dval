dnl $Id$
dnl config.m4 for extension dval

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

PHP_ARG_WITH(dval, for dval support,
Make sure that the comment is aligned:
[  --with-dval             Include dval support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(dval, whether to enable dval support,
dnl Make sure that the comment is aligned:
dnl [  --enable-dval           Enable dval support])

if test "$PHP_DVAL" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-dval -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/dval.h"  # you most likely want to change this
  dnl if test -r $PHP_DVAL/$SEARCH_FOR; then # path given as parameter
  dnl   DVAL_DIR=$PHP_DVAL
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for dval files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       DVAL_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$DVAL_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the dval distribution])
  dnl fi

  dnl # --with-dval -> add include path
  dnl PHP_ADD_INCLUDE($DVAL_DIR/include)

  dnl # --with-dval -> check for lib and symbol presence
  dnl LIBNAME=dval # you may want to change this
  dnl LIBSYMBOL=dval # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $DVAL_DIR/$PHP_LIBDIR, DVAL_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_DVALLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong dval lib version or lib not found])
  dnl ],[
  dnl   -L$DVAL_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(DVAL_SHARED_LIBADD)

  PHP_NEW_EXTENSION(dval, dval.c, $ext_shared)
fi
