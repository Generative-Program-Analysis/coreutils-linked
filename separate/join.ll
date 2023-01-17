; ModuleID = './join.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.line = type { %struct.linebuffer, i64, i64, %struct.field* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.field = type { i8*, i64 }
%struct.outlist = type { i32, i64, %struct.outlist* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.seq = type { i64, i64, %struct.line** }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [150 x i8] c"For each pair of input lines with identical join fields, write a line to\0Astandard output.  The default join field is the first, delimited by blanks.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1
@.str.4 = private unnamed_addr constant [208 x i8] c"\0A  -a FILENUM        also print unpairable lines from file FILENUM, where\0A                      FILENUM is 1 or 2, corresponding to FILE1 or FILE2\0A  -e EMPTY          replace missing input fields with EMPTY\0A\00", align 1
@.str.5 = private unnamed_addr constant [253 x i8] c"  -i, --ignore-case  ignore differences in case when comparing fields\0A  -j FIELD          equivalent to '-1 FIELD -2 FIELD'\0A  -o FORMAT         obey FORMAT while constructing output line\0A  -t CHAR           use CHAR as input and output field separator\0A\00", align 1
@.str.6 = private unnamed_addr constant [491 x i8] c"  -v FILENUM        like -a FILENUM, but suppress joined output lines\0A  -1 FIELD          join on this FIELD of file 1\0A  -2 FIELD          join on this FIELD of file 2\0A  --check-order     check that the input is correctly sorted, even\0A                      if all input lines are pairable\0A  --nocheck-order   do not check that the input is correctly sorted\0A  --header          treat the first line in each file as field headers,\0A                      print them without trying to pair them\0A\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [818 x i8] c"\0AUnless -t CHAR is given, leading blanks separate fields and are ignored,\0Aelse fields are separated by CHAR.  Any FIELD is a field number counted\0Afrom 1.  FORMAT is one or more comma or blank separated specifications,\0Aeach being 'FILENUM.FIELD' or '0'.  Default FORMAT outputs the join field,\0Athe remaining fields from FILE1, the remaining fields from FILE2, all\0Aseparated by CHAR.  If FORMAT is the keyword 'auto', then the first\0Aline of each file determines the number of fields output for each line.\0A\0AImportant: FILE1 and FILE2 must be sorted on the join fields.\0AE.g., use \22sort -k 1b,1\22 if 'join' has no options,\0Aor use \22join -t ''\22 if 'sort' has no options.\0ANote, comparisons honor the rules specified by 'LC_COLLATE'.\0AIf the input is not sorted and some lines cannot be joined, a\0Awarning message will be given.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"join\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.41 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@hard_LC_COLLATE = internal global i8 0, align 1
@print_pairables = internal global i8 0, align 1
@seen_unpairable = internal global i8 0, align 1
@issued_disorder_warning = internal global [2 x i8] zeroinitializer, align 1
@check_input_order = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"-a:e:i1:2:j:o:t:v:z\00", align 1
@longopts = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external dso_local global i8*, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"invalid field number: %s\00", align 1
@print_unpairables_1 = internal global i8 0, align 1
@print_unpairables_2 = internal global i8 0, align 1
@empty_filler = internal global i8* null, align 8
@.str.15 = private unnamed_addr constant [44 x i8] c"conflicting empty-field replacement strings\00", align 1
@ignore_case = internal global i8 0, align 1
@join_field_1 = internal global i64 -1, align 8
@join_field_2 = internal global i64 -1, align 8
@optind = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@autoformat = internal global i8 0, align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"multi-character tab %s\00", align 1
@tab = internal global i32 -1, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"incompatible tabs\00", align 1
@eolchar = internal global i8 10, align 1
@g_names = internal global [2 x i8*] zeroinitializer, align 16
@join_header_lines = internal global i8 0, align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"Mike Haertel\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"both files cannot be standard input\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"input is not in sorted order\00", align 1
@autocount_1 = internal global i64 0, align 8
@autocount_2 = internal global i64 0, align 8
@uni_blank = internal global %struct.line zeroinitializer, align 8
@prevline = internal global [2 x %struct.line*] zeroinitializer, align 16
@spareline = internal global [2 x %struct.line*] zeroinitializer, align 16
@.str.60 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@line_no = internal global [2 x i64] zeroinitializer, align 16
@.str.61 = private unnamed_addr constant [28 x i8] c"%s:%lu: is not sorted: %.*s\00", align 1
@outlist_head = internal global %struct.outlist zeroinitializer, align 8
@.str.59 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"file == 0 || file == 1 || file == 2\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"../src/join.c\00", align 1
@__PRETTY_FUNCTION__.add_field = private unnamed_addr constant [28 x i8] c"void add_field(int, size_t)\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"file != 0 || field == 0\00", align 1
@outlist_end = internal global %struct.outlist* @outlist_head, align 8
@.str.54 = private unnamed_addr constant [28 x i8] c"invalid field specifier: %s\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"invalid file number in field spec: %s\00", align 1
@.str.52 = private unnamed_addr constant [34 x i8] c"incompatible join fields %lu, %lu\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), align 8
@.str.62 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal global i8* null, align 8
@ignore_EPIPE = internal global i8 0, align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.67 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.76 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.77 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local global i8* null, align 8
@.str.86 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.87 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.88 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external dso_local global i8*, align 8
@program_invocation_name = external dso_local global i8*, align 8
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.90, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.92, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.94, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.98, i32 0, i32 0), i8* null], align 16
@.str.89 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.90 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.91 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.92 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.93 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.94 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.95 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.96 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.97 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.98 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.10.99 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.100 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.101 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.102 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.14.103 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.104 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.16.105 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.17.106 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.107 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.120 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.121 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.138 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.139 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.140 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.141 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.142 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.143 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.144 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.163 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.164 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.168 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.169 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@.str.172 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.173 = private unnamed_addr constant [17 x i8] c"../lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.176 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.177 = private unnamed_addr constant [17 x i8] c"../lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal global i32 0, align 4
@.str.196 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.197 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @program_name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %2)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** @program_name, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([491 x i8], [491 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([818 x i8], [818 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* %12)
  call void @emit_ancillary_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %13 = load i32, i32* %status.addr, align 4
  call void @exit(i32 %13) #12
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @emit_ancillary_info(i8* %program) #2 {
entry:
  %program.addr = alloca i8*, align 8
  %infomap = alloca [7 x %struct.infomap], align 16
  %node = alloca i8*, align 8
  %map_prog = alloca %struct.infomap*, align 8
  %lc_messages = alloca i8*, align 8
  store i8* %program, i8** %program.addr, align 8
  %0 = bitcast [7 x %struct.infomap]* %infomap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false)
  %1 = load i8*, i8** %program.addr, align 8
  store i8* %1, i8** %node, align 8
  %arraydecay = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %infomap, i64 0, i64 0
  store %struct.infomap* %arraydecay, %struct.infomap** %map_prog, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.infomap*, %struct.infomap** %map_prog, align 8
  %program1 = getelementptr inbounds %struct.infomap, %struct.infomap* %2, i32 0, i32 0
  %3 = load i8*, i8** %program1, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %program.addr, align 8
  %5 = load %struct.infomap*, %struct.infomap** %map_prog, align 8
  %program2 = getelementptr inbounds %struct.infomap, %struct.infomap* %5, i32 0, i32 0
  %6 = load i8*, i8** %program2, align 8
  %call = call i32 @strcmp(i8* %4, i8* %6) #13
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.infomap*, %struct.infomap** %map_prog, align 8
  %incdec.ptr = getelementptr inbounds %struct.infomap, %struct.infomap* %8, i32 1
  store %struct.infomap* %incdec.ptr, %struct.infomap** %map_prog, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.infomap*, %struct.infomap** %map_prog, align 8
  %node3 = getelementptr inbounds %struct.infomap, %struct.infomap* %9, i32 0, i32 1
  %10 = load i8*, i8** %node3, align 8
  %tobool4 = icmp ne i8* %10, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load %struct.infomap*, %struct.infomap** %map_prog, align 8
  %node5 = getelementptr inbounds %struct.infomap, %struct.infomap* %11, i32 0, i32 1
  %12 = load i8*, i8** %node5, align 8
  store i8* %12, i8** %node, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0))
  %call7 = call i8* @setlocale(i32 5, i8* null) #11
  store i8* %call7, i8** %lc_messages, align 8
  %13 = load i8*, i8** %lc_messages, align 8
  %tobool8 = icmp ne i8* %13, null
  br i1 %tobool8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %14 = load i8*, i8** %lc_messages, align 8
  %call9 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i64 3) #13
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* %15)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true, %if.end
  %16 = load i8*, i8** %program.addr, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* %16)
  %17 = load i8*, i8** %node, align 8
  %18 = load i8*, i8** %node, align 8
  %19 = load i8*, i8** %program.addr, align 8
  %cmp15 = icmp eq i8* %18, %19
  %20 = zext i1 %cmp15 to i64
  %cond = select i1 %cmp15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.43, i64 0, i64 0), i8* %17, i8* %cond)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32, i8*) #6

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #2 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optc_status = alloca i32, align 4
  %prev_optc_status = alloca i32, align 4
  %operand_status = alloca [2 x i32], align 4
  %joption_count = alloca [2 x i32], align 4
  %fp1 = alloca %struct._IO_FILE*, align 8
  %fp2 = alloca %struct._IO_FILE*, align 8
  %optc = alloca i32, align 4
  %nfiles = alloca i32, align 4
  %i = alloca i32, align 4
  %val = alloca i64, align 8
  %is_j2 = alloca i8, align 1
  %newtab = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %prev_optc_status, align 4
  %0 = bitcast [2 x i32]* %joption_count to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 8, i1 false)
  store i32 0, i32* %nfiles, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  call void @set_program_name(i8* %2)
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11
  %call1 = call zeroext i1 @hard_locale(i32 3)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* @hard_LC_COLLATE, align 1
  %call2 = call i32 @atexit(void ()* @close_stdout) #11
  %call3 = call i32 @atexit(void ()* @free_spareline) #11
  store i8 1, i8* @print_pairables, align 1
  store i8 0, i8* @seen_unpairable, align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  store i32 0, i32* @check_input_order, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %3 = load i32, i32* %argc.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %call4 = call i32 @getopt_long(i32 %3, i8** %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11
  store i32 %call4, i32* %optc, align 4
  %cmp = icmp ne i32 %call4, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %optc_status, align 4
  %5 = load i32, i32* %optc, align 4
  switch i32 %5, label %sw.default [
    i32 118, label %sw.bb
    i32 97, label %sw.bb5
    i32 101, label %sw.bb14
    i32 105, label %sw.bb20
    i32 49, label %sw.bb21
    i32 50, label %sw.bb23
    i32 106, label %sw.bb25
    i32 111, label %sw.bb55
    i32 116, label %sw.bb62
    i32 122, label %sw.bb88
    i32 129, label %sw.bb89
    i32 128, label %sw.bb90
    i32 1, label %sw.bb91
    i32 130, label %sw.bb93
    i32 -130, label %sw.bb94
    i32 -131, label %sw.bb95
  ]

sw.bb:                                            ; preds = %while.body
  store i8 0, i8* @print_pairables, align 1
  br label %sw.bb5

sw.bb5:                                           ; preds = %while.body, %sw.bb
  %6 = load i8*, i8** @optarg, align 8
  %call6 = call i32 @xstrtoul(i8* %6, i8** null, i32 10, i64* %val, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb5
  %7 = load i64, i64* %val, align 8
  %cmp8 = icmp ne i64 %7, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load i64, i64* %val, align 8
  %cmp9 = icmp ne i64 %8, 2
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %sw.bb5
  %9 = load i8*, i8** @optarg, align 8
  %call10 = call i8* @quote(i8* %9)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %call10)
  unreachable

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i64, i64* %val, align 8
  %cmp11 = icmp eq i64 %10, 1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  store i8 1, i8* @print_unpairables_1, align 1
  br label %if.end13

if.else:                                          ; preds = %if.end
  store i8 1, i8* @print_unpairables_2, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then12
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  %11 = load i8*, i8** @empty_filler, align 8
  %tobool = icmp ne i8* %11, null
  br i1 %tobool, label %land.lhs.true15, label %if.end19

land.lhs.true15:                                  ; preds = %sw.bb14
  %12 = load i8*, i8** @empty_filler, align 8
  %13 = load i8*, i8** @optarg, align 8
  %call16 = call i32 @strcmp(i8* %12, i8* %13) #13
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %land.lhs.true15
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  unreachable

if.end19:                                         ; preds = %land.lhs.true15, %sw.bb14
  %14 = load i8*, i8** @optarg, align 8
  store i8* %14, i8** @empty_filler, align 8
  br label %sw.epilog

sw.bb20:                                          ; preds = %while.body
  store i8 1, i8* @ignore_case, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %while.body
  %15 = load i8*, i8** @optarg, align 8
  %call22 = call i64 @string_to_join_field(i8* %15)
  call void @set_join_field(i64* @join_field_1, i64 %call22)
  br label %sw.epilog

sw.bb23:                                          ; preds = %while.body
  %16 = load i8*, i8** @optarg, align 8
  %call24 = call i64 @string_to_join_field(i8* %16)
  call void @set_join_field(i64* @join_field_2, i64 %call24)
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  %17 = load i8*, i8** @optarg, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx26, align 1
  %conv = sext i8 %18 to i32
  %cmp27 = icmp eq i32 %conv, 49
  br i1 %cmp27, label %land.lhs.true34, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %sw.bb25
  %19 = load i8*, i8** @optarg, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %19, i64 0
  %20 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %20 to i32
  %cmp32 = icmp eq i32 %conv31, 50
  br i1 %cmp32, label %land.lhs.true34, label %if.else52

land.lhs.true34:                                  ; preds = %lor.lhs.false29, %sw.bb25
  %21 = load i8*, i8** @optarg, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8, i8* %arrayidx35, align 1
  %tobool36 = icmp ne i8 %22, 0
  br i1 %tobool36, label %if.else52, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %23 = load i8*, i8** @optarg, align 8
  %24 = load i8**, i8*** %argv.addr, align 8
  %25 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx38 = getelementptr inbounds i8*, i8** %24, i64 %idxprom
  %26 = load i8*, i8** %arrayidx38, align 8
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 2
  %cmp39 = icmp eq i8* %23, %add.ptr
  br i1 %cmp39, label %if.then41, label %if.else52

if.then41:                                        ; preds = %land.lhs.true37
  %27 = load i8*, i8** @optarg, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %28 to i32
  %cmp44 = icmp eq i32 %conv43, 50
  %frombool46 = zext i1 %cmp44 to i8
  store i8 %frombool46, i8* %is_j2, align 1
  %29 = load i8, i8* %is_j2, align 1
  %tobool47 = trunc i8 %29 to i1
  %idxprom48 = zext i1 %tobool47 to i64
  %arrayidx49 = getelementptr inbounds [2 x i32], [2 x i32]* %joption_count, i64 0, i64 %idxprom48
  %30 = load i32, i32* %arrayidx49, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %arrayidx49, align 4
  %31 = load i8, i8* %is_j2, align 1
  %tobool50 = trunc i8 %31 to i1
  %conv51 = zext i1 %tobool50 to i32
  %add = add nsw i32 1, %conv51
  store i32 %add, i32* %optc_status, align 4
  br label %if.end54

if.else52:                                        ; preds = %land.lhs.true37, %land.lhs.true34, %lor.lhs.false29
  %32 = load i8*, i8** @optarg, align 8
  %call53 = call i64 @string_to_join_field(i8* %32)
  call void @set_join_field(i64* @join_field_1, i64 %call53)
  %33 = load i64, i64* @join_field_1, align 8
  call void @set_join_field(i64* @join_field_2, i64 %33)
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then41
  br label %sw.epilog

sw.bb55:                                          ; preds = %while.body
  %34 = load i8*, i8** @optarg, align 8
  %call56 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #13
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then59, label %if.else60

if.then59:                                        ; preds = %sw.bb55
  store i8 1, i8* @autoformat, align 1
  br label %if.end61

if.else60:                                        ; preds = %sw.bb55
  %35 = load i8*, i8** @optarg, align 8
  call void @add_field_list(i8* %35)
  store i32 3, i32* %optc_status, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  br label %sw.epilog

sw.bb62:                                          ; preds = %while.body
  %36 = load i8*, i8** @optarg, align 8
  %arrayidx63 = getelementptr inbounds i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx63, align 1
  store i8 %37, i8* %newtab, align 1
  %38 = load i8, i8* %newtab, align 1
  %tobool64 = icmp ne i8 %38, 0
  br i1 %tobool64, label %if.else66, label %if.then65

if.then65:                                        ; preds = %sw.bb62
  store i8 10, i8* %newtab, align 1
  br label %if.end78

if.else66:                                        ; preds = %sw.bb62
  %39 = load i8*, i8** @optarg, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx67, align 1
  %tobool68 = icmp ne i8 %40, 0
  br i1 %tobool68, label %if.then69, label %if.end77

if.then69:                                        ; preds = %if.else66
  %41 = load i8*, i8** @optarg, align 8
  %call70 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #13
  %cmp71 = icmp eq i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.else74

if.then73:                                        ; preds = %if.then69
  store i8 0, i8* %newtab, align 1
  br label %if.end76

if.else74:                                        ; preds = %if.then69
  %42 = load i8*, i8** @optarg, align 8
  %call75 = call i8* @quote(i8* %42)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %call75)
  unreachable

if.end76:                                         ; preds = %if.then73
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.else66
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.then65
  %43 = load i32, i32* @tab, align 4
  %cmp79 = icmp sle i32 0, %43
  br i1 %cmp79, label %land.lhs.true81, label %if.end86

land.lhs.true81:                                  ; preds = %if.end78
  %44 = load i32, i32* @tab, align 4
  %45 = load i8, i8* %newtab, align 1
  %conv82 = zext i8 %45 to i32
  %cmp83 = icmp ne i32 %44, %conv82
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %land.lhs.true81
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  unreachable

if.end86:                                         ; preds = %land.lhs.true81, %if.end78
  %46 = load i8, i8* %newtab, align 1
  %conv87 = zext i8 %46 to i32
  store i32 %conv87, i32* @tab, align 4
  br label %sw.epilog

sw.bb88:                                          ; preds = %while.body
  store i8 0, i8* @eolchar, align 1
  br label %sw.epilog

sw.bb89:                                          ; preds = %while.body
  store i32 2, i32* @check_input_order, align 4
  br label %sw.epilog

sw.bb90:                                          ; preds = %while.body
  store i32 1, i32* @check_input_order, align 4
  br label %sw.epilog

sw.bb91:                                          ; preds = %while.body
  %47 = load i8*, i8** @optarg, align 8
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %operand_status, i64 0, i64 0
  %arraydecay92 = getelementptr inbounds [2 x i32], [2 x i32]* %joption_count, i64 0, i64 0
  call void @add_file_name(i8* %47, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), i32* %arraydecay, i32* %arraydecay92, i32* %nfiles, i32* %prev_optc_status, i32* %optc_status)
  br label %sw.epilog

sw.bb93:                                          ; preds = %while.body
  store i8 1, i8* @join_header_lines, align 1
  br label %sw.epilog

sw.bb94:                                          ; preds = %while.body
  call void @usage(i32 0) #14
  unreachable

sw.bb95:                                          ; preds = %while.body
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8* null)
  call void @exit(i32 0) #12
  unreachable

sw.default:                                       ; preds = %while.body
  call void @usage(i32 1) #14
  unreachable

sw.epilog:                                        ; preds = %sw.bb93, %sw.bb91, %sw.bb90, %sw.bb89, %sw.bb88, %if.end86, %if.end61, %if.end54, %sw.bb23, %sw.bb21, %sw.bb20, %if.end19, %if.end13
  %50 = load i32, i32* %optc_status, align 4
  store i32 %50, i32* %prev_optc_status, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %prev_optc_status, align 4
  br label %while.cond96

while.cond96:                                     ; preds = %while.body99, %while.end
  %51 = load i32, i32* @optind, align 4
  %52 = load i32, i32* %argc.addr, align 4
  %cmp97 = icmp slt i32 %51, %52
  br i1 %cmp97, label %while.body99, label %while.end105

while.body99:                                     ; preds = %while.cond96
  %53 = load i8**, i8*** %argv.addr, align 8
  %54 = load i32, i32* @optind, align 4
  %inc100 = add nsw i32 %54, 1
  store i32 %inc100, i32* @optind, align 4
  %idxprom101 = sext i32 %54 to i64
  %arrayidx102 = getelementptr inbounds i8*, i8** %53, i64 %idxprom101
  %55 = load i8*, i8** %arrayidx102, align 8
  %arraydecay103 = getelementptr inbounds [2 x i32], [2 x i32]* %operand_status, i64 0, i64 0
  %arraydecay104 = getelementptr inbounds [2 x i32], [2 x i32]* %joption_count, i64 0, i64 0
  call void @add_file_name(i8* %55, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), i32* %arraydecay103, i32* %arraydecay104, i32* %nfiles, i32* %prev_optc_status, i32* %optc_status)
  br label %while.cond96

while.end105:                                     ; preds = %while.cond96
  %56 = load i32, i32* %nfiles, align 4
  %cmp106 = icmp ne i32 %56, 2
  br i1 %cmp106, label %if.then108, label %if.end118

if.then108:                                       ; preds = %while.end105
  %57 = load i32, i32* %nfiles, align 4
  %cmp109 = icmp eq i32 %57, 0
  br i1 %cmp109, label %if.then111, label %if.else112

if.then111:                                       ; preds = %if.then108
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  br label %if.end117

if.else112:                                       ; preds = %if.then108
  %58 = load i8**, i8*** %argv.addr, align 8
  %59 = load i32, i32* %argc.addr, align 4
  %sub113 = sub nsw i32 %59, 1
  %idxprom114 = sext i32 %sub113 to i64
  %arrayidx115 = getelementptr inbounds i8*, i8** %58, i64 %idxprom114
  %60 = load i8*, i8** %arrayidx115, align 8
  %call116 = call i8* @quote(i8* %60)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i8* %call116)
  br label %if.end117

if.end117:                                        ; preds = %if.else112, %if.then111
  call void @usage(i32 1) #14
  unreachable

if.end118:                                        ; preds = %while.end105
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end118
  %61 = load i32, i32* %i, align 4
  %cmp119 = icmp slt i32 %61, 2
  br i1 %cmp119, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %62 to i64
  %arrayidx122 = getelementptr inbounds [2 x i32], [2 x i32]* %joption_count, i64 0, i64 %idxprom121
  %63 = load i32, i32* %arrayidx122, align 4
  %cmp123 = icmp ne i32 %63, 0
  br i1 %cmp123, label %if.then125, label %if.end128

if.then125:                                       ; preds = %for.body
  %64 = load i32, i32* %i, align 4
  %conv126 = sext i32 %64 to i64
  call void @set_join_field(i64* @join_field_1, i64 %conv126)
  %65 = load i32, i32* %i, align 4
  %conv127 = sext i32 %65 to i64
  call void @set_join_field(i64* @join_field_2, i64 %conv127)
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end128
  %66 = load i32, i32* %i, align 4
  %inc129 = add nsw i32 %66, 1
  store i32 %inc129, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load i64, i64* @join_field_1, align 8
  %cmp130 = icmp eq i64 %67, -1
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %for.end
  store i64 0, i64* @join_field_1, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %for.end
  %68 = load i64, i64* @join_field_2, align 8
  %cmp134 = icmp eq i64 %68, -1
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end133
  store i64 0, i64* @join_field_2, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.end133
  %69 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16
  %call138 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #13
  %cmp139 = icmp eq i32 %call138, 0
  br i1 %cmp139, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end137
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end137
  %71 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16
  %call141 = call %struct._IO_FILE* @fopen_safer(i8* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %70, %cond.true ], [ %call141, %cond.false ]
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %fp1, align 8
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %tobool142 = icmp ne %struct._IO_FILE* %72, null
  br i1 %tobool142, label %if.end146, label %if.then143

if.then143:                                       ; preds = %cond.end
  %call144 = call i32* @__errno_location() #15
  %73 = load i32, i32* %call144, align 4
  %74 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16
  %call145 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %74)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %call145)
  unreachable

if.end146:                                        ; preds = %cond.end
  %75 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8
  %call147 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #13
  %cmp148 = icmp eq i32 %call147, 0
  br i1 %cmp148, label %cond.true150, label %cond.false151

cond.true150:                                     ; preds = %if.end146
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %cond.end153

cond.false151:                                    ; preds = %if.end146
  %77 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8
  %call152 = call %struct._IO_FILE* @fopen_safer(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false151, %cond.true150
  %cond154 = phi %struct._IO_FILE* [ %76, %cond.true150 ], [ %call152, %cond.false151 ]
  store %struct._IO_FILE* %cond154, %struct._IO_FILE** %fp2, align 8
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %tobool155 = icmp ne %struct._IO_FILE* %78, null
  br i1 %tobool155, label %if.end159, label %if.then156

if.then156:                                       ; preds = %cond.end153
  %call157 = call i32* @__errno_location() #15
  %79 = load i32, i32* %call157, align 4
  %80 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8
  %call158 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %80)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %call158)
  unreachable

if.end159:                                        ; preds = %cond.end153
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %cmp160 = icmp eq %struct._IO_FILE* %81, %82
  br i1 %cmp160, label %if.then162, label %if.end164

if.then162:                                       ; preds = %if.end159
  %call163 = call i32* @__errno_location() #15
  %83 = load i32, i32* %call163, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.27, i64 0, i64 0))
  unreachable

if.end164:                                        ; preds = %if.end159
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  call void @system_join(%struct._IO_FILE* %84, %struct._IO_FILE* %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1, align 8
  %call165 = call i32 @rpl_fclose(%struct._IO_FILE* %86)
  %cmp166 = icmp ne i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %if.end164
  %call169 = call i32* @__errno_location() #15
  %87 = load i32, i32* %call169, align 4
  %88 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 0), align 16
  %call170 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %88)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %call170)
  unreachable

if.end171:                                        ; preds = %if.end164
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %call172 = call i32 @rpl_fclose(%struct._IO_FILE* %89)
  %cmp173 = icmp ne i32 %call172, 0
  br i1 %cmp173, label %if.then175, label %if.end178

if.then175:                                       ; preds = %if.end171
  %call176 = call i32* @__errno_location() #15
  %90 = load i32, i32* %call176, align 4
  %91 = load i8*, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @g_names, i64 0, i64 1), align 8
  %call177 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %91)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i8* %call177)
  unreachable

if.end178:                                        ; preds = %if.end171
  %92 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  %tobool179 = trunc i8 %92 to i1
  br i1 %tobool179, label %if.then184, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %if.end178
  %93 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %tobool182 = trunc i8 %93 to i1
  br i1 %tobool182, label %if.then184, label %if.else185

if.then184:                                       ; preds = %lor.lhs.false181, %if.end178
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  unreachable

if.else185:                                       ; preds = %lor.lhs.false181
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) #6

; Function Attrs: noinline nounwind uwtable
define internal void @free_spareline() #2 {
entry:
  %i = alloca i64, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 %1
  %2 = load %struct.line*, %struct.line** %arrayidx, align 8
  %tobool = icmp ne %struct.line* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 %3
  %4 = load %struct.line*, %struct.line** %arrayidx1, align 8
  call void @freeline(%struct.line* %4)
  %5 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 %5
  %6 = load %struct.line*, %struct.line** %arrayidx2, align 8
  %7 = bitcast %struct.line* %6 to i8*
  call void @free(i8* %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #6

declare dso_local void @error(i32, i32, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @string_to_join_field(i8* %str) #2 {
entry:
  %str.addr = alloca i8*, align 8
  %result = alloca i64, align 8
  %val = alloca i64, align 8
  %s_err = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 @xstrtoumax(i8* %0, i8** null, i32 10, i64* %val, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0))
  store i32 %call, i32* %s_err, align 4
  %1 = load i32, i32* %s_err, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %s_err, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %3 = load i64, i64* %val, align 8
  %cmp2 = icmp ult i64 -1, %3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  store i64 -1, i64* %val, align 8
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %4 = load i32, i32* %s_err, align 4
  %cmp3 = icmp ne i32 %4, 0
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.else
  %5 = load i64, i64* %val, align 8
  %cmp5 = icmp eq i64 %5, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %lor.lhs.false4, %if.else
  %6 = load i8*, i8** %str.addr, align 8
  %call7 = call i8* @quote(i8* %6)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %call7)
  unreachable

if.end:                                           ; preds = %lor.lhs.false4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %7 = load i64, i64* %val, align 8
  %sub = sub i64 %7, 1
  store i64 %sub, i64* %result, align 8
  %8 = load i64, i64* %result, align 8
  ret i64 %8
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_join_field(i64* %var, i64 %val) #2 {
entry:
  %var.addr = alloca i64*, align 8
  %val.addr = alloca i64, align 8
  %var1 = alloca i64, align 8
  %val1 = alloca i64, align 8
  store i64* %var, i64** %var.addr, align 8
  store i64 %val, i64* %val.addr, align 8
  %0 = load i64*, i64** %var.addr, align 8
  %1 = load i64, i64* %0, align 8
  %cmp = icmp ne i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i64*, i64** %var.addr, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* %val.addr, align 8
  %cmp1 = icmp ne i64 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64*, i64** %var.addr, align 8
  %6 = load i64, i64* %5, align 8
  %add = add i64 %6, 1
  store i64 %add, i64* %var1, align 8
  %7 = load i64, i64* %val.addr, align 8
  %add2 = add i64 %7, 1
  store i64 %add2, i64* %val1, align 8
  %8 = load i64, i64* %var1, align 8
  %9 = load i64, i64* %val1, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.52, i64 0, i64 0), i64 %8, i64 %9)
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load i64, i64* %val.addr, align 8
  %11 = load i64*, i64** %var.addr, align 8
  store i64 %10, i64* %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_field_list(i8* %str) #2 {
entry:
  %str.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %file_index = alloca i32, align 4
  %field_index = alloca i64, align 8
  %spec_item = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i8*, i8** %p, align 8
  store i8* %1, i8** %spec_item, align 8
  %2 = load i8*, i8** %p, align 8
  %call = call i8* @strpbrk(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #13
  store i8* %call, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 0, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %5 = load i8*, i8** %spec_item, align 8
  call void @decode_field_spec(i8* %5, i32* %file_index, i64* %field_index)
  %6 = load i32, i32* %file_index, align 4
  %7 = load i64, i64* %field_index, align 8
  call void @add_field(i32 %6, i64 %7)
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i8*, i8** %p, align 8
  %tobool1 = icmp ne i8* %8, null
  br i1 %tobool1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_file_name(i8* %name, i8** %names, i32* %operand_status, i32* %joption_count, i32* %nfiles, i32* %prev_optc_status, i32* %optc_status) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %names.addr = alloca i8**, align 8
  %operand_status.addr = alloca i32*, align 8
  %joption_count.addr = alloca i32*, align 8
  %nfiles.addr = alloca i32*, align 8
  %prev_optc_status.addr = alloca i32*, align 8
  %optc_status.addr = alloca i32*, align 8
  %n = alloca i32, align 4
  %op0 = alloca i8, align 1
  %arg = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8** %names, i8*** %names.addr, align 8
  store i32* %operand_status, i32** %operand_status.addr, align 8
  store i32* %joption_count, i32** %joption_count.addr, align 8
  store i32* %nfiles, i32** %nfiles.addr, align 8
  store i32* %prev_optc_status, i32** %prev_optc_status.addr, align 8
  store i32* %optc_status, i32** %optc_status.addr, align 8
  %0 = load i32*, i32** %nfiles.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %operand_status.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %4, 0
  %frombool = zext i1 %cmp1 to i8
  store i8 %frombool, i8* %op0, align 1
  %5 = load i8**, i8*** %names.addr, align 8
  %6 = load i8, i8* %op0, align 1
  %tobool = trunc i8 %6 to i1
  %idxprom = zext i1 %tobool to i64
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx2, align 8
  store i8* %7, i8** %arg, align 8
  %8 = load i32*, i32** %operand_status.addr, align 8
  %9 = load i8, i8* %op0, align 1
  %tobool3 = trunc i8 %9 to i1
  %idxprom4 = zext i1 %tobool3 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 %idxprom4
  %10 = load i32, i32* %arrayidx5, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb9
    i32 3, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.then
  %11 = load i8*, i8** %name.addr, align 8
  %call = call i8* @quotearg_style(i32 4, i8* %11)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i8* %call)
  call void @usage(i32 1) #14
  unreachable

sw.bb6:                                           ; preds = %if.then
  %12 = load i32*, i32** %joption_count.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 0
  %13 = load i32, i32* %arrayidx7, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %arrayidx7, align 4
  %14 = load i8*, i8** %arg, align 8
  %call8 = call i64 @string_to_join_field(i8* %14)
  call void @set_join_field(i64* @join_field_1, i64 %call8)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  %15 = load i32*, i32** %joption_count.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx10, align 4
  %dec11 = add nsw i32 %16, -1
  store i32 %dec11, i32* %arrayidx10, align 4
  %17 = load i8*, i8** %arg, align 8
  %call12 = call i64 @string_to_join_field(i8* %17)
  call void @set_join_field(i64* @join_field_2, i64 %call12)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  %18 = load i8*, i8** %arg, align 8
  call void @add_field_list(i8* %18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb13, %sw.bb9, %sw.bb6
  %19 = load i8, i8* %op0, align 1
  %tobool14 = trunc i8 %19 to i1
  br i1 %tobool14, label %if.end, label %if.then15

if.then15:                                        ; preds = %sw.epilog
  %20 = load i32*, i32** %operand_status.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %20, i64 1
  %21 = load i32, i32* %arrayidx16, align 4
  %22 = load i32*, i32** %operand_status.addr, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %arrayidx17, align 4
  %23 = load i8**, i8*** %names.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %23, i64 1
  %24 = load i8*, i8** %arrayidx18, align 8
  %25 = load i8**, i8*** %names.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %24, i8** %arrayidx19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then15, %sw.epilog
  store i32 1, i32* %n, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end, %entry
  %26 = load i32*, i32** %prev_optc_status.addr, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %operand_status.addr, align 8
  %29 = load i32, i32* %n, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %28, i64 %idxprom21
  store i32 %27, i32* %arrayidx22, align 4
  %30 = load i8*, i8** %name.addr, align 8
  %31 = load i8**, i8*** %names.addr, align 8
  %32 = load i32, i32* %n, align 4
  %idxprom23 = sext i32 %32 to i64
  %arrayidx24 = getelementptr inbounds i8*, i8** %31, i64 %idxprom23
  store i8* %30, i8** %arrayidx24, align 8
  %33 = load i32, i32* %n, align 4
  %add = add nsw i32 %33, 1
  %34 = load i32*, i32** %nfiles.addr, align 8
  store i32 %add, i32* %34, align 4
  %35 = load i32*, i32** %prev_optc_status.addr, align 8
  %36 = load i32, i32* %35, align 4
  %cmp25 = icmp eq i32 %36, 3
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end20
  %37 = load i32*, i32** %optc_status.addr, align 8
  store i32 3, i32* %37, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end20
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

; Function Attrs: noinline nounwind uwtable
define internal void @system_join(%struct._IO_FILE* %fp1, %struct._IO_FILE* %fp2) #2 {
entry:
  %fp1.addr = alloca %struct._IO_FILE*, align 8
  %fp2.addr = alloca %struct._IO_FILE*, align 8
  %seq1 = alloca %struct.seq, align 8
  %seq2 = alloca %struct.seq, align 8
  %diff = alloca i32, align 4
  %eof1 = alloca i8, align 1
  %eof2 = alloca i8, align 1
  %hline1 = alloca %struct.line*, align 8
  %hline2 = alloca %struct.line*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %tmp = alloca %struct.line*, align 8
  %tmp141 = alloca %struct.line*, align 8
  %line = alloca %struct.line*, align 8
  %checktail = alloca i8, align 1
  store %struct._IO_FILE* %fp1, %struct._IO_FILE** %fp1.addr, align 8
  store %struct._IO_FILE* %fp2, %struct._IO_FILE** %fp2.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1.addr, align 8
  call void @fadvise(%struct._IO_FILE* %0, i32 2)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2.addr, align 8
  call void @fadvise(%struct._IO_FILE* %1, i32 2)
  call void @initseq(%struct.seq* %seq1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1.addr, align 8
  %call = call zeroext i1 @getseq(%struct._IO_FILE* %2, %struct.seq* %seq1, i32 1)
  call void @initseq(%struct.seq* %seq2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2.addr, align 8
  %call1 = call zeroext i1 @getseq(%struct._IO_FILE* %3, %struct.seq* %seq2, i32 2)
  %4 = load i8, i8* @autoformat, align 1
  %tobool = trunc i8 %4 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %count = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %5 = load i64, i64* %count, align 8
  %tobool2 = icmp ne i64 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %lines = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %6 = load %struct.line**, %struct.line*** %lines, align 8
  %arrayidx = getelementptr inbounds %struct.line*, %struct.line** %6, i64 0
  %7 = load %struct.line*, %struct.line** %arrayidx, align 8
  %nfields = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 1
  %8 = load i64, i64* %nfields, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* @autocount_1, align 8
  %count3 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %9 = load i64, i64* %count3, align 8
  %tobool4 = icmp ne i64 %9, 0
  br i1 %tobool4, label %cond.true5, label %cond.false9

cond.true5:                                       ; preds = %cond.end
  %lines6 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %10 = load %struct.line**, %struct.line*** %lines6, align 8
  %arrayidx7 = getelementptr inbounds %struct.line*, %struct.line** %10, i64 0
  %11 = load %struct.line*, %struct.line** %arrayidx7, align 8
  %nfields8 = getelementptr inbounds %struct.line, %struct.line* %11, i32 0, i32 1
  %12 = load i64, i64* %nfields8, align 8
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.true5
  %cond11 = phi i64 [ %12, %cond.true5 ], [ 0, %cond.false9 ]
  store i64 %cond11, i64* @autocount_2, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end10, %entry
  %13 = load i8, i8* @join_header_lines, align 1
  %tobool12 = trunc i8 %13 to i1
  br i1 %tobool12, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %if.end
  %count13 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %14 = load i64, i64* %count13, align 8
  %tobool14 = icmp ne i64 %14, 0
  br i1 %tobool14, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %count15 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %15 = load i64, i64* %count15, align 8
  %tobool16 = icmp ne i64 %15, 0
  br i1 %tobool16, label %if.then17, label %if.end44

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %count18 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %16 = load i64, i64* %count18, align 8
  %tobool19 = icmp ne i64 %16, 0
  br i1 %tobool19, label %cond.true20, label %cond.false23

cond.true20:                                      ; preds = %if.then17
  %lines21 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %17 = load %struct.line**, %struct.line*** %lines21, align 8
  %arrayidx22 = getelementptr inbounds %struct.line*, %struct.line** %17, i64 0
  %18 = load %struct.line*, %struct.line** %arrayidx22, align 8
  br label %cond.end24

cond.false23:                                     ; preds = %if.then17
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.true20
  %cond25 = phi %struct.line* [ %18, %cond.true20 ], [ @uni_blank, %cond.false23 ]
  store %struct.line* %cond25, %struct.line** %hline1, align 8
  %count26 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %19 = load i64, i64* %count26, align 8
  %tobool27 = icmp ne i64 %19, 0
  br i1 %tobool27, label %cond.true28, label %cond.false31

cond.true28:                                      ; preds = %cond.end24
  %lines29 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %20 = load %struct.line**, %struct.line*** %lines29, align 8
  %arrayidx30 = getelementptr inbounds %struct.line*, %struct.line** %20, i64 0
  %21 = load %struct.line*, %struct.line** %arrayidx30, align 8
  br label %cond.end32

cond.false31:                                     ; preds = %cond.end24
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %cond.true28
  %cond33 = phi %struct.line* [ %21, %cond.true28 ], [ @uni_blank, %cond.false31 ]
  store %struct.line* %cond33, %struct.line** %hline2, align 8
  %22 = load %struct.line*, %struct.line** %hline1, align 8
  %23 = load %struct.line*, %struct.line** %hline2, align 8
  call void @prjoin(%struct.line* %22, %struct.line* %23)
  store %struct.line* null, %struct.line** getelementptr inbounds ([2 x %struct.line*], [2 x %struct.line*]* @prevline, i64 0, i64 0), align 16
  store %struct.line* null, %struct.line** getelementptr inbounds ([2 x %struct.line*], [2 x %struct.line*]* @prevline, i64 0, i64 1), align 8
  %count34 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %24 = load i64, i64* %count34, align 8
  %tobool35 = icmp ne i64 %24, 0
  br i1 %tobool35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %cond.end32
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1.addr, align 8
  %call37 = call zeroext i1 @advance_seq(%struct._IO_FILE* %25, %struct.seq* %seq1, i1 zeroext true, i32 1)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %cond.end32
  %count39 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %26 = load i64, i64* %count39, align 8
  %tobool40 = icmp ne i64 %26, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2.addr, align 8
  %call42 = call zeroext i1 @advance_seq(%struct._IO_FILE* %27, %struct.seq* %seq2, i1 zeroext true, i32 2)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %lor.lhs.false, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end159, %if.end68, %if.end59, %if.end44
  %count45 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %28 = load i64, i64* %count45, align 8
  %tobool46 = icmp ne i64 %28, 0
  br i1 %tobool46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %count47 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %29 = load i64, i64* %count47, align 8
  %tobool48 = icmp ne i64 %29, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %30 = phi i1 [ false, %while.cond ], [ %tobool48, %land.rhs ]
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %lines49 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %31 = load %struct.line**, %struct.line*** %lines49, align 8
  %arrayidx50 = getelementptr inbounds %struct.line*, %struct.line** %31, i64 0
  %32 = load %struct.line*, %struct.line** %arrayidx50, align 8
  %lines51 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %33 = load %struct.line**, %struct.line*** %lines51, align 8
  %arrayidx52 = getelementptr inbounds %struct.line*, %struct.line** %33, i64 0
  %34 = load %struct.line*, %struct.line** %arrayidx52, align 8
  %35 = load i64, i64* @join_field_1, align 8
  %36 = load i64, i64* @join_field_2, align 8
  %call53 = call i32 @keycmp(%struct.line* %32, %struct.line* %34, i64 %35, i64 %36)
  store i32 %call53, i32* %diff, align 4
  %37 = load i32, i32* %diff, align 4
  %cmp = icmp slt i32 %37, 0
  br i1 %cmp, label %if.then54, label %if.end61

if.then54:                                        ; preds = %while.body
  %38 = load i8, i8* @print_unpairables_1, align 1
  %tobool55 = trunc i8 %38 to i1
  br i1 %tobool55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.then54
  %lines57 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %39 = load %struct.line**, %struct.line*** %lines57, align 8
  %arrayidx58 = getelementptr inbounds %struct.line*, %struct.line** %39, i64 0
  %40 = load %struct.line*, %struct.line** %arrayidx58, align 8
  call void @prjoin(%struct.line* %40, %struct.line* @uni_blank)
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.then54
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1.addr, align 8
  %call60 = call zeroext i1 @advance_seq(%struct._IO_FILE* %41, %struct.seq* %seq1, i1 zeroext true, i32 1)
  store i8 1, i8* @seen_unpairable, align 1
  br label %while.cond

if.end61:                                         ; preds = %while.body
  %42 = load i32, i32* %diff, align 4
  %cmp62 = icmp sgt i32 %42, 0
  br i1 %cmp62, label %if.then63, label %if.end70

if.then63:                                        ; preds = %if.end61
  %43 = load i8, i8* @print_unpairables_2, align 1
  %tobool64 = trunc i8 %43 to i1
  br i1 %tobool64, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.then63
  %lines66 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %44 = load %struct.line**, %struct.line*** %lines66, align 8
  %arrayidx67 = getelementptr inbounds %struct.line*, %struct.line** %44, i64 0
  %45 = load %struct.line*, %struct.line** %arrayidx67, align 8
  call void @prjoin(%struct.line* @uni_blank, %struct.line* %45)
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.then63
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2.addr, align 8
  %call69 = call zeroext i1 @advance_seq(%struct._IO_FILE* %46, %struct.seq* %seq2, i1 zeroext true, i32 2)
  store i8 1, i8* @seen_unpairable, align 1
  br label %while.cond

if.end70:                                         ; preds = %if.end61
  store i8 0, i8* %eof1, align 1
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end70
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1.addr, align 8
  %call71 = call zeroext i1 @advance_seq(%struct._IO_FILE* %47, %struct.seq* %seq1, i1 zeroext false, i32 1)
  br i1 %call71, label %if.end74, label %if.then72

if.then72:                                        ; preds = %do.body
  store i8 1, i8* %eof1, align 1
  %count73 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %48 = load i64, i64* %count73, align 8
  %inc = add i64 %48, 1
  store i64 %inc, i64* %count73, align 8
  br label %do.end

if.end74:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end74
  %lines75 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %49 = load %struct.line**, %struct.line*** %lines75, align 8
  %count76 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %50 = load i64, i64* %count76, align 8
  %sub = sub i64 %50, 1
  %arrayidx77 = getelementptr inbounds %struct.line*, %struct.line** %49, i64 %sub
  %51 = load %struct.line*, %struct.line** %arrayidx77, align 8
  %lines78 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %52 = load %struct.line**, %struct.line*** %lines78, align 8
  %arrayidx79 = getelementptr inbounds %struct.line*, %struct.line** %52, i64 0
  %53 = load %struct.line*, %struct.line** %arrayidx79, align 8
  %54 = load i64, i64* @join_field_1, align 8
  %55 = load i64, i64* @join_field_2, align 8
  %call80 = call i32 @keycmp(%struct.line* %51, %struct.line* %53, i64 %54, i64 %55)
  %tobool81 = icmp ne i32 %call80, 0
  %lnot = xor i1 %tobool81, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then72
  store i8 0, i8* %eof2, align 1
  br label %do.body82

do.body82:                                        ; preds = %do.cond88, %do.end
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2.addr, align 8
  %call83 = call zeroext i1 @advance_seq(%struct._IO_FILE* %56, %struct.seq* %seq2, i1 zeroext false, i32 2)
  br i1 %call83, label %if.end87, label %if.then84

if.then84:                                        ; preds = %do.body82
  store i8 1, i8* %eof2, align 1
  %count85 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %57 = load i64, i64* %count85, align 8
  %inc86 = add i64 %57, 1
  store i64 %inc86, i64* %count85, align 8
  br label %do.end98

if.end87:                                         ; preds = %do.body82
  br label %do.cond88

do.cond88:                                        ; preds = %if.end87
  %lines89 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %58 = load %struct.line**, %struct.line*** %lines89, align 8
  %arrayidx90 = getelementptr inbounds %struct.line*, %struct.line** %58, i64 0
  %59 = load %struct.line*, %struct.line** %arrayidx90, align 8
  %lines91 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %60 = load %struct.line**, %struct.line*** %lines91, align 8
  %count92 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %61 = load i64, i64* %count92, align 8
  %sub93 = sub i64 %61, 1
  %arrayidx94 = getelementptr inbounds %struct.line*, %struct.line** %60, i64 %sub93
  %62 = load %struct.line*, %struct.line** %arrayidx94, align 8
  %63 = load i64, i64* @join_field_1, align 8
  %64 = load i64, i64* @join_field_2, align 8
  %call95 = call i32 @keycmp(%struct.line* %59, %struct.line* %62, i64 %63, i64 %64)
  %tobool96 = icmp ne i32 %call95, 0
  %lnot97 = xor i1 %tobool96, true
  br i1 %lnot97, label %do.body82, label %do.end98

do.end98:                                         ; preds = %do.cond88, %if.then84
  %65 = load i8, i8* @print_pairables, align 1
  %tobool99 = trunc i8 %65 to i1
  br i1 %tobool99, label %if.then100, label %if.end117

if.then100:                                       ; preds = %do.end98
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc114, %if.then100
  %66 = load i64, i64* %i, align 8
  %count101 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %67 = load i64, i64* %count101, align 8
  %sub102 = sub i64 %67, 1
  %cmp103 = icmp ult i64 %66, %sub102
  br i1 %cmp103, label %for.body, label %for.end116

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc, %for.body
  %68 = load i64, i64* %j, align 8
  %count105 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %69 = load i64, i64* %count105, align 8
  %sub106 = sub i64 %69, 1
  %cmp107 = icmp ult i64 %68, %sub106
  br i1 %cmp107, label %for.body108, label %for.end

for.body108:                                      ; preds = %for.cond104
  %lines109 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %70 = load %struct.line**, %struct.line*** %lines109, align 8
  %71 = load i64, i64* %i, align 8
  %arrayidx110 = getelementptr inbounds %struct.line*, %struct.line** %70, i64 %71
  %72 = load %struct.line*, %struct.line** %arrayidx110, align 8
  %lines111 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %73 = load %struct.line**, %struct.line*** %lines111, align 8
  %74 = load i64, i64* %j, align 8
  %arrayidx112 = getelementptr inbounds %struct.line*, %struct.line** %73, i64 %74
  %75 = load %struct.line*, %struct.line** %arrayidx112, align 8
  call void @prjoin(%struct.line* %72, %struct.line* %75)
  br label %for.inc

for.inc:                                          ; preds = %for.body108
  %76 = load i64, i64* %j, align 8
  %inc113 = add i64 %76, 1
  store i64 %inc113, i64* %j, align 8
  br label %for.cond104

for.end:                                          ; preds = %for.cond104
  br label %for.inc114

for.inc114:                                       ; preds = %for.end
  %77 = load i64, i64* %i, align 8
  %inc115 = add i64 %77, 1
  store i64 %inc115, i64* %i, align 8
  br label %for.cond

for.end116:                                       ; preds = %for.cond
  br label %if.end117

if.end117:                                        ; preds = %for.end116, %do.end98
  %78 = load i8, i8* %eof1, align 1
  %tobool118 = trunc i8 %78 to i1
  br i1 %tobool118, label %if.else, label %if.then119

if.then119:                                       ; preds = %if.end117
  br label %do.body120

do.body120:                                       ; preds = %if.then119
  %lines121 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %79 = load %struct.line**, %struct.line*** %lines121, align 8
  %arrayidx122 = getelementptr inbounds %struct.line*, %struct.line** %79, i64 0
  %80 = load %struct.line*, %struct.line** %arrayidx122, align 8
  store %struct.line* %80, %struct.line** %tmp, align 8
  %lines123 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %81 = load %struct.line**, %struct.line*** %lines123, align 8
  %count124 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %82 = load i64, i64* %count124, align 8
  %sub125 = sub i64 %82, 1
  %arrayidx126 = getelementptr inbounds %struct.line*, %struct.line** %81, i64 %sub125
  %83 = load %struct.line*, %struct.line** %arrayidx126, align 8
  %lines127 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %84 = load %struct.line**, %struct.line*** %lines127, align 8
  %arrayidx128 = getelementptr inbounds %struct.line*, %struct.line** %84, i64 0
  store %struct.line* %83, %struct.line** %arrayidx128, align 8
  %85 = load %struct.line*, %struct.line** %tmp, align 8
  %lines129 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %86 = load %struct.line**, %struct.line*** %lines129, align 8
  %count130 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %87 = load i64, i64* %count130, align 8
  %sub131 = sub i64 %87, 1
  %arrayidx132 = getelementptr inbounds %struct.line*, %struct.line** %86, i64 %sub131
  store %struct.line* %85, %struct.line** %arrayidx132, align 8
  br label %do.end134

do.end134:                                        ; preds = %do.body120
  %count135 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  store i64 1, i64* %count135, align 8
  br label %if.end137

if.else:                                          ; preds = %if.end117
  %count136 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  store i64 0, i64* %count136, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.else, %do.end134
  %88 = load i8, i8* %eof2, align 1
  %tobool138 = trunc i8 %88 to i1
  br i1 %tobool138, label %if.else157, label %if.then139

if.then139:                                       ; preds = %if.end137
  br label %do.body140

do.body140:                                       ; preds = %if.then139
  %lines142 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %89 = load %struct.line**, %struct.line*** %lines142, align 8
  %arrayidx143 = getelementptr inbounds %struct.line*, %struct.line** %89, i64 0
  %90 = load %struct.line*, %struct.line** %arrayidx143, align 8
  store %struct.line* %90, %struct.line** %tmp141, align 8
  %lines144 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %91 = load %struct.line**, %struct.line*** %lines144, align 8
  %count145 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %92 = load i64, i64* %count145, align 8
  %sub146 = sub i64 %92, 1
  %arrayidx147 = getelementptr inbounds %struct.line*, %struct.line** %91, i64 %sub146
  %93 = load %struct.line*, %struct.line** %arrayidx147, align 8
  %lines148 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %94 = load %struct.line**, %struct.line*** %lines148, align 8
  %arrayidx149 = getelementptr inbounds %struct.line*, %struct.line** %94, i64 0
  store %struct.line* %93, %struct.line** %arrayidx149, align 8
  %95 = load %struct.line*, %struct.line** %tmp141, align 8
  %lines150 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %96 = load %struct.line**, %struct.line*** %lines150, align 8
  %count151 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %97 = load i64, i64* %count151, align 8
  %sub152 = sub i64 %97, 1
  %arrayidx153 = getelementptr inbounds %struct.line*, %struct.line** %96, i64 %sub152
  store %struct.line* %95, %struct.line** %arrayidx153, align 8
  br label %do.end155

do.end155:                                        ; preds = %do.body140
  %count156 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  store i64 1, i64* %count156, align 8
  br label %if.end159

if.else157:                                       ; preds = %if.end137
  %count158 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  store i64 0, i64* %count158, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.else157, %do.end155
  br label %while.cond

while.end:                                        ; preds = %land.end
  store %struct.line* null, %struct.line** %line, align 8
  store i8 0, i8* %checktail, align 1
  %98 = load i32, i32* @check_input_order, align 4
  %cmp160 = icmp ne i32 %98, 2
  br i1 %cmp160, label %land.lhs.true161, label %if.end166

land.lhs.true161:                                 ; preds = %while.end
  %99 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  %tobool162 = trunc i8 %99 to i1
  br i1 %tobool162, label %land.lhs.true163, label %if.then165

land.lhs.true163:                                 ; preds = %land.lhs.true161
  %100 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %tobool164 = trunc i8 %100 to i1
  br i1 %tobool164, label %if.end166, label %if.then165

if.then165:                                       ; preds = %land.lhs.true163, %land.lhs.true161
  store i8 1, i8* %checktail, align 1
  br label %if.end166

if.end166:                                        ; preds = %if.then165, %land.lhs.true163, %while.end
  %101 = load i8, i8* @print_unpairables_1, align 1
  %tobool167 = trunc i8 %101 to i1
  br i1 %tobool167, label %land.lhs.true170, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %if.end166
  %102 = load i8, i8* %checktail, align 1
  %tobool169 = trunc i8 %102 to i1
  br i1 %tobool169, label %land.lhs.true170, label %if.end195

land.lhs.true170:                                 ; preds = %lor.lhs.false168, %if.end166
  %count171 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %103 = load i64, i64* %count171, align 8
  %tobool172 = icmp ne i64 %103, 0
  br i1 %tobool172, label %if.then173, label %if.end195

if.then173:                                       ; preds = %land.lhs.true170
  %104 = load i8, i8* @print_unpairables_1, align 1
  %tobool174 = trunc i8 %104 to i1
  br i1 %tobool174, label %if.then175, label %if.end178

if.then175:                                       ; preds = %if.then173
  %lines176 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 2
  %105 = load %struct.line**, %struct.line*** %lines176, align 8
  %arrayidx177 = getelementptr inbounds %struct.line*, %struct.line** %105, i64 0
  %106 = load %struct.line*, %struct.line** %arrayidx177, align 8
  call void @prjoin(%struct.line* %106, %struct.line* @uni_blank)
  br label %if.end178

if.end178:                                        ; preds = %if.then175, %if.then173
  %count179 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %107 = load i64, i64* %count179, align 8
  %tobool180 = icmp ne i64 %107, 0
  br i1 %tobool180, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end178
  store i8 1, i8* @seen_unpairable, align 1
  br label %if.end182

if.end182:                                        ; preds = %if.then181, %if.end178
  br label %while.cond183

while.cond183:                                    ; preds = %if.end193, %if.end182
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %fp1.addr, align 8
  %call184 = call zeroext i1 @get_line(%struct._IO_FILE* %108, %struct.line** %line, i32 1)
  br i1 %call184, label %while.body185, label %while.end194

while.body185:                                    ; preds = %while.cond183
  %109 = load i8, i8* @print_unpairables_1, align 1
  %tobool186 = trunc i8 %109 to i1
  br i1 %tobool186, label %if.then187, label %if.end188

if.then187:                                       ; preds = %while.body185
  %110 = load %struct.line*, %struct.line** %line, align 8
  call void @prjoin(%struct.line* %110, %struct.line* @uni_blank)
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %while.body185
  %111 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  %tobool189 = trunc i8 %111 to i1
  br i1 %tobool189, label %land.lhs.true190, label %if.end193

land.lhs.true190:                                 ; preds = %if.end188
  %112 = load i8, i8* @print_unpairables_1, align 1
  %tobool191 = trunc i8 %112 to i1
  br i1 %tobool191, label %if.end193, label %if.then192

if.then192:                                       ; preds = %land.lhs.true190
  br label %while.end194

if.end193:                                        ; preds = %land.lhs.true190, %if.end188
  br label %while.cond183

while.end194:                                     ; preds = %if.then192, %while.cond183
  br label %if.end195

if.end195:                                        ; preds = %while.end194, %land.lhs.true170, %lor.lhs.false168
  %113 = load i8, i8* @print_unpairables_2, align 1
  %tobool196 = trunc i8 %113 to i1
  br i1 %tobool196, label %land.lhs.true199, label %lor.lhs.false197

lor.lhs.false197:                                 ; preds = %if.end195
  %114 = load i8, i8* %checktail, align 1
  %tobool198 = trunc i8 %114 to i1
  br i1 %tobool198, label %land.lhs.true199, label %if.end224

land.lhs.true199:                                 ; preds = %lor.lhs.false197, %if.end195
  %count200 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 0
  %115 = load i64, i64* %count200, align 8
  %tobool201 = icmp ne i64 %115, 0
  br i1 %tobool201, label %if.then202, label %if.end224

if.then202:                                       ; preds = %land.lhs.true199
  %116 = load i8, i8* @print_unpairables_2, align 1
  %tobool203 = trunc i8 %116 to i1
  br i1 %tobool203, label %if.then204, label %if.end207

if.then204:                                       ; preds = %if.then202
  %lines205 = getelementptr inbounds %struct.seq, %struct.seq* %seq2, i32 0, i32 2
  %117 = load %struct.line**, %struct.line*** %lines205, align 8
  %arrayidx206 = getelementptr inbounds %struct.line*, %struct.line** %117, i64 0
  %118 = load %struct.line*, %struct.line** %arrayidx206, align 8
  call void @prjoin(%struct.line* @uni_blank, %struct.line* %118)
  br label %if.end207

if.end207:                                        ; preds = %if.then204, %if.then202
  %count208 = getelementptr inbounds %struct.seq, %struct.seq* %seq1, i32 0, i32 0
  %119 = load i64, i64* %count208, align 8
  %tobool209 = icmp ne i64 %119, 0
  br i1 %tobool209, label %if.then210, label %if.end211

if.then210:                                       ; preds = %if.end207
  store i8 1, i8* @seen_unpairable, align 1
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %if.end207
  br label %while.cond212

while.cond212:                                    ; preds = %if.end222, %if.end211
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2.addr, align 8
  %call213 = call zeroext i1 @get_line(%struct._IO_FILE* %120, %struct.line** %line, i32 2)
  br i1 %call213, label %while.body214, label %while.end223

while.body214:                                    ; preds = %while.cond212
  %121 = load i8, i8* @print_unpairables_2, align 1
  %tobool215 = trunc i8 %121 to i1
  br i1 %tobool215, label %if.then216, label %if.end217

if.then216:                                       ; preds = %while.body214
  %122 = load %struct.line*, %struct.line** %line, align 8
  call void @prjoin(%struct.line* @uni_blank, %struct.line* %122)
  br label %if.end217

if.end217:                                        ; preds = %if.then216, %while.body214
  %123 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %tobool218 = trunc i8 %123 to i1
  br i1 %tobool218, label %land.lhs.true219, label %if.end222

land.lhs.true219:                                 ; preds = %if.end217
  %124 = load i8, i8* @print_unpairables_2, align 1
  %tobool220 = trunc i8 %124 to i1
  br i1 %tobool220, label %if.end222, label %if.then221

if.then221:                                       ; preds = %land.lhs.true219
  br label %while.end223

if.end222:                                        ; preds = %land.lhs.true219, %if.end217
  br label %while.cond212

while.end223:                                     ; preds = %if.then221, %while.cond212
  br label %if.end224

if.end224:                                        ; preds = %while.end223, %land.lhs.true199, %lor.lhs.false197
  %125 = load %struct.line*, %struct.line** %line, align 8
  call void @freeline(%struct.line* %125)
  %126 = load %struct.line*, %struct.line** %line, align 8
  %127 = bitcast %struct.line* %126 to i8*
  call void @free(i8* %127) #11
  call void @delseq(%struct.seq* %seq1)
  call void @delseq(%struct.seq* %seq2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @initseq(%struct.seq* %seq) #2 {
entry:
  %seq.addr = alloca %struct.seq*, align 8
  store %struct.seq* %seq, %struct.seq** %seq.addr, align 8
  %0 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %count = getelementptr inbounds %struct.seq, %struct.seq* %0, i32 0, i32 0
  store i64 0, i64* %count, align 8
  %1 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %alloc = getelementptr inbounds %struct.seq, %struct.seq* %1, i32 0, i32 1
  store i64 0, i64* %alloc, align 8
  %2 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %lines = getelementptr inbounds %struct.seq, %struct.seq* %2, i32 0, i32 2
  store %struct.line** null, %struct.line*** %lines, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @getseq(%struct._IO_FILE* %fp, %struct.seq* %seq, i32 %whichfile) #2 {
entry:
  %retval = alloca i1, align 1
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %seq.addr = alloca %struct.seq*, align 8
  %whichfile.addr = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.seq* %seq, %struct.seq** %seq.addr, align 8
  store i32 %whichfile, i32* %whichfile.addr, align 4
  %0 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %count = getelementptr inbounds %struct.seq, %struct.seq* %0, i32 0, i32 0
  %1 = load i64, i64* %count, align 8
  %2 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %alloc = getelementptr inbounds %struct.seq, %struct.seq* %2, i32 0, i32 1
  %3 = load i64, i64* %alloc, align 8
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %lines = getelementptr inbounds %struct.seq, %struct.seq* %4, i32 0, i32 2
  %5 = load %struct.line**, %struct.line*** %lines, align 8
  %6 = bitcast %struct.line** %5 to i8*
  %7 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %alloc1 = getelementptr inbounds %struct.seq, %struct.seq* %7, i32 0, i32 1
  %call = call i8* @x2nrealloc(i8* %6, i64* %alloc1, i64 8)
  %8 = bitcast i8* %call to %struct.line**
  %9 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %lines2 = getelementptr inbounds %struct.seq, %struct.seq* %9, i32 0, i32 2
  store %struct.line** %8, %struct.line*** %lines2, align 8
  %10 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %count3 = getelementptr inbounds %struct.seq, %struct.seq* %10, i32 0, i32 0
  %11 = load i64, i64* %count3, align 8
  store i64 %11, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %alloc4 = getelementptr inbounds %struct.seq, %struct.seq* %13, i32 0, i32 1
  %14 = load i64, i64* %alloc4, align 8
  %cmp5 = icmp ult i64 %12, %14
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %lines6 = getelementptr inbounds %struct.seq, %struct.seq* %15, i32 0, i32 2
  %16 = load %struct.line**, %struct.line*** %lines6, align 8
  %17 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.line*, %struct.line** %16, i64 %17
  store %struct.line* null, %struct.line** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %20 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %lines7 = getelementptr inbounds %struct.seq, %struct.seq* %20, i32 0, i32 2
  %21 = load %struct.line**, %struct.line*** %lines7, align 8
  %22 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %count8 = getelementptr inbounds %struct.seq, %struct.seq* %22, i32 0, i32 0
  %23 = load i64, i64* %count8, align 8
  %arrayidx9 = getelementptr inbounds %struct.line*, %struct.line** %21, i64 %23
  %24 = load i32, i32* %whichfile.addr, align 4
  %call10 = call zeroext i1 @get_line(%struct._IO_FILE* %19, %struct.line** %arrayidx9, i32 %24)
  br i1 %call10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %25 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %count12 = getelementptr inbounds %struct.seq, %struct.seq* %25, i32 0, i32 0
  %26 = load i64, i64* %count12, align 8
  %inc13 = add i64 %26, 1
  store i64 %inc13, i64* %count12, align 8
  store i1 true, i1* %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end14, %if.then11
  %27 = load i1, i1* %retval, align 1
  ret i1 %27
}

; Function Attrs: noinline nounwind uwtable
define internal void @prjoin(%struct.line* %line1, %struct.line* %line2) #2 {
entry:
  %line1.addr = alloca %struct.line*, align 8
  %line2.addr = alloca %struct.line*, align 8
  %outlist = alloca %struct.outlist*, align 8
  %output_separator = alloca i8, align 1
  %field = alloca i64, align 8
  %line = alloca %struct.line*, align 8
  %o = alloca %struct.outlist*, align 8
  store %struct.line* %line1, %struct.line** %line1.addr, align 8
  store %struct.line* %line2, %struct.line** %line2.addr, align 8
  %0 = load i32, i32* @tab, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* @tab, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %1, %cond.false ]
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %output_separator, align 1
  %2 = load %struct.outlist*, %struct.outlist** getelementptr inbounds (%struct.outlist, %struct.outlist* @outlist_head, i32 0, i32 2), align 8
  store %struct.outlist* %2, %struct.outlist** %outlist, align 8
  %3 = load %struct.outlist*, %struct.outlist** %outlist, align 8
  %tobool = icmp ne %struct.outlist* %3, null
  br i1 %tobool, label %if.then, label %if.else24

if.then:                                          ; preds = %cond.end
  %4 = load %struct.outlist*, %struct.outlist** %outlist, align 8
  store %struct.outlist* %4, %struct.outlist** %o, align 8
  br label %while.body

while.body:                                       ; preds = %if.then, %if.end20
  %5 = load %struct.outlist*, %struct.outlist** %o, align 8
  %file = getelementptr inbounds %struct.outlist, %struct.outlist* %5, i32 0, i32 0
  %6 = load i32, i32* %file, align 8
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then3, label %if.else7

if.then3:                                         ; preds = %while.body
  %7 = load %struct.line*, %struct.line** %line1.addr, align 8
  %cmp4 = icmp eq %struct.line* %7, @uni_blank
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %8 = load %struct.line*, %struct.line** %line2.addr, align 8
  store %struct.line* %8, %struct.line** %line, align 8
  %9 = load i64, i64* @join_field_2, align 8
  store i64 %9, i64* %field, align 8
  br label %if.end

if.else:                                          ; preds = %if.then3
  %10 = load %struct.line*, %struct.line** %line1.addr, align 8
  store %struct.line* %10, %struct.line** %line, align 8
  %11 = load i64, i64* @join_field_1, align 8
  store i64 %11, i64* %field, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end16

if.else7:                                         ; preds = %while.body
  %12 = load %struct.outlist*, %struct.outlist** %o, align 8
  %file8 = getelementptr inbounds %struct.outlist, %struct.outlist* %12, i32 0, i32 0
  %13 = load i32, i32* %file8, align 8
  %cmp9 = icmp eq i32 %13, 1
  br i1 %cmp9, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %if.else7
  %14 = load %struct.line*, %struct.line** %line1.addr, align 8
  br label %cond.end13

cond.false12:                                     ; preds = %if.else7
  %15 = load %struct.line*, %struct.line** %line2.addr, align 8
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi %struct.line* [ %14, %cond.true11 ], [ %15, %cond.false12 ]
  store %struct.line* %cond14, %struct.line** %line, align 8
  %16 = load %struct.outlist*, %struct.outlist** %o, align 8
  %field15 = getelementptr inbounds %struct.outlist, %struct.outlist* %16, i32 0, i32 1
  %17 = load i64, i64* %field15, align 8
  store i64 %17, i64* %field, align 8
  br label %if.end16

if.end16:                                         ; preds = %cond.end13, %if.end
  %18 = load i64, i64* %field, align 8
  %19 = load %struct.line*, %struct.line** %line, align 8
  call void @prfield(i64 %18, %struct.line* %19)
  %20 = load %struct.outlist*, %struct.outlist** %o, align 8
  %next = getelementptr inbounds %struct.outlist, %struct.outlist* %20, i32 0, i32 2
  %21 = load %struct.outlist*, %struct.outlist** %next, align 8
  store %struct.outlist* %21, %struct.outlist** %o, align 8
  %22 = load %struct.outlist*, %struct.outlist** %o, align 8
  %cmp17 = icmp eq %struct.outlist* %22, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  br label %while.end

if.end20:                                         ; preds = %if.end16
  %23 = load i8, i8* %output_separator, align 1
  %conv21 = sext i8 %23 to i32
  %call = call i32 @putchar_unlocked(i32 %conv21)
  br label %while.body

while.end:                                        ; preds = %if.then19
  %24 = load i8, i8* @eolchar, align 1
  %conv22 = sext i8 %24 to i32
  %call23 = call i32 @putchar_unlocked(i32 %conv22)
  br label %if.end32

if.else24:                                        ; preds = %cond.end
  %25 = load %struct.line*, %struct.line** %line1.addr, align 8
  %cmp25 = icmp eq %struct.line* %25, @uni_blank
  br i1 %cmp25, label %if.then27, label %if.else28

if.then27:                                        ; preds = %if.else24
  %26 = load %struct.line*, %struct.line** %line2.addr, align 8
  store %struct.line* %26, %struct.line** %line, align 8
  %27 = load i64, i64* @join_field_2, align 8
  store i64 %27, i64* %field, align 8
  br label %if.end29

if.else28:                                        ; preds = %if.else24
  %28 = load %struct.line*, %struct.line** %line1.addr, align 8
  store %struct.line* %28, %struct.line** %line, align 8
  %29 = load i64, i64* @join_field_1, align 8
  store i64 %29, i64* %field, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %30 = load i64, i64* %field, align 8
  %31 = load %struct.line*, %struct.line** %line, align 8
  call void @prfield(i64 %30, %struct.line* %31)
  %32 = load %struct.line*, %struct.line** %line1.addr, align 8
  %33 = load i64, i64* @join_field_1, align 8
  %34 = load i64, i64* @autocount_1, align 8
  call void @prfields(%struct.line* %32, i64 %33, i64 %34)
  %35 = load %struct.line*, %struct.line** %line2.addr, align 8
  %36 = load i64, i64* @join_field_2, align 8
  %37 = load i64, i64* @autocount_2, align 8
  call void @prfields(%struct.line* %35, i64 %36, i64 %37)
  %38 = load i8, i8* @eolchar, align 1
  %conv30 = sext i8 %38 to i32
  %call31 = call i32 @putchar_unlocked(i32 %conv30)
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %while.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @advance_seq(%struct._IO_FILE* %fp, %struct.seq* %seq, i1 zeroext %first, i32 %whichfile) #2 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %seq.addr = alloca %struct.seq*, align 8
  %first.addr = alloca i8, align 1
  %whichfile.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.seq* %seq, %struct.seq** %seq.addr, align 8
  %frombool = zext i1 %first to i8
  store i8 %frombool, i8* %first.addr, align 1
  store i32 %whichfile, i32* %whichfile.addr, align 4
  %0 = load i8, i8* %first.addr, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %count = getelementptr inbounds %struct.seq, %struct.seq* %1, i32 0, i32 0
  store i64 0, i64* %count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %4 = load i32, i32* %whichfile.addr, align 4
  %call = call zeroext i1 @getseq(%struct._IO_FILE* %2, %struct.seq* %3, i32 %4)
  ret i1 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @keycmp(%struct.line* %line1, %struct.line* %line2, i64 %jf_1, i64 %jf_2) #2 {
entry:
  %retval = alloca i32, align 4
  %line1.addr = alloca %struct.line*, align 8
  %line2.addr = alloca %struct.line*, align 8
  %jf_1.addr = alloca i64, align 8
  %jf_2.addr = alloca i64, align 8
  %beg1 = alloca i8*, align 8
  %beg2 = alloca i8*, align 8
  %len1 = alloca i64, align 8
  %len2 = alloca i64, align 8
  %diff = alloca i32, align 4
  store %struct.line* %line1, %struct.line** %line1.addr, align 8
  store %struct.line* %line2, %struct.line** %line2.addr, align 8
  store i64 %jf_1, i64* %jf_1.addr, align 8
  store i64 %jf_2, i64* %jf_2.addr, align 8
  %0 = load i64, i64* %jf_1.addr, align 8
  %1 = load %struct.line*, %struct.line** %line1.addr, align 8
  %nfields = getelementptr inbounds %struct.line, %struct.line* %1, i32 0, i32 1
  %2 = load i64, i64* %nfields, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.line*, %struct.line** %line1.addr, align 8
  %fields = getelementptr inbounds %struct.line, %struct.line* %3, i32 0, i32 3
  %4 = load %struct.field*, %struct.field** %fields, align 8
  %5 = load i64, i64* %jf_1.addr, align 8
  %arrayidx = getelementptr inbounds %struct.field, %struct.field* %4, i64 %5
  %beg = getelementptr inbounds %struct.field, %struct.field* %arrayidx, i32 0, i32 0
  %6 = load i8*, i8** %beg, align 8
  store i8* %6, i8** %beg1, align 8
  %7 = load %struct.line*, %struct.line** %line1.addr, align 8
  %fields1 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 3
  %8 = load %struct.field*, %struct.field** %fields1, align 8
  %9 = load i64, i64* %jf_1.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.field, %struct.field* %8, i64 %9
  %len = getelementptr inbounds %struct.field, %struct.field* %arrayidx2, i32 0, i32 1
  %10 = load i64, i64* %len, align 8
  store i64 %10, i64* %len1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* null, i8** %beg1, align 8
  store i64 0, i64* %len1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i64, i64* %jf_2.addr, align 8
  %12 = load %struct.line*, %struct.line** %line2.addr, align 8
  %nfields3 = getelementptr inbounds %struct.line, %struct.line* %12, i32 0, i32 1
  %13 = load i64, i64* %nfields3, align 8
  %cmp4 = icmp ult i64 %11, %13
  br i1 %cmp4, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.end
  %14 = load %struct.line*, %struct.line** %line2.addr, align 8
  %fields6 = getelementptr inbounds %struct.line, %struct.line* %14, i32 0, i32 3
  %15 = load %struct.field*, %struct.field** %fields6, align 8
  %16 = load i64, i64* %jf_2.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.field, %struct.field* %15, i64 %16
  %beg8 = getelementptr inbounds %struct.field, %struct.field* %arrayidx7, i32 0, i32 0
  %17 = load i8*, i8** %beg8, align 8
  store i8* %17, i8** %beg2, align 8
  %18 = load %struct.line*, %struct.line** %line2.addr, align 8
  %fields9 = getelementptr inbounds %struct.line, %struct.line* %18, i32 0, i32 3
  %19 = load %struct.field*, %struct.field** %fields9, align 8
  %20 = load i64, i64* %jf_2.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.field, %struct.field* %19, i64 %20
  %len11 = getelementptr inbounds %struct.field, %struct.field* %arrayidx10, i32 0, i32 1
  %21 = load i64, i64* %len11, align 8
  store i64 %21, i64* %len2, align 8
  br label %if.end13

if.else12:                                        ; preds = %if.end
  store i8* null, i8** %beg2, align 8
  store i64 0, i64* %len2, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then5
  %22 = load i64, i64* %len1, align 8
  %cmp14 = icmp eq i64 %22, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %23 = load i64, i64* %len2, align 8
  %cmp16 = icmp eq i64 %23, 0
  %24 = zext i1 %cmp16 to i64
  %cond = select i1 %cmp16, i32 0, i32 -1
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end13
  %25 = load i64, i64* %len2, align 8
  %cmp18 = icmp eq i64 %25, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  store i32 1, i32* %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end17
  %26 = load i8, i8* @ignore_case, align 1
  %tobool = trunc i8 %26 to i1
  br i1 %tobool, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end20
  %27 = load i8*, i8** %beg1, align 8
  %28 = load i8*, i8** %beg2, align 8
  %29 = load i64, i64* %len1, align 8
  %30 = load i64, i64* %len2, align 8
  %cmp22 = icmp ult i64 %29, %30
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then21
  %31 = load i64, i64* %len1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  %32 = load i64, i64* %len2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i64 [ %31, %cond.true ], [ %32, %cond.false ]
  %call = call i32 @memcasecmp(i8* %27, i8* %28, i64 %cond23) #13
  store i32 %call, i32* %diff, align 4
  br label %if.end35

if.else24:                                        ; preds = %if.end20
  %33 = load i8, i8* @hard_LC_COLLATE, align 1
  %tobool25 = trunc i8 %33 to i1
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.else24
  %34 = load i8*, i8** %beg1, align 8
  %35 = load i64, i64* %len1, align 8
  %36 = load i8*, i8** %beg2, align 8
  %37 = load i64, i64* %len2, align 8
  %call27 = call i32 @xmemcoll(i8* %34, i64 %35, i8* %36, i64 %37)
  store i32 %call27, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.else24
  %38 = load i8*, i8** %beg1, align 8
  %39 = load i8*, i8** %beg2, align 8
  %40 = load i64, i64* %len1, align 8
  %41 = load i64, i64* %len2, align 8
  %cmp29 = icmp ult i64 %40, %41
  br i1 %cmp29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %if.end28
  %42 = load i64, i64* %len1, align 8
  br label %cond.end32

cond.false31:                                     ; preds = %if.end28
  %43 = load i64, i64* %len2, align 8
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false31, %cond.true30
  %cond33 = phi i64 [ %42, %cond.true30 ], [ %43, %cond.false31 ]
  %call34 = call i32 @memcmp(i8* %38, i8* %39, i64 %cond33) #13
  store i32 %call34, i32* %diff, align 4
  br label %if.end35

if.end35:                                         ; preds = %cond.end32, %cond.end
  %44 = load i32, i32* %diff, align 4
  %tobool36 = icmp ne i32 %44, 0
  br i1 %tobool36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  %45 = load i32, i32* %diff, align 4
  store i32 %45, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end35
  %46 = load i64, i64* %len1, align 8
  %47 = load i64, i64* %len2, align 8
  %cmp39 = icmp ult i64 %46, %47
  br i1 %cmp39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %if.end38
  br label %cond.end43

cond.false41:                                     ; preds = %if.end38
  %48 = load i64, i64* %len1, align 8
  %49 = load i64, i64* %len2, align 8
  %cmp42 = icmp ne i64 %48, %49
  %conv = zext i1 %cmp42 to i32
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true40
  %cond44 = phi i32 [ -1, %cond.true40 ], [ %conv, %cond.false41 ]
  store i32 %cond44, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end43, %if.then37, %if.then26, %if.then19, %if.then15
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @get_line(%struct._IO_FILE* %fp, %struct.line** %linep, i32 %which) #2 {
entry:
  %retval = alloca i1, align 1
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %linep.addr = alloca %struct.line**, align 8
  %which.addr = alloca i32, align 4
  %line = alloca %struct.line*, align 8
  %tmp = alloca %struct.line*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.line** %linep, %struct.line*** %linep.addr, align 8
  store i32 %which, i32* %which.addr, align 4
  %0 = load %struct.line**, %struct.line*** %linep.addr, align 8
  %1 = load %struct.line*, %struct.line** %0, align 8
  store %struct.line* %1, %struct.line** %line, align 8
  %2 = load %struct.line*, %struct.line** %line, align 8
  %3 = load i32, i32* %which.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @prevline, i64 0, i64 %idxprom
  %4 = load %struct.line*, %struct.line** %arrayidx, align 8
  %cmp = icmp eq %struct.line* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct.line*, %struct.line** %line, align 8
  store %struct.line* %5, %struct.line** %tmp, align 8
  %6 = load i32, i32* %which.addr, align 4
  %sub1 = sub nsw i32 %6, 1
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 %idxprom2
  %7 = load %struct.line*, %struct.line** %arrayidx3, align 8
  store %struct.line* %7, %struct.line** %line, align 8
  %8 = load %struct.line*, %struct.line** %tmp, align 8
  %9 = load i32, i32* %which.addr, align 4
  %sub4 = sub nsw i32 %9, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @spareline, i64 0, i64 %idxprom5
  store %struct.line* %8, %struct.line** %arrayidx6, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load %struct.line*, %struct.line** %line, align 8
  %11 = load %struct.line**, %struct.line*** %linep.addr, align 8
  store %struct.line* %10, %struct.line** %11, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %12 = load %struct.line*, %struct.line** %line, align 8
  %tobool = icmp ne %struct.line* %12, null
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %13 = load %struct.line*, %struct.line** %line, align 8
  call void @reset_line(%struct.line* %13)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %14 = load %struct.line**, %struct.line*** %linep.addr, align 8
  %call = call %struct.line* @init_linep(%struct.line** %14)
  store %struct.line* %call, %struct.line** %line, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %15 = load %struct.line*, %struct.line** %line, align 8
  %buf = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 0
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %17 = load i8, i8* @eolchar, align 1
  %call9 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %buf, %struct._IO_FILE* %16, i8 signext %17)
  %tobool10 = icmp ne %struct.linebuffer* %call9, null
  br i1 %tobool10, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.end8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @ferror_unlocked(%struct._IO_FILE* %18) #11
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  %call15 = call i32* @__errno_location() #15
  %19 = load i32, i32* %call15, align 4
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0))
  unreachable

if.end16:                                         ; preds = %if.then11
  %20 = load %struct.line*, %struct.line** %line, align 8
  call void @freeline(%struct.line* %20)
  store i1 false, i1* %retval, align 1
  br label %return

if.end17:                                         ; preds = %if.end8
  %21 = load i32, i32* %which.addr, align 4
  %sub18 = sub nsw i32 %21, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [2 x i64], [2 x i64]* @line_no, i64 0, i64 %idxprom19
  %22 = load i64, i64* %arrayidx20, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %arrayidx20, align 8
  %23 = load %struct.line*, %struct.line** %line, align 8
  call void @xfields(%struct.line* %23)
  %24 = load i32, i32* %which.addr, align 4
  %sub21 = sub nsw i32 %24, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @prevline, i64 0, i64 %idxprom22
  %25 = load %struct.line*, %struct.line** %arrayidx23, align 8
  %tobool24 = icmp ne %struct.line* %25, null
  br i1 %tobool24, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.end17
  %26 = load i32, i32* %which.addr, align 4
  %sub26 = sub nsw i32 %26, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @prevline, i64 0, i64 %idxprom27
  %27 = load %struct.line*, %struct.line** %arrayidx28, align 8
  %28 = load %struct.line*, %struct.line** %line, align 8
  %29 = load i32, i32* %which.addr, align 4
  call void @check_order(%struct.line* %27, %struct.line* %28, i32 %29)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.end17
  %30 = load %struct.line*, %struct.line** %line, align 8
  %31 = load i32, i32* %which.addr, align 4
  %sub30 = sub nsw i32 %31, 1
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [2 x %struct.line*], [2 x %struct.line*]* @prevline, i64 0, i64 %idxprom31
  store %struct.line* %30, %struct.line** %arrayidx32, align 8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end29, %if.end16
  %32 = load i1, i1* %retval, align 1
  ret i1 %32
}

; Function Attrs: noinline nounwind uwtable
define internal void @freeline(%struct.line* %line) #2 {
entry:
  %line.addr = alloca %struct.line*, align 8
  store %struct.line* %line, %struct.line** %line.addr, align 8
  %0 = load %struct.line*, %struct.line** %line.addr, align 8
  %cmp = icmp eq %struct.line* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.line*, %struct.line** %line.addr, align 8
  %fields = getelementptr inbounds %struct.line, %struct.line* %1, i32 0, i32 3
  %2 = load %struct.field*, %struct.field** %fields, align 8
  %3 = bitcast %struct.field* %2 to i8*
  call void @free(i8* %3) #11
  %4 = load %struct.line*, %struct.line** %line.addr, align 8
  %fields1 = getelementptr inbounds %struct.line, %struct.line* %4, i32 0, i32 3
  store %struct.field* null, %struct.field** %fields1, align 8
  %5 = load %struct.line*, %struct.line** %line.addr, align 8
  %buf = getelementptr inbounds %struct.line, %struct.line* %5, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %buf, i32 0, i32 2
  %6 = load i8*, i8** %buffer, align 8
  call void @free(i8* %6) #11
  %7 = load %struct.line*, %struct.line** %line.addr, align 8
  %buf2 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 0
  %buffer3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %buf2, i32 0, i32 2
  store i8* null, i8** %buffer3, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: noinline nounwind uwtable
define internal void @delseq(%struct.seq* %seq) #2 {
entry:
  %seq.addr = alloca %struct.seq*, align 8
  %i = alloca i64, align 8
  store %struct.seq* %seq, %struct.seq** %seq.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %alloc = getelementptr inbounds %struct.seq, %struct.seq* %1, i32 0, i32 1
  %2 = load i64, i64* %alloc, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %lines = getelementptr inbounds %struct.seq, %struct.seq* %3, i32 0, i32 2
  %4 = load %struct.line**, %struct.line*** %lines, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds %struct.line*, %struct.line** %4, i64 %5
  %6 = load %struct.line*, %struct.line** %arrayidx, align 8
  call void @freeline(%struct.line* %6)
  %7 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %lines1 = getelementptr inbounds %struct.seq, %struct.seq* %7, i32 0, i32 2
  %8 = load %struct.line**, %struct.line*** %lines1, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds %struct.line*, %struct.line** %8, i64 %9
  %10 = load %struct.line*, %struct.line** %arrayidx2, align 8
  %11 = bitcast %struct.line* %10 to i8*
  call void @free(i8* %11) #11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.seq*, %struct.seq** %seq.addr, align 8
  %lines3 = getelementptr inbounds %struct.seq, %struct.seq* %13, i32 0, i32 2
  %14 = load %struct.line**, %struct.line*** %lines3, align 8
  %15 = bitcast %struct.line** %14 to i8*
  call void @free(i8* %15) #11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @reset_line(%struct.line* %line) #2 {
entry:
  %line.addr = alloca %struct.line*, align 8
  store %struct.line* %line, %struct.line** %line.addr, align 8
  %0 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields = getelementptr inbounds %struct.line, %struct.line* %0, i32 0, i32 1
  store i64 0, i64* %nfields, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.line* @init_linep(%struct.line** %linep) #2 {
entry:
  %linep.addr = alloca %struct.line**, align 8
  %line = alloca %struct.line*, align 8
  store %struct.line** %linep, %struct.line*** %linep.addr, align 8
  %call = call noalias i8* @xcalloc(i64 1, i64 48)
  %0 = bitcast i8* %call to %struct.line*
  store %struct.line* %0, %struct.line** %line, align 8
  %1 = load %struct.line*, %struct.line** %line, align 8
  %2 = load %struct.line**, %struct.line*** %linep.addr, align 8
  store %struct.line* %1, %struct.line** %2, align 8
  %3 = load %struct.line*, %struct.line** %line, align 8
  ret %struct.line* %3
}

; Function Attrs: nounwind
declare dso_local i32 @ferror_unlocked(%struct._IO_FILE*) #6

; Function Attrs: noinline nounwind uwtable
define internal void @xfields(%struct.line* %line) #2 {
entry:
  %line.addr = alloca %struct.line*, align 8
  %ptr = alloca i8*, align 8
  %lim = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %sep17 = alloca i8*, align 8
  store %struct.line* %line, %struct.line** %line.addr, align 8
  %0 = load %struct.line*, %struct.line** %line.addr, align 8
  %buf = getelementptr inbounds %struct.line, %struct.line* %0, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %buf, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  store i8* %1, i8** %ptr, align 8
  %2 = load i8*, i8** %ptr, align 8
  %3 = load %struct.line*, %struct.line** %line.addr, align 8
  %buf1 = getelementptr inbounds %struct.line, %struct.line* %3, i32 0, i32 0
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %buf1, i32 0, i32 1
  %4 = load i64, i64* %length, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %4
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr2, i8** %lim, align 8
  %5 = load i8*, i8** %ptr, align 8
  %6 = load i8*, i8** %lim, align 8
  %cmp = icmp eq i8* %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* @tab, align 4
  %cmp3 = icmp sle i32 0, %7
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* @tab, align 4
  %cmp4 = icmp ne i32 %8, 10
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %land.lhs.true
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %9 = load i8*, i8** %ptr, align 8
  %10 = load i32, i32* @tab, align 4
  %11 = load i8*, i8** %lim, align 8
  %12 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @memchr(i8* %9, i32 %10, i64 %sub.ptr.sub) #13
  store i8* %call, i8** %sep, align 8
  %cmp6 = icmp ne i8* %call, null
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.line*, %struct.line** %line.addr, align 8
  %14 = load i8*, i8** %ptr, align 8
  %15 = load i8*, i8** %sep, align 8
  %16 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast7 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast8 = ptrtoint i8* %16 to i64
  %sub.ptr.sub9 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast8
  call void @extract_field(%struct.line* %13, i8* %14, i64 %sub.ptr.sub9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i8*, i8** %sep, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %add.ptr10, i8** %ptr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end44

if.else:                                          ; preds = %land.lhs.true, %if.end
  %18 = load i32, i32* @tab, align 4
  %cmp11 = icmp slt i32 %18, 0
  br i1 %cmp11, label %if.then12, label %if.end43

if.then12:                                        ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.then12
  %19 = load i8*, i8** %ptr, align 8
  %20 = load i8, i8* %19, align 1
  %call13 = call zeroext i1 @field_sep(i8 zeroext %20)
  br i1 %call13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i8*, i8** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %ptr, align 8
  %22 = load i8*, i8** %lim, align 8
  %cmp14 = icmp eq i8* %incdec.ptr, %22
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body
  br label %return

if.end16:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %23 = load i8*, i8** %ptr, align 8
  %add.ptr18 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %add.ptr18, i8** %sep17, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc23, %do.body
  %24 = load i8*, i8** %sep17, align 8
  %25 = load i8*, i8** %lim, align 8
  %cmp20 = icmp ne i8* %24, %25
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond19
  %26 = load i8*, i8** %sep17, align 8
  %27 = load i8, i8* %26, align 1
  %call21 = call zeroext i1 @field_sep(i8 zeroext %27)
  %lnot = xor i1 %call21, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond19
  %28 = phi i1 [ false, %for.cond19 ], [ %lnot, %land.rhs ]
  br i1 %28, label %for.body22, label %for.end25

for.body22:                                       ; preds = %land.end
  br label %for.inc23

for.inc23:                                        ; preds = %for.body22
  %29 = load i8*, i8** %sep17, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr24, i8** %sep17, align 8
  br label %for.cond19

for.end25:                                        ; preds = %land.end
  %30 = load %struct.line*, %struct.line** %line.addr, align 8
  %31 = load i8*, i8** %ptr, align 8
  %32 = load i8*, i8** %sep17, align 8
  %33 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast26 = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast27 = ptrtoint i8* %33 to i64
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27
  call void @extract_field(%struct.line* %30, i8* %31, i64 %sub.ptr.sub28)
  %34 = load i8*, i8** %sep17, align 8
  %35 = load i8*, i8** %lim, align 8
  %cmp29 = icmp eq i8* %34, %35
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.end25
  br label %return

if.end31:                                         ; preds = %for.end25
  %36 = load i8*, i8** %sep17, align 8
  %add.ptr32 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %add.ptr32, i8** %ptr, align 8
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc39, %if.end31
  %37 = load i8*, i8** %ptr, align 8
  %38 = load i8*, i8** %lim, align 8
  %cmp34 = icmp ne i8* %37, %38
  br i1 %cmp34, label %land.rhs35, label %land.end37

land.rhs35:                                       ; preds = %for.cond33
  %39 = load i8*, i8** %ptr, align 8
  %40 = load i8, i8* %39, align 1
  %call36 = call zeroext i1 @field_sep(i8 zeroext %40)
  br label %land.end37

land.end37:                                       ; preds = %land.rhs35, %for.cond33
  %41 = phi i1 [ false, %for.cond33 ], [ %call36, %land.rhs35 ]
  br i1 %41, label %for.body38, label %for.end41

for.body38:                                       ; preds = %land.end37
  br label %for.inc39

for.inc39:                                        ; preds = %for.body38
  %42 = load i8*, i8** %ptr, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr40, i8** %ptr, align 8
  br label %for.cond33

for.end41:                                        ; preds = %land.end37
  br label %do.cond

do.cond:                                          ; preds = %for.end41
  %43 = load i8*, i8** %ptr, align 8
  %44 = load i8*, i8** %lim, align 8
  %cmp42 = icmp ne i8* %43, %44
  br i1 %cmp42, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end43

if.end43:                                         ; preds = %do.end, %if.else
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %for.end
  %45 = load %struct.line*, %struct.line** %line.addr, align 8
  %46 = load i8*, i8** %ptr, align 8
  %47 = load i8*, i8** %lim, align 8
  %48 = load i8*, i8** %ptr, align 8
  %sub.ptr.lhs.cast45 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast46 = ptrtoint i8* %48 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  call void @extract_field(%struct.line* %45, i8* %46, i64 %sub.ptr.sub47)
  br label %return

return:                                           ; preds = %if.end44, %if.then30, %if.then15, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_order(%struct.line* %prev, %struct.line* %current, i32 %whatfile) #2 {
entry:
  %prev.addr = alloca %struct.line*, align 8
  %current.addr = alloca %struct.line*, align 8
  %whatfile.addr = alloca i32, align 4
  %join_field = alloca i64, align 8
  %len = alloca i64, align 8
  store %struct.line* %prev, %struct.line** %prev.addr, align 8
  store %struct.line* %current, %struct.line** %current.addr, align 8
  store i32 %whatfile, i32* %whatfile.addr, align 4
  %0 = load i32, i32* @check_input_order, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @check_input_order, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i8, i8* @seen_unpairable, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end38

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load i32, i32* %whatfile.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool2 = trunc i8 %4 to i1
  br i1 %tobool2, label %if.end37, label %if.then3

if.then3:                                         ; preds = %if.then
  %5 = load i32, i32* %whatfile.addr, align 4
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  %6 = load i64, i64* @join_field_1, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  %7 = load i64, i64* @join_field_2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %6, %cond.true ], [ %7, %cond.false ]
  store i64 %cond, i64* %join_field, align 8
  %8 = load %struct.line*, %struct.line** %prev.addr, align 8
  %9 = load %struct.line*, %struct.line** %current.addr, align 8
  %10 = load i64, i64* %join_field, align 8
  %11 = load i64, i64* %join_field, align 8
  %call = call i32 @keycmp(%struct.line* %8, %struct.line* %9, i64 %10, i64 %11)
  %cmp5 = icmp sgt i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end36

if.then6:                                         ; preds = %cond.end
  %12 = load %struct.line*, %struct.line** %current.addr, align 8
  %buf = getelementptr inbounds %struct.line, %struct.line* %12, i32 0, i32 0
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %buf, i32 0, i32 1
  %13 = load i64, i64* %length, align 8
  store i64 %13, i64* %len, align 8
  %14 = load i64, i64* %len, align 8
  %cmp7 = icmp ult i64 0, %14
  br i1 %cmp7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %if.then6
  %15 = load %struct.line*, %struct.line** %current.addr, align 8
  %buf9 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 0
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %buf9, i32 0, i32 2
  %16 = load i8*, i8** %buffer, align 8
  %17 = load i64, i64* %len, align 8
  %sub10 = sub i64 %17, 1
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %sub10
  %18 = load i8, i8* %arrayidx11, align 1
  %conv = sext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv, 10
  br i1 %cmp12, label %if.then14, label %if.end

if.then14:                                        ; preds = %land.lhs.true8
  %19 = load i64, i64* %len, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %land.lhs.true8, %if.then6
  %20 = load i64, i64* %len, align 8
  %cmp15 = icmp ult i64 2147483647, %20
  br i1 %cmp15, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %if.end
  br label %cond.end19

cond.false18:                                     ; preds = %if.end
  %21 = load i64, i64* %len, align 8
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i64 [ 2147483647, %cond.true17 ], [ %21, %cond.false18 ]
  store i64 %cond20, i64* %len, align 8
  %22 = load i32, i32* @check_input_order, align 4
  %cmp21 = icmp eq i32 %22, 1
  %23 = zext i1 %cmp21 to i64
  %cond23 = select i1 %cmp21, i32 1, i32 0
  %24 = load i32, i32* %whatfile.addr, align 4
  %sub24 = sub nsw i32 %24, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds [2 x i8*], [2 x i8*]* @g_names, i64 0, i64 %idxprom25
  %25 = load i8*, i8** %arrayidx26, align 8
  %26 = load i32, i32* %whatfile.addr, align 4
  %sub27 = sub nsw i32 %26, 1
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds [2 x i64], [2 x i64]* @line_no, i64 0, i64 %idxprom28
  %27 = load i64, i64* %arrayidx29, align 8
  %28 = load i64, i64* %len, align 8
  %conv30 = trunc i64 %28 to i32
  %29 = load %struct.line*, %struct.line** %current.addr, align 8
  %buf31 = getelementptr inbounds %struct.line, %struct.line* %29, i32 0, i32 0
  %buffer32 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %buf31, i32 0, i32 2
  %30 = load i8*, i8** %buffer32, align 8
  call void (i32, i32, i8*, ...) @error(i32 %cond23, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.61, i64 0, i64 0), i8* %25, i64 %27, i32 %conv30, i8* %30)
  %31 = load i32, i32* %whatfile.addr, align 4
  %sub33 = sub nsw i32 %31, 1
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %idxprom34
  store i8 1, i8* %arrayidx35, align 1
  br label %if.end36

if.end36:                                         ; preds = %cond.end19, %cond.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %lor.lhs.false, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i8* @memchr(i8*, i32, i64) #5

; Function Attrs: noinline nounwind uwtable
define internal void @extract_field(%struct.line* %line, i8* %field, i64 %len) #2 {
entry:
  %line.addr = alloca %struct.line*, align 8
  %field.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store %struct.line* %line, %struct.line** %line.addr, align 8
  store i8* %field, i8** %field.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields = getelementptr inbounds %struct.line, %struct.line* %0, i32 0, i32 1
  %1 = load i64, i64* %nfields, align 8
  %2 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields_allocated = getelementptr inbounds %struct.line, %struct.line* %2, i32 0, i32 2
  %3 = load i64, i64* %nfields_allocated, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.line*, %struct.line** %line.addr, align 8
  %fields = getelementptr inbounds %struct.line, %struct.line* %4, i32 0, i32 3
  %5 = load %struct.field*, %struct.field** %fields, align 8
  %6 = bitcast %struct.field* %5 to i8*
  %7 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields_allocated1 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 2
  %call = call i8* @x2nrealloc(i8* %6, i64* %nfields_allocated1, i64 16)
  %8 = bitcast i8* %call to %struct.field*
  %9 = load %struct.line*, %struct.line** %line.addr, align 8
  %fields2 = getelementptr inbounds %struct.line, %struct.line* %9, i32 0, i32 3
  store %struct.field* %8, %struct.field** %fields2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i8*, i8** %field.addr, align 8
  %11 = load %struct.line*, %struct.line** %line.addr, align 8
  %fields3 = getelementptr inbounds %struct.line, %struct.line* %11, i32 0, i32 3
  %12 = load %struct.field*, %struct.field** %fields3, align 8
  %13 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields4 = getelementptr inbounds %struct.line, %struct.line* %13, i32 0, i32 1
  %14 = load i64, i64* %nfields4, align 8
  %arrayidx = getelementptr inbounds %struct.field, %struct.field* %12, i64 %14
  %beg = getelementptr inbounds %struct.field, %struct.field* %arrayidx, i32 0, i32 0
  store i8* %10, i8** %beg, align 8
  %15 = load i64, i64* %len.addr, align 8
  %16 = load %struct.line*, %struct.line** %line.addr, align 8
  %fields5 = getelementptr inbounds %struct.line, %struct.line* %16, i32 0, i32 3
  %17 = load %struct.field*, %struct.field** %fields5, align 8
  %18 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields6 = getelementptr inbounds %struct.line, %struct.line* %18, i32 0, i32 1
  %19 = load i64, i64* %nfields6, align 8
  %arrayidx7 = getelementptr inbounds %struct.field, %struct.field* %17, i64 %19
  %len8 = getelementptr inbounds %struct.field, %struct.field* %arrayidx7, i32 0, i32 1
  store i64 %15, i64* %len8, align 8
  %20 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields9 = getelementptr inbounds %struct.line, %struct.line* %20, i32 0, i32 1
  %21 = load i64, i64* %nfields9, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %nfields9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @field_sep(i8 zeroext %ch) #2 {
entry:
  %ch.addr = alloca i8, align 1
  store i8 %ch, i8* %ch.addr, align 1
  %call = call i16** @__ctype_b_loc() #15
  %0 = load i16*, i16** %call, align 8
  %1 = load i8, i8* %ch.addr, align 1
  %conv = zext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load i8, i8* %ch.addr, align 1
  %conv2 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv2, 10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #8

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define internal void @prfield(i64 %n, %struct.line* %line) #2 {
entry:
  %n.addr = alloca i64, align 8
  %line.addr = alloca %struct.line*, align 8
  %len = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.line* %line, %struct.line** %line.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields = getelementptr inbounds %struct.line, %struct.line* %1, i32 0, i32 1
  %2 = load i64, i64* %nfields, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %3 = load %struct.line*, %struct.line** %line.addr, align 8
  %fields = getelementptr inbounds %struct.line, %struct.line* %3, i32 0, i32 3
  %4 = load %struct.field*, %struct.field** %fields, align 8
  %5 = load i64, i64* %n.addr, align 8
  %arrayidx = getelementptr inbounds %struct.field, %struct.field* %4, i64 %5
  %len1 = getelementptr inbounds %struct.field, %struct.field* %arrayidx, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  store i64 %6, i64* %len, align 8
  %7 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %7, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %8 = load %struct.line*, %struct.line** %line.addr, align 8
  %fields3 = getelementptr inbounds %struct.line, %struct.line* %8, i32 0, i32 3
  %9 = load %struct.field*, %struct.field** %fields3, align 8
  %10 = load i64, i64* %n.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.field, %struct.field* %9, i64 %10
  %beg = getelementptr inbounds %struct.field, %struct.field* %arrayidx4, i32 0, i32 0
  %11 = load i8*, i8** %beg, align 8
  %12 = load i64, i64* %len, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i64 @fwrite_unlocked(i8* %11, i64 1, i64 %12, %struct._IO_FILE* %13)
  br label %if.end8

if.else:                                          ; preds = %if.then
  %14 = load i8*, i8** @empty_filler, align 8
  %tobool5 = icmp ne i8* %14, null
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  %15 = load i8*, i8** @empty_filler, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then2
  br label %if.end14

if.else9:                                         ; preds = %entry
  %17 = load i8*, i8** @empty_filler, align 8
  %tobool10 = icmp ne i8* %17, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.else9
  %18 = load i8*, i8** @empty_filler, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end8
  ret void
}

declare dso_local i32 @putchar_unlocked(i32) #1

; Function Attrs: noinline nounwind uwtable
define internal void @prfields(%struct.line* %line, i64 %join_field, i64 %autocount) #2 {
entry:
  %line.addr = alloca %struct.line*, align 8
  %join_field.addr = alloca i64, align 8
  %autocount.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %nfields = alloca i64, align 8
  %output_separator = alloca i8, align 1
  store %struct.line* %line, %struct.line** %line.addr, align 8
  store i64 %join_field, i64* %join_field.addr, align 8
  store i64 %autocount, i64* %autocount.addr, align 8
  %0 = load i8, i8* @autoformat, align 1
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %autocount.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.line*, %struct.line** %line.addr, align 8
  %nfields1 = getelementptr inbounds %struct.line, %struct.line* %2, i32 0, i32 1
  %3 = load i64, i64* %nfields1, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ %3, %cond.false ]
  store i64 %cond, i64* %nfields, align 8
  %4 = load i32, i32* @tab, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %cond.end
  br label %cond.end4

cond.false3:                                      ; preds = %cond.end
  %5 = load i32, i32* @tab, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2
  %cond5 = phi i32 [ 32, %cond.true2 ], [ %5, %cond.false3 ]
  %conv = trunc i32 %cond5 to i8
  store i8 %conv, i8* %output_separator, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end4
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %join_field.addr, align 8
  %cmp6 = icmp ult i64 %6, %7
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %nfields, align 8
  %cmp8 = icmp ult i64 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp8, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load i8, i8* %output_separator, align 1
  %conv10 = sext i8 %11 to i32
  %call = call i32 @putchar_unlocked(i32 %conv10)
  %12 = load i64, i64* %i, align 8
  %13 = load %struct.line*, %struct.line** %line.addr, align 8
  call void @prfield(i64 %12, %struct.line* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %15 = load i64, i64* %join_field.addr, align 8
  %add = add i64 %15, 1
  store i64 %add, i64* %i, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc17, %for.end
  %16 = load i64, i64* %i, align 8
  %17 = load i64, i64* %nfields, align 8
  %cmp12 = icmp ult i64 %16, %17
  br i1 %cmp12, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond11
  %18 = load i8, i8* %output_separator, align 1
  %conv15 = sext i8 %18 to i32
  %call16 = call i32 @putchar_unlocked(i32 %conv15)
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.line*, %struct.line** %line.addr, align 8
  call void @prfield(i64 %19, %struct.line* %20)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %21 = load i64, i64* %i, align 8
  %inc18 = add i64 %21, 1
  store i64 %inc18, i64* %i, align 8
  br label %for.cond11

for.end19:                                        ; preds = %for.cond11
  ret void
}

declare dso_local i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare dso_local i8* @strpbrk(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define internal void @decode_field_spec(i8* %s, i32* %file_index, i64* %field_index) #2 {
entry:
  %s.addr = alloca i8*, align 8
  %file_index.addr = alloca i32*, align 8
  %field_index.addr = alloca i64*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32* %file_index, i32** %file_index.addr, align 8
  store i64* %field_index, i64** %field_index.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb2
    i32 50, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load i8*, i8** %s.addr, align 8
  %call = call i8* @quote(i8* %4)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i8* %call)
  unreachable

if.end:                                           ; preds = %sw.bb
  %5 = load i32*, i32** %file_index.addr, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64*, i64** %field_index.addr, align 8
  store i64 0, i64* %6, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  %7 = load i8*, i8** %s.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp = icmp ne i32 %conv4, 46
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %sw.bb2
  %9 = load i8*, i8** %s.addr, align 8
  %call7 = call i8* @quote(i8* %9)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i8* %call7)
  unreachable

if.end8:                                          ; preds = %sw.bb2
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv10, 48
  %12 = load i32*, i32** %file_index.addr, align 8
  store i32 %sub, i32* %12, align 4
  %13 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 2
  %call11 = call i64 @string_to_join_field(i8* %add.ptr)
  %14 = load i64*, i64** %field_index.addr, align 8
  store i64 %call11, i64* %14, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %15 = load i8*, i8** %s.addr, align 8
  %call12 = call i8* @quote(i8* %15)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i64 0, i64 0), i8* %call12)
  unreachable

sw.epilog:                                        ; preds = %if.end8, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_field(i32 %file, i64 %field) #2 {
entry:
  %file.addr = alloca i32, align 4
  %field.addr = alloca i64, align 8
  %o = alloca %struct.outlist*, align 8
  store i32 %file, i32* %file.addr, align 4
  store i64 %field, i64* %field.addr, align 8
  %0 = load i32, i32* %file.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %file.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %file.addr, align 4
  %cmp3 = icmp eq i32 %2, 2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false2
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i32 819, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.add_field, i64 0, i64 0)) #12
  unreachable

if.end:                                           ; preds = %if.then
  %3 = load i32, i32* %file.addr, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %4 = load i64, i64* %field.addr, align 8
  %cmp6 = icmp eq i64 %4, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  br label %if.end9

if.else8:                                         ; preds = %lor.lhs.false5
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i64 0, i64 0), i32 820, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.add_field, i64 0, i64 0)) #12
  unreachable

if.end9:                                          ; preds = %if.then7
  %call = call noalias i8* @xmalloc(i64 24)
  %5 = bitcast i8* %call to %struct.outlist*
  store %struct.outlist* %5, %struct.outlist** %o, align 8
  %6 = load i32, i32* %file.addr, align 4
  %7 = load %struct.outlist*, %struct.outlist** %o, align 8
  %file10 = getelementptr inbounds %struct.outlist, %struct.outlist* %7, i32 0, i32 0
  store i32 %6, i32* %file10, align 8
  %8 = load i64, i64* %field.addr, align 8
  %9 = load %struct.outlist*, %struct.outlist** %o, align 8
  %field11 = getelementptr inbounds %struct.outlist, %struct.outlist* %9, i32 0, i32 1
  store i64 %8, i64* %field11, align 8
  %10 = load %struct.outlist*, %struct.outlist** %o, align 8
  %next = getelementptr inbounds %struct.outlist, %struct.outlist* %10, i32 0, i32 2
  store %struct.outlist* null, %struct.outlist** %next, align 8
  %11 = load %struct.outlist*, %struct.outlist** %o, align 8
  %12 = load %struct.outlist*, %struct.outlist** @outlist_end, align 8
  %next12 = getelementptr inbounds %struct.outlist, %struct.outlist* %12, i32 0, i32 2
  store %struct.outlist* %11, %struct.outlist** %next12, align 8
  %13 = load %struct.outlist*, %struct.outlist** %o, align 8
  store %struct.outlist* %13, %struct.outlist** @outlist_end, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @close_stdout_set_file_name(i8* %file) #2 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  store i8* %0, i8** @file_name, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %ignore) #2 {
entry:
  %ignore.addr = alloca i8, align 1
  %frombool = zext i1 %ignore to i8
  store i8 %frombool, i8* %ignore.addr, align 1
  %0 = load i8, i8* %ignore.addr, align 1
  %tobool = trunc i8 %0 to i1
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* @ignore_EPIPE, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @close_stdout() #2 {
entry:
  %write_error = alloca i8*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @close_stream(%struct._IO_FILE* %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @ignore_EPIPE, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true1, label %if.then

land.lhs.true1:                                   ; preds = %land.lhs.true
  %call2 = call i32* @__errno_location() #15
  %2 = load i32, i32* %call2, align 4
  %cmp3 = icmp eq i32 %2, 32
  br i1 %cmp3, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true1, %land.lhs.true
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i8** %write_error, align 8
  %3 = load i8*, i8** @file_name, align 8
  %tobool4 = icmp ne i8* %3, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %call6 = call i32* @__errno_location() #15
  %4 = load i32, i32* %call6, align 4
  %5 = load i8*, i8** @file_name, align 8
  %call7 = call i8* @quotearg_colon(i8* %5)
  %6 = load i8*, i8** %write_error, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.66, i64 0, i64 0), i8* %call7, i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call8 = call i32* @__errno_location() #15
  %7 = load i32, i32* %call8, align 4
  %8 = load i8*, i8** %write_error, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.67, i64 0, i64 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %9 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %9) #14
  unreachable

if.end9:                                          ; preds = %land.lhs.true1, %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 @close_stream(%struct._IO_FILE* %10)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %11 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %11) #14
  unreachable

if.end13:                                         ; preds = %if.end9
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #9

; Function Attrs: noinline nounwind uwtable
define dso_local void @fdadvise(i32 %fd, i64 %offset, i64 %len, i32 %advice) #2 {
entry:
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %advice.addr = alloca i32, align 4
  %__x = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %advice, i32* %advice.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i64, i64* %offset.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %3 = load i32, i32* %advice.addr, align 4
  %call = call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11
  store i32 %call, i32* %__x, align 4
  %4 = load i32, i32* %__x, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @posix_fadvise(i32, i64, i64, i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* %fp, i32 %advice) #2 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %advice.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %advice, i32* %advice.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %1) #11
  %2 = load i32, i32* %advice.addr, align 4
  call void @fdadvise(i32 %call, i64 0, i64 0, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* %file, i8* %mode) #2 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %file.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %f = alloca i32, align 4
  %e = alloca i32, align 4
  %e15 = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then, label %if.end21

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @fileno(%struct._IO_FILE* %3) #11
  store i32 %call1, i32* %fd, align 4
  %4 = load i32, i32* %fd, align 4
  %cmp = icmp sle i32 0, %4
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* %fd, align 4
  %cmp2 = icmp sle i32 %5, 2
  br i1 %cmp2, label %if.then3, label %if.end20

if.then3:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %fd, align 4
  %call4 = call i32 @dup_safer(i32 %6)
  store i32 %call4, i32* %f, align 4
  %7 = load i32, i32* %f, align 4
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %call7 = call i32* @__errno_location() #15
  %8 = load i32, i32* %call7, align 4
  store i32 %8, i32* %e, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 @rpl_fclose(%struct._IO_FILE* %9)
  %10 = load i32, i32* %e, align 4
  %call9 = call i32* @__errno_location() #15
  store i32 %10, i32* %call9, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @rpl_fclose(%struct._IO_FILE* %11)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, i32* %f, align 4
  %13 = load i8*, i8** %mode.addr, align 8
  %call12 = call %struct._IO_FILE* @fdopen(i32 %12, i8* %13) #11
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %fp, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %call12, null
  br i1 %tobool13, label %if.end19, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %call16 = call i32* @__errno_location() #15
  %14 = load i32, i32* %call16, align 4
  store i32 %14, i32* %e15, align 4
  %15 = load i32, i32* %f, align 4
  %call17 = call i32 @close(i32 %15)
  %16 = load i32, i32* %e15, align 4
  %call18 = call i32* @__errno_location() #15
  store i32 %16, i32* %call18, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, align 8
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %land.lhs.true, %if.then
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %17, %struct._IO_FILE** %retval, align 8
  br label %return

return:                                           ; preds = %if.end21, %if.then14, %if.then6
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %retval, align 8
  ret %struct._IO_FILE* %18
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #6

declare dso_local i32 @close(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 %category) #2 {
entry:
  %retval = alloca i1, align 1
  %category.addr = alloca i32, align 4
  %locale = alloca [257 x i8], align 16
  store i32 %category, i32* %category.addr, align 4
  %0 = load i32, i32* %category.addr, align 4
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %locale, i64 0, i64 0
  %call = call i32 @setlocale_null_r(i32 %0, i8* %arraydecay, i64 257)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [257 x i8], [257 x i8]* %locale, i64 0, i64 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i64 0, i64 0)) #13
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [257 x i8], [257 x i8]* %locale, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.77, i64 0, i64 0)) #13
  %cmp5 = icmp eq i32 %call4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %1 = phi i1 [ true, %if.end ], [ %cmp5, %lor.rhs ]
  %lnot = xor i1 %1, true
  store i1 %lnot, i1* %retval, align 1
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %2 = load i1, i1* %retval, align 1
  ret i1 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initbuffer(%struct.linebuffer* %linebuffer) #2 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8
  %0 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %1 = bitcast %struct.linebuffer* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* %linebuffer, %struct._IO_FILE* %stream) #2 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %0, %struct._IO_FILE* %1, i8 signext 10)
  ret %struct.linebuffer* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %linebuffer, %struct._IO_FILE* %stream, i8 signext %delimiter) #2 {
entry:
  %retval = alloca %struct.linebuffer*, align 8
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %delimiter.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %oldsize = alloca i64, align 8
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8 %delimiter, i8* %delimiter.addr, align 1
  %0 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %buffer1 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer1, align 8
  store i8* %1, i8** %buffer, align 8
  %2 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %buffer2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer2, align 8
  store i8* %3, i8** %p, align 8
  %4 = load i8*, i8** %buffer, align 8
  %5 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %size = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %5, i32 0, i32 0
  %6 = load i64, i64* %size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %add.ptr, i8** %end, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @feof_unlocked(%struct._IO_FILE* %7) #11
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.linebuffer* null, %struct.linebuffer** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @getc_unlocked(%struct._IO_FILE* %8)
  store i32 %call3, i32* %c, align 4
  %9 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.then4, label %if.end16

if.then4:                                         ; preds = %do.body
  %10 = load i8*, i8** %p, align 8
  %11 = load i8*, i8** %buffer, align 8
  %cmp5 = icmp eq i8* %10, %11
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 @ferror_unlocked(%struct._IO_FILE* %12) #11
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.then4
  store %struct.linebuffer* null, %struct.linebuffer** %retval, align 8
  br label %return

if.end9:                                          ; preds = %lor.lhs.false
  %13 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 -1
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %15 = load i8, i8* %delimiter.addr, align 1
  %conv10 = sext i8 %15 to i32
  %cmp11 = icmp eq i32 %conv, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %do.end

if.end14:                                         ; preds = %if.end9
  %16 = load i8, i8* %delimiter.addr, align 1
  %conv15 = sext i8 %16 to i32
  store i32 %conv15, i32* %c, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %do.body
  %17 = load i8*, i8** %p, align 8
  %18 = load i8*, i8** %end, align 8
  %cmp17 = icmp eq i8* %17, %18
  br i1 %cmp17, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.end16
  %19 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %size20 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %19, i32 0, i32 0
  %20 = load i64, i64* %size20, align 8
  store i64 %20, i64* %oldsize, align 8
  %21 = load i8*, i8** %buffer, align 8
  %22 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %size21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %22, i32 0, i32 0
  %call22 = call i8* @x2realloc(i8* %21, i64* %size21)
  store i8* %call22, i8** %buffer, align 8
  %23 = load i8*, i8** %buffer, align 8
  %24 = load i64, i64* %oldsize, align 8
  %add.ptr23 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %add.ptr23, i8** %p, align 8
  %25 = load i8*, i8** %buffer, align 8
  %26 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %buffer24 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %26, i32 0, i32 2
  store i8* %25, i8** %buffer24, align 8
  %27 = load i8*, i8** %buffer, align 8
  %28 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %size25 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %28, i32 0, i32 0
  %29 = load i64, i64* %size25, align 8
  %add.ptr26 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %add.ptr26, i8** %end, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end16
  %30 = load i32, i32* %c, align 4
  %conv28 = trunc i32 %30 to i8
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv28, i8* %31, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end27
  %32 = load i32, i32* %c, align 4
  %33 = load i8, i8* %delimiter.addr, align 1
  %conv29 = sext i8 %33 to i32
  %cmp30 = icmp ne i32 %32, %conv29
  br i1 %cmp30, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then13
  %34 = load i8*, i8** %p, align 8
  %35 = load i8*, i8** %buffer, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %35 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %36 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %36, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %length, align 8
  %37 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  store %struct.linebuffer* %37, %struct.linebuffer** %retval, align 8
  br label %return

return:                                           ; preds = %do.end, %if.then8, %if.then
  %38 = load %struct.linebuffer*, %struct.linebuffer** %retval, align 8
  ret %struct.linebuffer* %38
}

; Function Attrs: nounwind
declare dso_local i32 @feof_unlocked(%struct._IO_FILE*) #6

declare dso_local i32 @getc_unlocked(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @freebuffer(%struct.linebuffer* %linebuffer) #2 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8
  %0 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8
  call void @free(i8* %1) #11
  ret void
}

; Function Attrs: noinline nounwind readonly uwtable
define dso_local i32 @memcasecmp(i8* %vs1, i8* %vs2, i64 %n) #10 {
entry:
  %retval = alloca i32, align 4
  %vs1.addr = alloca i8*, align 8
  %vs2.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  %u1 = alloca i8, align 1
  %u2 = alloca i8, align 1
  %U1 = alloca i32, align 4
  %U2 = alloca i32, align 4
  %diff = alloca i32, align 4
  store i8* %vs1, i8** %vs1.addr, align 8
  store i8* %vs2, i8** %vs2.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %vs1.addr, align 8
  store i8* %0, i8** %s1, align 8
  %1 = load i8*, i8** %vs2.addr, align 8
  store i8* %1, i8** %s2, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s1, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %u1, align 1
  %7 = load i8*, i8** %s2, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx1, align 1
  store i8 %9, i8* %u2, align 1
  %10 = load i8, i8* %u1, align 1
  %conv = zext i8 %10 to i32
  %call = call i32 @toupper(i32 %conv) #13
  store i32 %call, i32* %U1, align 4
  %11 = load i8, i8* %u2, align 1
  %conv2 = zext i8 %11 to i32
  %call3 = call i32 @toupper(i32 %conv2) #13
  store i32 %call3, i32* %U2, align 4
  %12 = load i32, i32* %U1, align 4
  %13 = load i32, i32* %U2, align 4
  %sub = sub nsw i32 %12, %13
  store i32 %sub, i32* %diff, align 4
  %14 = load i32, i32* %diff, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %diff, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_program_name(i8* %argv0) #2 {
entry:
  %argv0.addr = alloca i8*, align 8
  %slash = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %argv0, i8** %argv0.addr, align 8
  %0 = load i8*, i8** %argv0.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.86, i64 0, i64 0), %struct._IO_FILE* %1)
  call void @abort() #12
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %argv0.addr, align 8
  %call1 = call i8* @strrchr(i8* %2, i32 47) #13
  store i8* %call1, i8** %slash, align 8
  %3 = load i8*, i8** %slash, align 8
  %cmp2 = icmp ne i8* %3, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load i8*, i8** %slash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i8*, i8** %argv0.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %5, %cond.false ]
  store i8* %cond, i8** %base, align 8
  %6 = load i8*, i8** %base, align 8
  %7 = load i8*, i8** %argv0.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp sge i64 %sub.ptr.sub, 7
  br i1 %cmp3, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i8*, i8** %base, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 -7
  %call5 = call i32 @strncmp(i8* %add.ptr4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.87, i64 0, i64 0), i64 7) #13
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %9 = load i8*, i8** %base, align 8
  store i8* %9, i8** %argv0.addr, align 8
  %10 = load i8*, i8** %base, align 8
  %call8 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i64 3) #13
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then7
  %11 = load i8*, i8** %base, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %11, i64 3
  store i8* %add.ptr11, i8** %argv0.addr, align 8
  %12 = load i8*, i8** %argv0.addr, align 8
  store i8* %12, i8** @program_invocation_short_name, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %cond.end
  %13 = load i8*, i8** %argv0.addr, align 8
  store i8* %13, i8** @program_name, align 8
  %14 = load i8*, i8** %argv0.addr, align 8
  store i8* %14, i8** @program_invocation_name, align 8
  ret void
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #2 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %call = call i32* @__errno_location() #15
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %e, align 4
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ]
  %3 = bitcast %struct.quoting_options* %cond to i8*
  %call1 = call i8* @xmemdup(i8* %3, i64 56)
  %4 = bitcast i8* %call1 to %struct.quoting_options*
  store %struct.quoting_options* %4, %struct.quoting_options** %p, align 8
  %5 = load i32, i32* %e, align 4
  %call2 = call i32* @__errno_location() #15
  store i32 %5, i32* %call2, align 4
  %6 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  ret %struct.quoting_options* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* %o) #2 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ]
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0
  %2 = load i32, i32* %style, align 8
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #2 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ]
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0
  store i32 %0, i32* %style, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) #2 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %p = alloca i32*, align 8
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i32 %i, i32* %i.addr, align 4
  %0 = load i8, i8* %c.addr, align 1
  store i8 %0, i8* %uc, align 1
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ]
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %3 = load i8, i8* %uc, align 1
  %conv = zext i8 %3 to i64
  %div = udiv i64 %conv, 32
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 %div
  store i32* %add.ptr, i32** %p, align 8
  %4 = load i8, i8* %uc, align 1
  %conv1 = zext i8 %4 to i64
  %rem = urem i64 %conv1, 32
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %shift, align 4
  %5 = load i32*, i32** %p, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %shift, align 4
  %shr = lshr i32 %6, %7
  %and = and i32 %shr, 1
  store i32 %and, i32* %r, align 4
  %8 = load i32, i32* %i.addr, align 4
  %and3 = and i32 %8, 1
  %9 = load i32, i32* %r, align 4
  %xor = xor i32 %and3, %9
  %10 = load i32, i32* %shift, align 4
  %shl = shl i32 %xor, %10
  %11 = load i32*, i32** %p, align 8
  %12 = load i32, i32* %11, align 4
  %xor4 = xor i32 %12, %shl
  store i32 %xor4, i32* %11, align 4
  %13 = load i32, i32* %r, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %o, i32 %i) #2 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %i.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %1, i32 0, i32 1
  %2 = load i32, i32* %flags, align 4
  store i32 %2, i32* %r, align 4
  %3 = load i32, i32* %i.addr, align 4
  %4 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i32 0, i32 1
  store i32 %3, i32* %flags1, align 4
  %5 = load i32, i32* %r, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %o, i8* %left_quote, i8* %right_quote) #2 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8
  store i8* %right_quote, i8** %right_quote.addr, align 8
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %1, i32 0, i32 0
  store i32 10, i32* %style, align 8
  %2 = load i8*, i8** %left_quote.addr, align 8
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** %right_quote.addr, align 8
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void @abort() #12
  unreachable

if.end4:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %left_quote.addr, align 8
  %5 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %left_quote5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i32 0, i32 3
  store i8* %4, i8** %left_quote5, align 8
  %6 = load i8*, i8** %right_quote.addr, align 8
  %7 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %right_quote6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i32 0, i32 4
  store i8* %6, i8** %right_quote6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, %struct.quoting_options* %o) #2 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %r = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffersize, i64* %buffersize.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ]
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8
  %call = call i32* @__errno_location() #15
  %2 = load i32, i32* %call, align 4
  store i32 %2, i32* %e, align 4
  %3 = load i8*, i8** %buffer.addr, align 8
  %4 = load i64, i64* %buffersize.addr, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %6 = load i64, i64* %argsize.addr, align 8
  %7 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i32 0, i32 0
  %8 = load i32, i32* %style, align 8
  %9 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 1
  %10 = load i32, i32* %flags, align 4
  %11 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %12 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 3
  %13 = load i8*, i8** %left_quote, align 8
  %14 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 4
  %15 = load i8*, i8** %right_quote, align 8
  %call1 = call i64 @quotearg_buffer_restyled(i8* %3, i64 %4, i8* %5, i64 %6, i32 %8, i32 %10, i32* %arraydecay, i8* %13, i8* %15)
  store i64 %call1, i64* %r, align 8
  %16 = load i32, i32* %e, align 4
  %call2 = call i32* @__errno_location() #15
  store i32 %16, i32* %call2, align 4
  %17 = load i64, i64* %r, align 8
  ret i64 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, i32 %quoting_style, i32 %flags, i32* %quote_these_too, i8* %left_quote, i8* %right_quote) #2 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %quoting_style.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %quote_these_too.addr = alloca i32*, align 8
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %orig_buffersize = alloca i64, align 8
  %quote_string = alloca i8*, align 8
  %quote_string_len = alloca i64, align 8
  %backslash_escapes = alloca i8, align 1
  %unibyte_locale = alloca i8, align 1
  %elide_outer_quotes = alloca i8, align 1
  %pending_shell_escape_end = alloca i8, align 1
  %encountered_single_quote = alloca i8, align 1
  %all_c_and_shell_quote_compat = alloca i8, align 1
  %c = alloca i8, align 1
  %esc = alloca i8, align 1
  %is_right_quote = alloca i8, align 1
  %escaping = alloca i8, align 1
  %c_and_shell_quote_compat = alloca i8, align 1
  %m = alloca i64, align 8
  %printable = alloca i8, align 1
  %mbstate = alloca %struct.__mbstate_t, align 4
  %w = alloca i32, align 4
  %bytes = alloca i64, align 8
  %j = alloca i64, align 8
  %ilim = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i64 %buffersize, i64* %buffersize.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i32 %quoting_style, i32* %quoting_style.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %quote_these_too, i32** %quote_these_too.addr, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8
  store i8* %right_quote, i8** %right_quote.addr, align 8
  store i64 0, i64* %len, align 8
  store i64 0, i64* %orig_buffersize, align 8
  store i8* null, i8** %quote_string, align 8
  store i64 0, i64* %quote_string_len, align 8
  store i8 0, i8* %backslash_escapes, align 1
  %call = call i64 @__ctype_get_mb_cur_max() #11
  %cmp = icmp eq i64 %call, 1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %unibyte_locale, align 1
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 2
  %cmp1 = icmp ne i32 %and, 0
  %frombool2 = zext i1 %cmp1 to i8
  store i8 %frombool2, i8* %elide_outer_quotes, align 1
  store i8 0, i8* %pending_shell_escape_end, align 1
  store i8 0, i8* %encountered_single_quote, align 1
  store i8 1, i8* %all_c_and_shell_quote_compat, align 1
  br label %process_input

process_input:                                    ; preds = %if.then701, %entry
  %1 = load i32, i32* %quoting_style.addr, align 4
  switch i32 %1, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb3
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb8
    i32 10, label %sw.bb8
    i32 3, label %sw.bb26
    i32 1, label %sw.bb27
    i32 4, label %sw.bb28
    i32 2, label %sw.bb32
    i32 0, label %sw.bb43
  ]

sw.bb:                                            ; preds = %process_input
  store i32 5, i32* %quoting_style.addr, align 4
  store i8 1, i8* %elide_outer_quotes, align 1
  br label %sw.bb3

sw.bb3:                                           ; preds = %process_input, %sw.bb
  %2 = load i8, i8* %elide_outer_quotes, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %sw.bb3
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load i64, i64* %len, align 8
  %4 = load i64, i64* %buffersize.addr, align 8
  %cmp4 = icmp ult i64 %3, %4
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %do.body
  %5 = load i8*, i8** %buffer.addr, align 8
  %6 = load i64, i64* %len, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  store i8 34, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %do.body
  %7 = load i64, i64* %len, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %len, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end6

if.end6:                                          ; preds = %do.end, %sw.bb3
  store i8 1, i8* %backslash_escapes, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.99, i64 0, i64 0), i8** %quote_string, align 8
  store i64 1, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %process_input
  store i8 1, i8* %backslash_escapes, align 1
  store i8 0, i8* %elide_outer_quotes, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %process_input, %process_input, %process_input
  %8 = load i32, i32* %quoting_style.addr, align 4
  %cmp9 = icmp ne i32 %8, 10
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %sw.bb8
  %9 = load i32, i32* %quoting_style.addr, align 4
  %call11 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.100, i64 0, i64 0), i32 %9)
  store i8* %call11, i8** %left_quote.addr, align 8
  %10 = load i32, i32* %quoting_style.addr, align 4
  %call12 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), i32 %10)
  store i8* %call12, i8** %right_quote.addr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %sw.bb8
  %11 = load i8, i8* %elide_outer_quotes, align 1
  %tobool14 = trunc i8 %11 to i1
  br i1 %tobool14, label %if.end24, label %if.then15

if.then15:                                        ; preds = %if.end13
  %12 = load i8*, i8** %left_quote.addr, align 8
  store i8* %12, i8** %quote_string, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %13 = load i8*, i8** %quote_string, align 8
  %14 = load i8, i8* %13, align 1
  %tobool16 = icmp ne i8 %14, 0
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body17

do.body17:                                        ; preds = %for.body
  %15 = load i64, i64* %len, align 8
  %16 = load i64, i64* %buffersize.addr, align 8
  %cmp18 = icmp ult i64 %15, %16
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body17
  %17 = load i8*, i8** %quote_string, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i8*, i8** %buffer.addr, align 8
  %20 = load i64, i64* %len, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 %18, i8* %arrayidx20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body17
  %21 = load i64, i64* %len, align 8
  %inc22 = add i64 %21, 1
  store i64 %inc22, i64* %len, align 8
  br label %do.end23

do.end23:                                         ; preds = %if.end21
  br label %for.inc

for.inc:                                          ; preds = %do.end23
  %22 = load i8*, i8** %quote_string, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %quote_string, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.end13
  store i8 1, i8* %backslash_escapes, align 1
  %23 = load i8*, i8** %right_quote.addr, align 8
  store i8* %23, i8** %quote_string, align 8
  %24 = load i8*, i8** %quote_string, align 8
  %call25 = call i64 @strlen(i8* %24) #13
  store i64 %call25, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %process_input
  store i8 1, i8* %backslash_escapes, align 1
  br label %sw.bb27

sw.bb27:                                          ; preds = %process_input, %sw.bb26
  store i8 1, i8* %elide_outer_quotes, align 1
  br label %sw.bb28

sw.bb28:                                          ; preds = %process_input, %sw.bb27
  %25 = load i8, i8* %elide_outer_quotes, align 1
  %tobool29 = trunc i8 %25 to i1
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %sw.bb28
  store i8 1, i8* %backslash_escapes, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %sw.bb28
  br label %sw.bb32

sw.bb32:                                          ; preds = %process_input, %if.end31
  store i32 2, i32* %quoting_style.addr, align 4
  %26 = load i8, i8* %elide_outer_quotes, align 1
  %tobool33 = trunc i8 %26 to i1
  br i1 %tobool33, label %if.end42, label %if.then34

if.then34:                                        ; preds = %sw.bb32
  br label %do.body35

do.body35:                                        ; preds = %if.then34
  %27 = load i64, i64* %len, align 8
  %28 = load i64, i64* %buffersize.addr, align 8
  %cmp36 = icmp ult i64 %27, %28
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %do.body35
  %29 = load i8*, i8** %buffer.addr, align 8
  %30 = load i64, i64* %len, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 39, i8* %arrayidx38, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %do.body35
  %31 = load i64, i64* %len, align 8
  %inc40 = add i64 %31, 1
  store i64 %inc40, i64* %len, align 8
  br label %do.end41

do.end41:                                         ; preds = %if.end39
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %sw.bb32
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0), i8** %quote_string, align 8
  store i64 1, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb43:                                          ; preds = %process_input
  store i8 0, i8* %elide_outer_quotes, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %process_input
  call void @abort() #12
  unreachable

sw.epilog:                                        ; preds = %sw.bb43, %if.end42, %if.end24, %sw.bb7, %if.end6
  store i64 0, i64* %i, align 8
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc673, %sw.epilog
  %32 = load i64, i64* %argsize.addr, align 8
  %cmp45 = icmp eq i64 %32, -1
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond44
  %33 = load i8*, i8** %arg.addr, align 8
  %34 = load i64, i64* %i, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %33, i64 %34
  %35 = load i8, i8* %arrayidx46, align 1
  %conv = sext i8 %35 to i32
  %cmp47 = icmp eq i32 %conv, 0
  %conv48 = zext i1 %cmp47 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond44
  %36 = load i64, i64* %i, align 8
  %37 = load i64, i64* %argsize.addr, align 8
  %cmp49 = icmp eq i64 %36, %37
  %conv50 = zext i1 %cmp49 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv48, %cond.true ], [ %conv50, %cond.false ]
  %tobool51 = icmp ne i32 %cond, 0
  %lnot = xor i1 %tobool51, true
  br i1 %lnot, label %for.body52, label %for.end675

for.body52:                                       ; preds = %cond.end
  store i8 0, i8* %is_right_quote, align 1
  store i8 0, i8* %escaping, align 1
  store i8 0, i8* %c_and_shell_quote_compat, align 1
  %38 = load i8, i8* %backslash_escapes, align 1
  %tobool53 = trunc i8 %38 to i1
  br i1 %tobool53, label %land.lhs.true, label %if.end80

land.lhs.true:                                    ; preds = %for.body52
  %39 = load i32, i32* %quoting_style.addr, align 4
  %cmp55 = icmp ne i32 %39, 2
  br i1 %cmp55, label %land.lhs.true57, label %if.end80

land.lhs.true57:                                  ; preds = %land.lhs.true
  %40 = load i64, i64* %quote_string_len, align 8
  %tobool58 = icmp ne i64 %40, 0
  br i1 %tobool58, label %land.lhs.true59, label %if.end80

land.lhs.true59:                                  ; preds = %land.lhs.true57
  %41 = load i64, i64* %i, align 8
  %42 = load i64, i64* %quote_string_len, align 8
  %add = add i64 %41, %42
  %43 = load i64, i64* %argsize.addr, align 8
  %cmp60 = icmp eq i64 %43, -1
  br i1 %cmp60, label %land.lhs.true62, label %cond.false67

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %44 = load i64, i64* %quote_string_len, align 8
  %cmp63 = icmp ult i64 1, %44
  br i1 %cmp63, label %cond.true65, label %cond.false67

cond.true65:                                      ; preds = %land.lhs.true62
  %45 = load i8*, i8** %arg.addr, align 8
  %call66 = call i64 @strlen(i8* %45) #13
  store i64 %call66, i64* %argsize.addr, align 8
  br label %cond.end68

cond.false67:                                     ; preds = %land.lhs.true62, %land.lhs.true59
  %46 = load i64, i64* %argsize.addr, align 8
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.true65
  %cond69 = phi i64 [ %call66, %cond.true65 ], [ %46, %cond.false67 ]
  %cmp70 = icmp ule i64 %add, %cond69
  br i1 %cmp70, label %land.lhs.true72, label %if.end80

land.lhs.true72:                                  ; preds = %cond.end68
  %47 = load i8*, i8** %arg.addr, align 8
  %48 = load i64, i64* %i, align 8
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 %48
  %49 = load i8*, i8** %quote_string, align 8
  %50 = load i64, i64* %quote_string_len, align 8
  %call73 = call i32 @memcmp(i8* %add.ptr, i8* %49, i64 %50) #13
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.end80

if.then76:                                        ; preds = %land.lhs.true72
  %51 = load i8, i8* %elide_outer_quotes, align 1
  %tobool77 = trunc i8 %51 to i1
  br i1 %tobool77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then76
  br label %force_outer_quoting_style

if.end79:                                         ; preds = %if.then76
  store i8 1, i8* %is_right_quote, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %land.lhs.true72, %cond.end68, %land.lhs.true57, %land.lhs.true, %for.body52
  %52 = load i8*, i8** %arg.addr, align 8
  %53 = load i64, i64* %i, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = load i8, i8* %arrayidx81, align 1
  store i8 %54, i8* %c, align 1
  %55 = load i8, i8* %c, align 1
  %conv82 = zext i8 %55 to i32
  switch i32 %conv82, label %sw.default335 [
    i32 0, label %sw.bb83
    i32 63, label %sw.bb170
    i32 7, label %sw.bb236
    i32 8, label %sw.bb237
    i32 12, label %sw.bb238
    i32 10, label %sw.bb239
    i32 13, label %sw.bb240
    i32 9, label %sw.bb241
    i32 11, label %sw.bb242
    i32 92, label %sw.bb243
    i32 123, label %sw.bb270
    i32 125, label %sw.bb270
    i32 35, label %sw.bb283
    i32 126, label %sw.bb283
    i32 32, label %sw.bb288
    i32 33, label %sw.bb289
    i32 34, label %sw.bb289
    i32 36, label %sw.bb289
    i32 38, label %sw.bb289
    i32 40, label %sw.bb289
    i32 41, label %sw.bb289
    i32 42, label %sw.bb289
    i32 59, label %sw.bb289
    i32 60, label %sw.bb289
    i32 61, label %sw.bb289
    i32 62, label %sw.bb289
    i32 91, label %sw.bb289
    i32 94, label %sw.bb289
    i32 96, label %sw.bb289
    i32 124, label %sw.bb289
    i32 39, label %sw.bb297
    i32 37, label %sw.bb334
    i32 43, label %sw.bb334
    i32 44, label %sw.bb334
    i32 45, label %sw.bb334
    i32 46, label %sw.bb334
    i32 47, label %sw.bb334
    i32 48, label %sw.bb334
    i32 49, label %sw.bb334
    i32 50, label %sw.bb334
    i32 51, label %sw.bb334
    i32 52, label %sw.bb334
    i32 53, label %sw.bb334
    i32 54, label %sw.bb334
    i32 55, label %sw.bb334
    i32 56, label %sw.bb334
    i32 57, label %sw.bb334
    i32 58, label %sw.bb334
    i32 65, label %sw.bb334
    i32 66, label %sw.bb334
    i32 67, label %sw.bb334
    i32 68, label %sw.bb334
    i32 69, label %sw.bb334
    i32 70, label %sw.bb334
    i32 71, label %sw.bb334
    i32 72, label %sw.bb334
    i32 73, label %sw.bb334
    i32 74, label %sw.bb334
    i32 75, label %sw.bb334
    i32 76, label %sw.bb334
    i32 77, label %sw.bb334
    i32 78, label %sw.bb334
    i32 79, label %sw.bb334
    i32 80, label %sw.bb334
    i32 81, label %sw.bb334
    i32 82, label %sw.bb334
    i32 83, label %sw.bb334
    i32 84, label %sw.bb334
    i32 85, label %sw.bb334
    i32 86, label %sw.bb334
    i32 87, label %sw.bb334
    i32 88, label %sw.bb334
    i32 89, label %sw.bb334
    i32 90, label %sw.bb334
    i32 93, label %sw.bb334
    i32 95, label %sw.bb334
    i32 97, label %sw.bb334
    i32 98, label %sw.bb334
    i32 99, label %sw.bb334
    i32 100, label %sw.bb334
    i32 101, label %sw.bb334
    i32 102, label %sw.bb334
    i32 103, label %sw.bb334
    i32 104, label %sw.bb334
    i32 105, label %sw.bb334
    i32 106, label %sw.bb334
    i32 107, label %sw.bb334
    i32 108, label %sw.bb334
    i32 109, label %sw.bb334
    i32 110, label %sw.bb334
    i32 111, label %sw.bb334
    i32 112, label %sw.bb334
    i32 113, label %sw.bb334
    i32 114, label %sw.bb334
    i32 115, label %sw.bb334
    i32 116, label %sw.bb334
    i32 117, label %sw.bb334
    i32 118, label %sw.bb334
    i32 119, label %sw.bb334
    i32 120, label %sw.bb334
    i32 121, label %sw.bb334
    i32 122, label %sw.bb334
  ]

sw.bb83:                                          ; preds = %if.end80
  %56 = load i8, i8* %backslash_escapes, align 1
  %tobool84 = trunc i8 %56 to i1
  br i1 %tobool84, label %if.then85, label %if.else

if.then85:                                        ; preds = %sw.bb83
  br label %do.body86

do.body86:                                        ; preds = %if.then85
  %57 = load i8, i8* %elide_outer_quotes, align 1
  %tobool87 = trunc i8 %57 to i1
  br i1 %tobool87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %do.body86
  br label %force_outer_quoting_style

if.end89:                                         ; preds = %do.body86
  store i8 1, i8* %escaping, align 1
  %58 = load i32, i32* %quoting_style.addr, align 4
  %cmp90 = icmp eq i32 %58, 2
  br i1 %cmp90, label %land.lhs.true92, label %if.end119

land.lhs.true92:                                  ; preds = %if.end89
  %59 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool93 = trunc i8 %59 to i1
  br i1 %tobool93, label %if.end119, label %if.then94

if.then94:                                        ; preds = %land.lhs.true92
  br label %do.body95

do.body95:                                        ; preds = %if.then94
  %60 = load i64, i64* %len, align 8
  %61 = load i64, i64* %buffersize.addr, align 8
  %cmp96 = icmp ult i64 %60, %61
  br i1 %cmp96, label %if.then98, label %if.end100

if.then98:                                        ; preds = %do.body95
  %62 = load i8*, i8** %buffer.addr, align 8
  %63 = load i64, i64* %len, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 39, i8* %arrayidx99, align 1
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %do.body95
  %64 = load i64, i64* %len, align 8
  %inc101 = add i64 %64, 1
  store i64 %inc101, i64* %len, align 8
  br label %do.end102

do.end102:                                        ; preds = %if.end100
  br label %do.body103

do.body103:                                       ; preds = %do.end102
  %65 = load i64, i64* %len, align 8
  %66 = load i64, i64* %buffersize.addr, align 8
  %cmp104 = icmp ult i64 %65, %66
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %do.body103
  %67 = load i8*, i8** %buffer.addr, align 8
  %68 = load i64, i64* %len, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 36, i8* %arrayidx107, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %do.body103
  %69 = load i64, i64* %len, align 8
  %inc109 = add i64 %69, 1
  store i64 %inc109, i64* %len, align 8
  br label %do.end110

do.end110:                                        ; preds = %if.end108
  br label %do.body111

do.body111:                                       ; preds = %do.end110
  %70 = load i64, i64* %len, align 8
  %71 = load i64, i64* %buffersize.addr, align 8
  %cmp112 = icmp ult i64 %70, %71
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %do.body111
  %72 = load i8*, i8** %buffer.addr, align 8
  %73 = load i64, i64* %len, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 39, i8* %arrayidx115, align 1
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %do.body111
  %74 = load i64, i64* %len, align 8
  %inc117 = add i64 %74, 1
  store i64 %inc117, i64* %len, align 8
  br label %do.end118

do.end118:                                        ; preds = %if.end116
  store i8 1, i8* %pending_shell_escape_end, align 1
  br label %if.end119

if.end119:                                        ; preds = %do.end118, %land.lhs.true92, %if.end89
  br label %do.body120

do.body120:                                       ; preds = %if.end119
  %75 = load i64, i64* %len, align 8
  %76 = load i64, i64* %buffersize.addr, align 8
  %cmp121 = icmp ult i64 %75, %76
  br i1 %cmp121, label %if.then123, label %if.end125

if.then123:                                       ; preds = %do.body120
  %77 = load i8*, i8** %buffer.addr, align 8
  %78 = load i64, i64* %len, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 92, i8* %arrayidx124, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %do.body120
  %79 = load i64, i64* %len, align 8
  %inc126 = add i64 %79, 1
  store i64 %inc126, i64* %len, align 8
  br label %do.end127

do.end127:                                        ; preds = %if.end125
  br label %do.end128

do.end128:                                        ; preds = %do.end127
  %80 = load i32, i32* %quoting_style.addr, align 4
  %cmp129 = icmp ne i32 %80, 2
  br i1 %cmp129, label %land.lhs.true131, label %if.end164

land.lhs.true131:                                 ; preds = %do.end128
  %81 = load i64, i64* %i, align 8
  %add132 = add i64 %81, 1
  %82 = load i64, i64* %argsize.addr, align 8
  %cmp133 = icmp ult i64 %add132, %82
  br i1 %cmp133, label %land.lhs.true135, label %if.end164

land.lhs.true135:                                 ; preds = %land.lhs.true131
  %83 = load i8*, i8** %arg.addr, align 8
  %84 = load i64, i64* %i, align 8
  %add136 = add i64 %84, 1
  %arrayidx137 = getelementptr inbounds i8, i8* %83, i64 %add136
  %85 = load i8, i8* %arrayidx137, align 1
  %conv138 = sext i8 %85 to i32
  %cmp139 = icmp sle i32 48, %conv138
  br i1 %cmp139, label %land.lhs.true141, label %if.end164

land.lhs.true141:                                 ; preds = %land.lhs.true135
  %86 = load i8*, i8** %arg.addr, align 8
  %87 = load i64, i64* %i, align 8
  %add142 = add i64 %87, 1
  %arrayidx143 = getelementptr inbounds i8, i8* %86, i64 %add142
  %88 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %88 to i32
  %cmp145 = icmp sle i32 %conv144, 57
  br i1 %cmp145, label %if.then147, label %if.end164

if.then147:                                       ; preds = %land.lhs.true141
  br label %do.body148

do.body148:                                       ; preds = %if.then147
  %89 = load i64, i64* %len, align 8
  %90 = load i64, i64* %buffersize.addr, align 8
  %cmp149 = icmp ult i64 %89, %90
  br i1 %cmp149, label %if.then151, label %if.end153

if.then151:                                       ; preds = %do.body148
  %91 = load i8*, i8** %buffer.addr, align 8
  %92 = load i64, i64* %len, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 48, i8* %arrayidx152, align 1
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %do.body148
  %93 = load i64, i64* %len, align 8
  %inc154 = add i64 %93, 1
  store i64 %inc154, i64* %len, align 8
  br label %do.end155

do.end155:                                        ; preds = %if.end153
  br label %do.body156

do.body156:                                       ; preds = %do.end155
  %94 = load i64, i64* %len, align 8
  %95 = load i64, i64* %buffersize.addr, align 8
  %cmp157 = icmp ult i64 %94, %95
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %do.body156
  %96 = load i8*, i8** %buffer.addr, align 8
  %97 = load i64, i64* %len, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 48, i8* %arrayidx160, align 1
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %do.body156
  %98 = load i64, i64* %len, align 8
  %inc162 = add i64 %98, 1
  store i64 %inc162, i64* %len, align 8
  br label %do.end163

do.end163:                                        ; preds = %if.end161
  br label %if.end164

if.end164:                                        ; preds = %do.end163, %land.lhs.true141, %land.lhs.true135, %land.lhs.true131, %do.end128
  store i8 48, i8* %c, align 1
  br label %if.end169

if.else:                                          ; preds = %sw.bb83
  %99 = load i32, i32* %flags.addr, align 4
  %and165 = and i32 %99, 1
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %if.else
  br label %for.inc673

if.end168:                                        ; preds = %if.else
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.end164
  br label %sw.epilog564

sw.bb170:                                         ; preds = %if.end80
  %100 = load i32, i32* %quoting_style.addr, align 4
  switch i32 %100, label %sw.default234 [
    i32 2, label %sw.bb171
    i32 5, label %sw.bb175
  ]

sw.bb171:                                         ; preds = %sw.bb170
  %101 = load i8, i8* %elide_outer_quotes, align 1
  %tobool172 = trunc i8 %101 to i1
  br i1 %tobool172, label %if.then173, label %if.end174

if.then173:                                       ; preds = %sw.bb171
  br label %force_outer_quoting_style

if.end174:                                        ; preds = %sw.bb171
  br label %sw.epilog235

sw.bb175:                                         ; preds = %sw.bb170
  %102 = load i32, i32* %flags.addr, align 4
  %and176 = and i32 %102, 4
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %land.lhs.true178, label %if.end233

land.lhs.true178:                                 ; preds = %sw.bb175
  %103 = load i64, i64* %i, align 8
  %add179 = add i64 %103, 2
  %104 = load i64, i64* %argsize.addr, align 8
  %cmp180 = icmp ult i64 %add179, %104
  br i1 %cmp180, label %land.lhs.true182, label %if.end233

land.lhs.true182:                                 ; preds = %land.lhs.true178
  %105 = load i8*, i8** %arg.addr, align 8
  %106 = load i64, i64* %i, align 8
  %add183 = add i64 %106, 1
  %arrayidx184 = getelementptr inbounds i8, i8* %105, i64 %add183
  %107 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %107 to i32
  %cmp186 = icmp eq i32 %conv185, 63
  br i1 %cmp186, label %if.then188, label %if.end233

if.then188:                                       ; preds = %land.lhs.true182
  %108 = load i8*, i8** %arg.addr, align 8
  %109 = load i64, i64* %i, align 8
  %add189 = add i64 %109, 2
  %arrayidx190 = getelementptr inbounds i8, i8* %108, i64 %add189
  %110 = load i8, i8* %arrayidx190, align 1
  %conv191 = sext i8 %110 to i32
  switch i32 %conv191, label %sw.default231 [
    i32 33, label %sw.bb192
    i32 39, label %sw.bb192
    i32 40, label %sw.bb192
    i32 41, label %sw.bb192
    i32 45, label %sw.bb192
    i32 47, label %sw.bb192
    i32 60, label %sw.bb192
    i32 61, label %sw.bb192
    i32 62, label %sw.bb192
  ]

sw.bb192:                                         ; preds = %if.then188, %if.then188, %if.then188, %if.then188, %if.then188, %if.then188, %if.then188, %if.then188, %if.then188
  %111 = load i8, i8* %elide_outer_quotes, align 1
  %tobool193 = trunc i8 %111 to i1
  br i1 %tobool193, label %if.then194, label %if.end195

if.then194:                                       ; preds = %sw.bb192
  br label %force_outer_quoting_style

if.end195:                                        ; preds = %sw.bb192
  %112 = load i8*, i8** %arg.addr, align 8
  %113 = load i64, i64* %i, align 8
  %add196 = add i64 %113, 2
  %arrayidx197 = getelementptr inbounds i8, i8* %112, i64 %add196
  %114 = load i8, i8* %arrayidx197, align 1
  store i8 %114, i8* %c, align 1
  %115 = load i64, i64* %i, align 8
  %add198 = add i64 %115, 2
  store i64 %add198, i64* %i, align 8
  br label %do.body199

do.body199:                                       ; preds = %if.end195
  %116 = load i64, i64* %len, align 8
  %117 = load i64, i64* %buffersize.addr, align 8
  %cmp200 = icmp ult i64 %116, %117
  br i1 %cmp200, label %if.then202, label %if.end204

if.then202:                                       ; preds = %do.body199
  %118 = load i8*, i8** %buffer.addr, align 8
  %119 = load i64, i64* %len, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8 63, i8* %arrayidx203, align 1
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %do.body199
  %120 = load i64, i64* %len, align 8
  %inc205 = add i64 %120, 1
  store i64 %inc205, i64* %len, align 8
  br label %do.end206

do.end206:                                        ; preds = %if.end204
  br label %do.body207

do.body207:                                       ; preds = %do.end206
  %121 = load i64, i64* %len, align 8
  %122 = load i64, i64* %buffersize.addr, align 8
  %cmp208 = icmp ult i64 %121, %122
  br i1 %cmp208, label %if.then210, label %if.end212

if.then210:                                       ; preds = %do.body207
  %123 = load i8*, i8** %buffer.addr, align 8
  %124 = load i64, i64* %len, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 34, i8* %arrayidx211, align 1
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %do.body207
  %125 = load i64, i64* %len, align 8
  %inc213 = add i64 %125, 1
  store i64 %inc213, i64* %len, align 8
  br label %do.end214

do.end214:                                        ; preds = %if.end212
  br label %do.body215

do.body215:                                       ; preds = %do.end214
  %126 = load i64, i64* %len, align 8
  %127 = load i64, i64* %buffersize.addr, align 8
  %cmp216 = icmp ult i64 %126, %127
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %do.body215
  %128 = load i8*, i8** %buffer.addr, align 8
  %129 = load i64, i64* %len, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 34, i8* %arrayidx219, align 1
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %do.body215
  %130 = load i64, i64* %len, align 8
  %inc221 = add i64 %130, 1
  store i64 %inc221, i64* %len, align 8
  br label %do.end222

do.end222:                                        ; preds = %if.end220
  br label %do.body223

do.body223:                                       ; preds = %do.end222
  %131 = load i64, i64* %len, align 8
  %132 = load i64, i64* %buffersize.addr, align 8
  %cmp224 = icmp ult i64 %131, %132
  br i1 %cmp224, label %if.then226, label %if.end228

if.then226:                                       ; preds = %do.body223
  %133 = load i8*, i8** %buffer.addr, align 8
  %134 = load i64, i64* %len, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8 63, i8* %arrayidx227, align 1
  br label %if.end228

if.end228:                                        ; preds = %if.then226, %do.body223
  %135 = load i64, i64* %len, align 8
  %inc229 = add i64 %135, 1
  store i64 %inc229, i64* %len, align 8
  br label %do.end230

do.end230:                                        ; preds = %if.end228
  br label %sw.epilog232

sw.default231:                                    ; preds = %if.then188
  br label %sw.epilog232

sw.epilog232:                                     ; preds = %sw.default231, %do.end230
  br label %if.end233

if.end233:                                        ; preds = %sw.epilog232, %land.lhs.true182, %land.lhs.true178, %sw.bb175
  br label %sw.epilog235

sw.default234:                                    ; preds = %sw.bb170
  br label %sw.epilog235

sw.epilog235:                                     ; preds = %sw.default234, %if.end233, %if.end174
  br label %sw.epilog564

sw.bb236:                                         ; preds = %if.end80
  store i8 97, i8* %esc, align 1
  br label %c_escape

sw.bb237:                                         ; preds = %if.end80
  store i8 98, i8* %esc, align 1
  br label %c_escape

sw.bb238:                                         ; preds = %if.end80
  store i8 102, i8* %esc, align 1
  br label %c_escape

sw.bb239:                                         ; preds = %if.end80
  store i8 110, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb240:                                         ; preds = %if.end80
  store i8 114, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb241:                                         ; preds = %if.end80
  store i8 116, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb242:                                         ; preds = %if.end80
  store i8 118, i8* %esc, align 1
  br label %c_escape

sw.bb243:                                         ; preds = %if.end80
  %136 = load i8, i8* %c, align 1
  store i8 %136, i8* %esc, align 1
  %137 = load i32, i32* %quoting_style.addr, align 4
  %cmp244 = icmp eq i32 %137, 2
  br i1 %cmp244, label %if.then246, label %if.end250

if.then246:                                       ; preds = %sw.bb243
  %138 = load i8, i8* %elide_outer_quotes, align 1
  %tobool247 = trunc i8 %138 to i1
  br i1 %tobool247, label %if.then248, label %if.end249

if.then248:                                       ; preds = %if.then246
  br label %force_outer_quoting_style

if.end249:                                        ; preds = %if.then246
  br label %store_c

if.end250:                                        ; preds = %sw.bb243
  %139 = load i8, i8* %backslash_escapes, align 1
  %tobool251 = trunc i8 %139 to i1
  br i1 %tobool251, label %land.lhs.true253, label %if.end259

land.lhs.true253:                                 ; preds = %if.end250
  %140 = load i8, i8* %elide_outer_quotes, align 1
  %tobool254 = trunc i8 %140 to i1
  br i1 %tobool254, label %land.lhs.true256, label %if.end259

land.lhs.true256:                                 ; preds = %land.lhs.true253
  %141 = load i64, i64* %quote_string_len, align 8
  %tobool257 = icmp ne i64 %141, 0
  br i1 %tobool257, label %if.then258, label %if.end259

if.then258:                                       ; preds = %land.lhs.true256
  br label %store_c

if.end259:                                        ; preds = %land.lhs.true256, %land.lhs.true253, %if.end250
  br label %c_and_shell_escape

c_and_shell_escape:                               ; preds = %if.end259, %sw.bb241, %sw.bb240, %sw.bb239
  %142 = load i32, i32* %quoting_style.addr, align 4
  %cmp260 = icmp eq i32 %142, 2
  br i1 %cmp260, label %land.lhs.true262, label %if.end266

land.lhs.true262:                                 ; preds = %c_and_shell_escape
  %143 = load i8, i8* %elide_outer_quotes, align 1
  %tobool263 = trunc i8 %143 to i1
  br i1 %tobool263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %land.lhs.true262
  br label %force_outer_quoting_style

if.end266:                                        ; preds = %land.lhs.true262, %c_and_shell_escape
  br label %c_escape

c_escape:                                         ; preds = %if.end266, %sw.bb242, %sw.bb238, %sw.bb237, %sw.bb236
  %144 = load i8, i8* %backslash_escapes, align 1
  %tobool267 = trunc i8 %144 to i1
  br i1 %tobool267, label %if.then268, label %if.end269

if.then268:                                       ; preds = %c_escape
  %145 = load i8, i8* %esc, align 1
  store i8 %145, i8* %c, align 1
  br label %store_escape

if.end269:                                        ; preds = %c_escape
  br label %sw.epilog564

sw.bb270:                                         ; preds = %if.end80, %if.end80
  %146 = load i64, i64* %argsize.addr, align 8
  %cmp271 = icmp eq i64 %146, -1
  br i1 %cmp271, label %cond.true273, label %cond.false278

cond.true273:                                     ; preds = %sw.bb270
  %147 = load i8*, i8** %arg.addr, align 8
  %arrayidx274 = getelementptr inbounds i8, i8* %147, i64 1
  %148 = load i8, i8* %arrayidx274, align 1
  %conv275 = sext i8 %148 to i32
  %cmp276 = icmp eq i32 %conv275, 0
  br i1 %cmp276, label %if.end282, label %if.then281

cond.false278:                                    ; preds = %sw.bb270
  %149 = load i64, i64* %argsize.addr, align 8
  %cmp279 = icmp eq i64 %149, 1
  br i1 %cmp279, label %if.end282, label %if.then281

if.then281:                                       ; preds = %cond.false278, %cond.true273
  br label %sw.epilog564

if.end282:                                        ; preds = %cond.false278, %cond.true273
  br label %sw.bb283

sw.bb283:                                         ; preds = %if.end80, %if.end80, %if.end282
  %150 = load i64, i64* %i, align 8
  %cmp284 = icmp ne i64 %150, 0
  br i1 %cmp284, label %if.then286, label %if.end287

if.then286:                                       ; preds = %sw.bb283
  br label %sw.epilog564

if.end287:                                        ; preds = %sw.bb283
  br label %sw.bb288

sw.bb288:                                         ; preds = %if.end80, %if.end287
  store i8 1, i8* %c_and_shell_quote_compat, align 1
  br label %sw.bb289

sw.bb289:                                         ; preds = %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %sw.bb288
  %151 = load i32, i32* %quoting_style.addr, align 4
  %cmp290 = icmp eq i32 %151, 2
  br i1 %cmp290, label %land.lhs.true292, label %if.end296

land.lhs.true292:                                 ; preds = %sw.bb289
  %152 = load i8, i8* %elide_outer_quotes, align 1
  %tobool293 = trunc i8 %152 to i1
  br i1 %tobool293, label %if.then295, label %if.end296

if.then295:                                       ; preds = %land.lhs.true292
  br label %force_outer_quoting_style

if.end296:                                        ; preds = %land.lhs.true292, %sw.bb289
  br label %sw.epilog564

sw.bb297:                                         ; preds = %if.end80
  store i8 1, i8* %encountered_single_quote, align 1
  store i8 1, i8* %c_and_shell_quote_compat, align 1
  %153 = load i32, i32* %quoting_style.addr, align 4
  %cmp298 = icmp eq i32 %153, 2
  br i1 %cmp298, label %if.then300, label %if.end333

if.then300:                                       ; preds = %sw.bb297
  %154 = load i8, i8* %elide_outer_quotes, align 1
  %tobool301 = trunc i8 %154 to i1
  br i1 %tobool301, label %if.then302, label %if.end303

if.then302:                                       ; preds = %if.then300
  br label %force_outer_quoting_style

if.end303:                                        ; preds = %if.then300
  %155 = load i64, i64* %buffersize.addr, align 8
  %tobool304 = icmp ne i64 %155, 0
  br i1 %tobool304, label %land.lhs.true305, label %if.end308

land.lhs.true305:                                 ; preds = %if.end303
  %156 = load i64, i64* %orig_buffersize, align 8
  %tobool306 = icmp ne i64 %156, 0
  br i1 %tobool306, label %if.end308, label %if.then307

if.then307:                                       ; preds = %land.lhs.true305
  %157 = load i64, i64* %buffersize.addr, align 8
  store i64 %157, i64* %orig_buffersize, align 8
  store i64 0, i64* %buffersize.addr, align 8
  br label %if.end308

if.end308:                                        ; preds = %if.then307, %land.lhs.true305, %if.end303
  br label %do.body309

do.body309:                                       ; preds = %if.end308
  %158 = load i64, i64* %len, align 8
  %159 = load i64, i64* %buffersize.addr, align 8
  %cmp310 = icmp ult i64 %158, %159
  br i1 %cmp310, label %if.then312, label %if.end314

if.then312:                                       ; preds = %do.body309
  %160 = load i8*, i8** %buffer.addr, align 8
  %161 = load i64, i64* %len, align 8
  %arrayidx313 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8 39, i8* %arrayidx313, align 1
  br label %if.end314

if.end314:                                        ; preds = %if.then312, %do.body309
  %162 = load i64, i64* %len, align 8
  %inc315 = add i64 %162, 1
  store i64 %inc315, i64* %len, align 8
  br label %do.end316

do.end316:                                        ; preds = %if.end314
  br label %do.body317

do.body317:                                       ; preds = %do.end316
  %163 = load i64, i64* %len, align 8
  %164 = load i64, i64* %buffersize.addr, align 8
  %cmp318 = icmp ult i64 %163, %164
  br i1 %cmp318, label %if.then320, label %if.end322

if.then320:                                       ; preds = %do.body317
  %165 = load i8*, i8** %buffer.addr, align 8
  %166 = load i64, i64* %len, align 8
  %arrayidx321 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8 92, i8* %arrayidx321, align 1
  br label %if.end322

if.end322:                                        ; preds = %if.then320, %do.body317
  %167 = load i64, i64* %len, align 8
  %inc323 = add i64 %167, 1
  store i64 %inc323, i64* %len, align 8
  br label %do.end324

do.end324:                                        ; preds = %if.end322
  br label %do.body325

do.body325:                                       ; preds = %do.end324
  %168 = load i64, i64* %len, align 8
  %169 = load i64, i64* %buffersize.addr, align 8
  %cmp326 = icmp ult i64 %168, %169
  br i1 %cmp326, label %if.then328, label %if.end330

if.then328:                                       ; preds = %do.body325
  %170 = load i8*, i8** %buffer.addr, align 8
  %171 = load i64, i64* %len, align 8
  %arrayidx329 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8 39, i8* %arrayidx329, align 1
  br label %if.end330

if.end330:                                        ; preds = %if.then328, %do.body325
  %172 = load i64, i64* %len, align 8
  %inc331 = add i64 %172, 1
  store i64 %inc331, i64* %len, align 8
  br label %do.end332

do.end332:                                        ; preds = %if.end330
  store i8 0, i8* %pending_shell_escape_end, align 1
  br label %if.end333

if.end333:                                        ; preds = %do.end332, %sw.bb297
  br label %sw.epilog564

sw.bb334:                                         ; preds = %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80, %if.end80
  store i8 1, i8* %c_and_shell_quote_compat, align 1
  br label %sw.epilog564

sw.default335:                                    ; preds = %if.end80
  %173 = load i8, i8* %unibyte_locale, align 1
  %tobool336 = trunc i8 %173 to i1
  br i1 %tobool336, label %if.then337, label %if.else346

if.then337:                                       ; preds = %sw.default335
  store i64 1, i64* %m, align 8
  %call338 = call i16** @__ctype_b_loc() #15
  %174 = load i16*, i16** %call338, align 8
  %175 = load i8, i8* %c, align 1
  %conv339 = zext i8 %175 to i32
  %idxprom = sext i32 %conv339 to i64
  %arrayidx340 = getelementptr inbounds i16, i16* %174, i64 %idxprom
  %176 = load i16, i16* %arrayidx340, align 2
  %conv341 = zext i16 %176 to i32
  %and342 = and i32 %conv341, 16384
  %cmp343 = icmp ne i32 %and342, 0
  %frombool345 = zext i1 %cmp343 to i8
  store i8 %frombool345, i8* %printable, align 1
  br label %if.end410

if.else346:                                       ; preds = %sw.default335
  %177 = bitcast %struct.__mbstate_t* %mbstate to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %177, i8 0, i64 8, i1 false)
  store i64 0, i64* %m, align 8
  store i8 1, i8* %printable, align 1
  %178 = load i64, i64* %argsize.addr, align 8
  %cmp347 = icmp eq i64 %178, -1
  br i1 %cmp347, label %if.then349, label %if.end351

if.then349:                                       ; preds = %if.else346
  %179 = load i8*, i8** %arg.addr, align 8
  %call350 = call i64 @strlen(i8* %179) #13
  store i64 %call350, i64* %argsize.addr, align 8
  br label %if.end351

if.end351:                                        ; preds = %if.then349, %if.else346
  br label %do.body352

do.body352:                                       ; preds = %do.cond, %if.end351
  %180 = load i8*, i8** %arg.addr, align 8
  %181 = load i64, i64* %i, align 8
  %182 = load i64, i64* %m, align 8
  %add353 = add i64 %181, %182
  %arrayidx354 = getelementptr inbounds i8, i8* %180, i64 %add353
  %183 = load i64, i64* %argsize.addr, align 8
  %184 = load i64, i64* %i, align 8
  %185 = load i64, i64* %m, align 8
  %add355 = add i64 %184, %185
  %sub = sub i64 %183, %add355
  %call356 = call i64 @rpl_mbrtowc(i32* %w, i8* %arrayidx354, i64 %sub, %struct.__mbstate_t* %mbstate)
  store i64 %call356, i64* %bytes, align 8
  %186 = load i64, i64* %bytes, align 8
  %cmp357 = icmp eq i64 %186, 0
  br i1 %cmp357, label %if.then359, label %if.else360

if.then359:                                       ; preds = %do.body352
  br label %do.end409

if.else360:                                       ; preds = %do.body352
  %187 = load i64, i64* %bytes, align 8
  %cmp361 = icmp eq i64 %187, -1
  br i1 %cmp361, label %if.then363, label %if.else364

if.then363:                                       ; preds = %if.else360
  store i8 0, i8* %printable, align 1
  br label %do.end409

if.else364:                                       ; preds = %if.else360
  %188 = load i64, i64* %bytes, align 8
  %cmp365 = icmp eq i64 %188, -2
  br i1 %cmp365, label %if.then367, label %if.else376

if.then367:                                       ; preds = %if.else364
  store i8 0, i8* %printable, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then367
  %189 = load i64, i64* %i, align 8
  %190 = load i64, i64* %m, align 8
  %add368 = add i64 %189, %190
  %191 = load i64, i64* %argsize.addr, align 8
  %cmp369 = icmp ult i64 %add368, %191
  br i1 %cmp369, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %192 = load i8*, i8** %arg.addr, align 8
  %193 = load i64, i64* %i, align 8
  %194 = load i64, i64* %m, align 8
  %add371 = add i64 %193, %194
  %arrayidx372 = getelementptr inbounds i8, i8* %192, i64 %add371
  %195 = load i8, i8* %arrayidx372, align 1
  %conv373 = sext i8 %195 to i32
  %tobool374 = icmp ne i32 %conv373, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %196 = phi i1 [ false, %while.cond ], [ %tobool374, %land.rhs ]
  br i1 %196, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %197 = load i64, i64* %m, align 8
  %inc375 = add i64 %197, 1
  store i64 %inc375, i64* %m, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %do.end409

if.else376:                                       ; preds = %if.else364
  %198 = load i8, i8* %elide_outer_quotes, align 1
  %tobool377 = trunc i8 %198 to i1
  br i1 %tobool377, label %land.lhs.true379, label %if.end397

land.lhs.true379:                                 ; preds = %if.else376
  %199 = load i32, i32* %quoting_style.addr, align 4
  %cmp380 = icmp eq i32 %199, 2
  br i1 %cmp380, label %if.then382, label %if.end397

if.then382:                                       ; preds = %land.lhs.true379
  store i64 1, i64* %j, align 8
  br label %for.cond383

for.cond383:                                      ; preds = %for.inc394, %if.then382
  %200 = load i64, i64* %j, align 8
  %201 = load i64, i64* %bytes, align 8
  %cmp384 = icmp ult i64 %200, %201
  br i1 %cmp384, label %for.body386, label %for.end396

for.body386:                                      ; preds = %for.cond383
  %202 = load i8*, i8** %arg.addr, align 8
  %203 = load i64, i64* %i, align 8
  %204 = load i64, i64* %m, align 8
  %add387 = add i64 %203, %204
  %205 = load i64, i64* %j, align 8
  %add388 = add i64 %add387, %205
  %arrayidx389 = getelementptr inbounds i8, i8* %202, i64 %add388
  %206 = load i8, i8* %arrayidx389, align 1
  %conv390 = sext i8 %206 to i32
  switch i32 %conv390, label %sw.default392 [
    i32 91, label %sw.bb391
    i32 92, label %sw.bb391
    i32 94, label %sw.bb391
    i32 96, label %sw.bb391
    i32 124, label %sw.bb391
  ]

sw.bb391:                                         ; preds = %for.body386, %for.body386, %for.body386, %for.body386, %for.body386
  br label %force_outer_quoting_style

sw.default392:                                    ; preds = %for.body386
  br label %sw.epilog393

sw.epilog393:                                     ; preds = %sw.default392
  br label %for.inc394

for.inc394:                                       ; preds = %sw.epilog393
  %207 = load i64, i64* %j, align 8
  %inc395 = add i64 %207, 1
  store i64 %inc395, i64* %j, align 8
  br label %for.cond383

for.end396:                                       ; preds = %for.cond383
  br label %if.end397

if.end397:                                        ; preds = %for.end396, %land.lhs.true379, %if.else376
  %208 = load i32, i32* %w, align 4
  %call398 = call i32 @iswprint(i32 %208) #11
  %tobool399 = icmp ne i32 %call398, 0
  br i1 %tobool399, label %if.end401, label %if.then400

if.then400:                                       ; preds = %if.end397
  store i8 0, i8* %printable, align 1
  br label %if.end401

if.end401:                                        ; preds = %if.then400, %if.end397
  %209 = load i64, i64* %bytes, align 8
  %210 = load i64, i64* %m, align 8
  %add402 = add i64 %210, %209
  store i64 %add402, i64* %m, align 8
  br label %if.end403

if.end403:                                        ; preds = %if.end401
  br label %if.end404

if.end404:                                        ; preds = %if.end403
  br label %if.end405

if.end405:                                        ; preds = %if.end404
  br label %do.cond

do.cond:                                          ; preds = %if.end405
  %call406 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #13
  %tobool407 = icmp ne i32 %call406, 0
  %lnot408 = xor i1 %tobool407, true
  br i1 %lnot408, label %do.body352, label %do.end409

do.end409:                                        ; preds = %do.cond, %while.end, %if.then363, %if.then359
  br label %if.end410

if.end410:                                        ; preds = %do.end409, %if.then337
  %211 = load i8, i8* %printable, align 1
  %tobool411 = trunc i8 %211 to i1
  %frombool412 = zext i1 %tobool411 to i8
  store i8 %frombool412, i8* %c_and_shell_quote_compat, align 1
  %212 = load i64, i64* %m, align 8
  %cmp413 = icmp ult i64 1, %212
  br i1 %cmp413, label %if.then419, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end410
  %213 = load i8, i8* %backslash_escapes, align 1
  %tobool415 = trunc i8 %213 to i1
  br i1 %tobool415, label %land.lhs.true417, label %if.end563

land.lhs.true417:                                 ; preds = %lor.lhs.false
  %214 = load i8, i8* %printable, align 1
  %tobool418 = trunc i8 %214 to i1
  br i1 %tobool418, label %if.end563, label %if.then419

if.then419:                                       ; preds = %land.lhs.true417, %if.end410
  %215 = load i64, i64* %i, align 8
  %216 = load i64, i64* %m, align 8
  %add420 = add i64 %215, %216
  store i64 %add420, i64* %ilim, align 8
  br label %for.cond421

for.cond421:                                      ; preds = %do.end559, %if.then419
  %217 = load i8, i8* %backslash_escapes, align 1
  %tobool422 = trunc i8 %217 to i1
  br i1 %tobool422, label %land.lhs.true424, label %if.else505

land.lhs.true424:                                 ; preds = %for.cond421
  %218 = load i8, i8* %printable, align 1
  %tobool425 = trunc i8 %218 to i1
  br i1 %tobool425, label %if.else505, label %if.then426

if.then426:                                       ; preds = %land.lhs.true424
  br label %do.body427

do.body427:                                       ; preds = %if.then426
  %219 = load i8, i8* %elide_outer_quotes, align 1
  %tobool428 = trunc i8 %219 to i1
  br i1 %tobool428, label %if.then429, label %if.end430

if.then429:                                       ; preds = %do.body427
  br label %force_outer_quoting_style

if.end430:                                        ; preds = %do.body427
  store i8 1, i8* %escaping, align 1
  %220 = load i32, i32* %quoting_style.addr, align 4
  %cmp431 = icmp eq i32 %220, 2
  br i1 %cmp431, label %land.lhs.true433, label %if.end463

land.lhs.true433:                                 ; preds = %if.end430
  %221 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool434 = trunc i8 %221 to i1
  br i1 %tobool434, label %if.end463, label %if.then435

if.then435:                                       ; preds = %land.lhs.true433
  br label %do.body436

do.body436:                                       ; preds = %if.then435
  %222 = load i64, i64* %len, align 8
  %223 = load i64, i64* %buffersize.addr, align 8
  %cmp437 = icmp ult i64 %222, %223
  br i1 %cmp437, label %if.then439, label %if.end441

if.then439:                                       ; preds = %do.body436
  %224 = load i8*, i8** %buffer.addr, align 8
  %225 = load i64, i64* %len, align 8
  %arrayidx440 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8 39, i8* %arrayidx440, align 1
  br label %if.end441

if.end441:                                        ; preds = %if.then439, %do.body436
  %226 = load i64, i64* %len, align 8
  %inc442 = add i64 %226, 1
  store i64 %inc442, i64* %len, align 8
  br label %do.end444

do.end444:                                        ; preds = %if.end441
  br label %do.body445

do.body445:                                       ; preds = %do.end444
  %227 = load i64, i64* %len, align 8
  %228 = load i64, i64* %buffersize.addr, align 8
  %cmp446 = icmp ult i64 %227, %228
  br i1 %cmp446, label %if.then448, label %if.end450

if.then448:                                       ; preds = %do.body445
  %229 = load i8*, i8** %buffer.addr, align 8
  %230 = load i64, i64* %len, align 8
  %arrayidx449 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 36, i8* %arrayidx449, align 1
  br label %if.end450

if.end450:                                        ; preds = %if.then448, %do.body445
  %231 = load i64, i64* %len, align 8
  %inc451 = add i64 %231, 1
  store i64 %inc451, i64* %len, align 8
  br label %do.end453

do.end453:                                        ; preds = %if.end450
  br label %do.body454

do.body454:                                       ; preds = %do.end453
  %232 = load i64, i64* %len, align 8
  %233 = load i64, i64* %buffersize.addr, align 8
  %cmp455 = icmp ult i64 %232, %233
  br i1 %cmp455, label %if.then457, label %if.end459

if.then457:                                       ; preds = %do.body454
  %234 = load i8*, i8** %buffer.addr, align 8
  %235 = load i64, i64* %len, align 8
  %arrayidx458 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8 39, i8* %arrayidx458, align 1
  br label %if.end459

if.end459:                                        ; preds = %if.then457, %do.body454
  %236 = load i64, i64* %len, align 8
  %inc460 = add i64 %236, 1
  store i64 %inc460, i64* %len, align 8
  br label %do.end462

do.end462:                                        ; preds = %if.end459
  store i8 1, i8* %pending_shell_escape_end, align 1
  br label %if.end463

if.end463:                                        ; preds = %do.end462, %land.lhs.true433, %if.end430
  br label %do.body464

do.body464:                                       ; preds = %if.end463
  %237 = load i64, i64* %len, align 8
  %238 = load i64, i64* %buffersize.addr, align 8
  %cmp465 = icmp ult i64 %237, %238
  br i1 %cmp465, label %if.then467, label %if.end469

if.then467:                                       ; preds = %do.body464
  %239 = load i8*, i8** %buffer.addr, align 8
  %240 = load i64, i64* %len, align 8
  %arrayidx468 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8 92, i8* %arrayidx468, align 1
  br label %if.end469

if.end469:                                        ; preds = %if.then467, %do.body464
  %241 = load i64, i64* %len, align 8
  %inc470 = add i64 %241, 1
  store i64 %inc470, i64* %len, align 8
  br label %do.end472

do.end472:                                        ; preds = %if.end469
  br label %do.end474

do.end474:                                        ; preds = %do.end472
  br label %do.body475

do.body475:                                       ; preds = %do.end474
  %242 = load i64, i64* %len, align 8
  %243 = load i64, i64* %buffersize.addr, align 8
  %cmp476 = icmp ult i64 %242, %243
  br i1 %cmp476, label %if.then478, label %if.end483

if.then478:                                       ; preds = %do.body475
  %244 = load i8, i8* %c, align 1
  %conv479 = zext i8 %244 to i32
  %shr = ashr i32 %conv479, 6
  %add480 = add nsw i32 48, %shr
  %conv481 = trunc i32 %add480 to i8
  %245 = load i8*, i8** %buffer.addr, align 8
  %246 = load i64, i64* %len, align 8
  %arrayidx482 = getelementptr inbounds i8, i8* %245, i64 %246
  store i8 %conv481, i8* %arrayidx482, align 1
  br label %if.end483

if.end483:                                        ; preds = %if.then478, %do.body475
  %247 = load i64, i64* %len, align 8
  %inc484 = add i64 %247, 1
  store i64 %inc484, i64* %len, align 8
  br label %do.end486

do.end486:                                        ; preds = %if.end483
  br label %do.body487

do.body487:                                       ; preds = %do.end486
  %248 = load i64, i64* %len, align 8
  %249 = load i64, i64* %buffersize.addr, align 8
  %cmp488 = icmp ult i64 %248, %249
  br i1 %cmp488, label %if.then490, label %if.end497

if.then490:                                       ; preds = %do.body487
  %250 = load i8, i8* %c, align 1
  %conv491 = zext i8 %250 to i32
  %shr492 = ashr i32 %conv491, 3
  %and493 = and i32 %shr492, 7
  %add494 = add nsw i32 48, %and493
  %conv495 = trunc i32 %add494 to i8
  %251 = load i8*, i8** %buffer.addr, align 8
  %252 = load i64, i64* %len, align 8
  %arrayidx496 = getelementptr inbounds i8, i8* %251, i64 %252
  store i8 %conv495, i8* %arrayidx496, align 1
  br label %if.end497

if.end497:                                        ; preds = %if.then490, %do.body487
  %253 = load i64, i64* %len, align 8
  %inc498 = add i64 %253, 1
  store i64 %inc498, i64* %len, align 8
  br label %do.end500

do.end500:                                        ; preds = %if.end497
  %254 = load i8, i8* %c, align 1
  %conv501 = zext i8 %254 to i32
  %and502 = and i32 %conv501, 7
  %add503 = add nsw i32 48, %and502
  %conv504 = trunc i32 %add503 to i8
  store i8 %conv504, i8* %c, align 1
  br label %if.end518

if.else505:                                       ; preds = %land.lhs.true424, %for.cond421
  %255 = load i8, i8* %is_right_quote, align 1
  %tobool506 = trunc i8 %255 to i1
  br i1 %tobool506, label %if.then507, label %if.end517

if.then507:                                       ; preds = %if.else505
  br label %do.body508

do.body508:                                       ; preds = %if.then507
  %256 = load i64, i64* %len, align 8
  %257 = load i64, i64* %buffersize.addr, align 8
  %cmp509 = icmp ult i64 %256, %257
  br i1 %cmp509, label %if.then511, label %if.end513

if.then511:                                       ; preds = %do.body508
  %258 = load i8*, i8** %buffer.addr, align 8
  %259 = load i64, i64* %len, align 8
  %arrayidx512 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8 92, i8* %arrayidx512, align 1
  br label %if.end513

if.end513:                                        ; preds = %if.then511, %do.body508
  %260 = load i64, i64* %len, align 8
  %inc514 = add i64 %260, 1
  store i64 %inc514, i64* %len, align 8
  br label %do.end516

do.end516:                                        ; preds = %if.end513
  store i8 0, i8* %is_right_quote, align 1
  br label %if.end517

if.end517:                                        ; preds = %do.end516, %if.else505
  br label %if.end518

if.end518:                                        ; preds = %if.end517, %do.end500
  %261 = load i64, i64* %ilim, align 8
  %262 = load i64, i64* %i, align 8
  %add519 = add i64 %262, 1
  %cmp520 = icmp ule i64 %261, %add519
  br i1 %cmp520, label %if.then522, label %if.end523

if.then522:                                       ; preds = %if.end518
  br label %for.end562

if.end523:                                        ; preds = %if.end518
  br label %do.body524

do.body524:                                       ; preds = %if.end523
  %263 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool525 = trunc i8 %263 to i1
  br i1 %tobool525, label %land.lhs.true527, label %if.end548

land.lhs.true527:                                 ; preds = %do.body524
  %264 = load i8, i8* %escaping, align 1
  %tobool528 = trunc i8 %264 to i1
  br i1 %tobool528, label %if.end548, label %if.then529

if.then529:                                       ; preds = %land.lhs.true527
  br label %do.body530

do.body530:                                       ; preds = %if.then529
  %265 = load i64, i64* %len, align 8
  %266 = load i64, i64* %buffersize.addr, align 8
  %cmp531 = icmp ult i64 %265, %266
  br i1 %cmp531, label %if.then533, label %if.end535

if.then533:                                       ; preds = %do.body530
  %267 = load i8*, i8** %buffer.addr, align 8
  %268 = load i64, i64* %len, align 8
  %arrayidx534 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8 39, i8* %arrayidx534, align 1
  br label %if.end535

if.end535:                                        ; preds = %if.then533, %do.body530
  %269 = load i64, i64* %len, align 8
  %inc536 = add i64 %269, 1
  store i64 %inc536, i64* %len, align 8
  br label %do.end538

do.end538:                                        ; preds = %if.end535
  br label %do.body539

do.body539:                                       ; preds = %do.end538
  %270 = load i64, i64* %len, align 8
  %271 = load i64, i64* %buffersize.addr, align 8
  %cmp540 = icmp ult i64 %270, %271
  br i1 %cmp540, label %if.then542, label %if.end544

if.then542:                                       ; preds = %do.body539
  %272 = load i8*, i8** %buffer.addr, align 8
  %273 = load i64, i64* %len, align 8
  %arrayidx543 = getelementptr inbounds i8, i8* %272, i64 %273
  store i8 39, i8* %arrayidx543, align 1
  br label %if.end544

if.end544:                                        ; preds = %if.then542, %do.body539
  %274 = load i64, i64* %len, align 8
  %inc545 = add i64 %274, 1
  store i64 %inc545, i64* %len, align 8
  br label %do.end547

do.end547:                                        ; preds = %if.end544
  store i8 0, i8* %pending_shell_escape_end, align 1
  br label %if.end548

if.end548:                                        ; preds = %do.end547, %land.lhs.true527, %do.body524
  br label %do.end550

do.end550:                                        ; preds = %if.end548
  br label %do.body551

do.body551:                                       ; preds = %do.end550
  %275 = load i64, i64* %len, align 8
  %276 = load i64, i64* %buffersize.addr, align 8
  %cmp552 = icmp ult i64 %275, %276
  br i1 %cmp552, label %if.then554, label %if.end556

if.then554:                                       ; preds = %do.body551
  %277 = load i8, i8* %c, align 1
  %278 = load i8*, i8** %buffer.addr, align 8
  %279 = load i64, i64* %len, align 8
  %arrayidx555 = getelementptr inbounds i8, i8* %278, i64 %279
  store i8 %277, i8* %arrayidx555, align 1
  br label %if.end556

if.end556:                                        ; preds = %if.then554, %do.body551
  %280 = load i64, i64* %len, align 8
  %inc557 = add i64 %280, 1
  store i64 %inc557, i64* %len, align 8
  br label %do.end559

do.end559:                                        ; preds = %if.end556
  %281 = load i8*, i8** %arg.addr, align 8
  %282 = load i64, i64* %i, align 8
  %inc560 = add i64 %282, 1
  store i64 %inc560, i64* %i, align 8
  %arrayidx561 = getelementptr inbounds i8, i8* %281, i64 %inc560
  %283 = load i8, i8* %arrayidx561, align 1
  store i8 %283, i8* %c, align 1
  br label %for.cond421

for.end562:                                       ; preds = %if.then522
  br label %store_c

if.end563:                                        ; preds = %land.lhs.true417, %lor.lhs.false
  br label %sw.epilog564

sw.epilog564:                                     ; preds = %if.end563, %sw.bb334, %if.end333, %if.end296, %if.then286, %if.then281, %if.end269, %sw.epilog235, %if.end169
  %284 = load i8, i8* %backslash_escapes, align 1
  %tobool565 = trunc i8 %284 to i1
  br i1 %tobool565, label %land.lhs.true567, label %lor.lhs.false570

land.lhs.true567:                                 ; preds = %sw.epilog564
  %285 = load i32, i32* %quoting_style.addr, align 4
  %cmp568 = icmp ne i32 %285, 2
  br i1 %cmp568, label %land.lhs.true573, label %lor.lhs.false570

lor.lhs.false570:                                 ; preds = %land.lhs.true567, %sw.epilog564
  %286 = load i8, i8* %elide_outer_quotes, align 1
  %tobool571 = trunc i8 %286 to i1
  br i1 %tobool571, label %land.lhs.true573, label %land.lhs.true582

land.lhs.true573:                                 ; preds = %lor.lhs.false570, %land.lhs.true567
  %287 = load i32*, i32** %quote_these_too.addr, align 8
  %tobool574 = icmp ne i32* %287, null
  br i1 %tobool574, label %land.lhs.true575, label %land.lhs.true582

land.lhs.true575:                                 ; preds = %land.lhs.true573
  %288 = load i32*, i32** %quote_these_too.addr, align 8
  %289 = load i8, i8* %c, align 1
  %conv576 = zext i8 %289 to i64
  %div = udiv i64 %conv576, 32
  %arrayidx577 = getelementptr inbounds i32, i32* %288, i64 %div
  %290 = load i32, i32* %arrayidx577, align 4
  %291 = load i8, i8* %c, align 1
  %conv578 = zext i8 %291 to i64
  %rem = urem i64 %conv578, 32
  %sh_prom = trunc i64 %rem to i32
  %shr579 = lshr i32 %290, %sh_prom
  %and580 = and i32 %shr579, 1
  %tobool581 = icmp ne i32 %and580, 0
  br i1 %tobool581, label %if.end585, label %land.lhs.true582

land.lhs.true582:                                 ; preds = %land.lhs.true575, %land.lhs.true573, %lor.lhs.false570
  %292 = load i8, i8* %is_right_quote, align 1
  %tobool583 = trunc i8 %292 to i1
  br i1 %tobool583, label %if.end585, label %if.then584

if.then584:                                       ; preds = %land.lhs.true582
  br label %store_c

if.end585:                                        ; preds = %land.lhs.true582, %land.lhs.true575
  br label %store_escape

store_escape:                                     ; preds = %if.end585, %if.then268
  br label %do.body586

do.body586:                                       ; preds = %store_escape
  %293 = load i8, i8* %elide_outer_quotes, align 1
  %tobool587 = trunc i8 %293 to i1
  br i1 %tobool587, label %if.then588, label %if.end589

if.then588:                                       ; preds = %do.body586
  br label %force_outer_quoting_style

if.end589:                                        ; preds = %do.body586
  store i8 1, i8* %escaping, align 1
  %294 = load i32, i32* %quoting_style.addr, align 4
  %cmp590 = icmp eq i32 %294, 2
  br i1 %cmp590, label %land.lhs.true592, label %if.end622

land.lhs.true592:                                 ; preds = %if.end589
  %295 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool593 = trunc i8 %295 to i1
  br i1 %tobool593, label %if.end622, label %if.then594

if.then594:                                       ; preds = %land.lhs.true592
  br label %do.body595

do.body595:                                       ; preds = %if.then594
  %296 = load i64, i64* %len, align 8
  %297 = load i64, i64* %buffersize.addr, align 8
  %cmp596 = icmp ult i64 %296, %297
  br i1 %cmp596, label %if.then598, label %if.end600

if.then598:                                       ; preds = %do.body595
  %298 = load i8*, i8** %buffer.addr, align 8
  %299 = load i64, i64* %len, align 8
  %arrayidx599 = getelementptr inbounds i8, i8* %298, i64 %299
  store i8 39, i8* %arrayidx599, align 1
  br label %if.end600

if.end600:                                        ; preds = %if.then598, %do.body595
  %300 = load i64, i64* %len, align 8
  %inc601 = add i64 %300, 1
  store i64 %inc601, i64* %len, align 8
  br label %do.end603

do.end603:                                        ; preds = %if.end600
  br label %do.body604

do.body604:                                       ; preds = %do.end603
  %301 = load i64, i64* %len, align 8
  %302 = load i64, i64* %buffersize.addr, align 8
  %cmp605 = icmp ult i64 %301, %302
  br i1 %cmp605, label %if.then607, label %if.end609

if.then607:                                       ; preds = %do.body604
  %303 = load i8*, i8** %buffer.addr, align 8
  %304 = load i64, i64* %len, align 8
  %arrayidx608 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8 36, i8* %arrayidx608, align 1
  br label %if.end609

if.end609:                                        ; preds = %if.then607, %do.body604
  %305 = load i64, i64* %len, align 8
  %inc610 = add i64 %305, 1
  store i64 %inc610, i64* %len, align 8
  br label %do.end612

do.end612:                                        ; preds = %if.end609
  br label %do.body613

do.body613:                                       ; preds = %do.end612
  %306 = load i64, i64* %len, align 8
  %307 = load i64, i64* %buffersize.addr, align 8
  %cmp614 = icmp ult i64 %306, %307
  br i1 %cmp614, label %if.then616, label %if.end618

if.then616:                                       ; preds = %do.body613
  %308 = load i8*, i8** %buffer.addr, align 8
  %309 = load i64, i64* %len, align 8
  %arrayidx617 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8 39, i8* %arrayidx617, align 1
  br label %if.end618

if.end618:                                        ; preds = %if.then616, %do.body613
  %310 = load i64, i64* %len, align 8
  %inc619 = add i64 %310, 1
  store i64 %inc619, i64* %len, align 8
  br label %do.end621

do.end621:                                        ; preds = %if.end618
  store i8 1, i8* %pending_shell_escape_end, align 1
  br label %if.end622

if.end622:                                        ; preds = %do.end621, %land.lhs.true592, %if.end589
  br label %do.body623

do.body623:                                       ; preds = %if.end622
  %311 = load i64, i64* %len, align 8
  %312 = load i64, i64* %buffersize.addr, align 8
  %cmp624 = icmp ult i64 %311, %312
  br i1 %cmp624, label %if.then626, label %if.end628

if.then626:                                       ; preds = %do.body623
  %313 = load i8*, i8** %buffer.addr, align 8
  %314 = load i64, i64* %len, align 8
  %arrayidx627 = getelementptr inbounds i8, i8* %313, i64 %314
  store i8 92, i8* %arrayidx627, align 1
  br label %if.end628

if.end628:                                        ; preds = %if.then626, %do.body623
  %315 = load i64, i64* %len, align 8
  %inc629 = add i64 %315, 1
  store i64 %inc629, i64* %len, align 8
  br label %do.end631

do.end631:                                        ; preds = %if.end628
  br label %do.end633

do.end633:                                        ; preds = %do.end631
  br label %store_c

store_c:                                          ; preds = %do.end633, %if.then584, %for.end562, %if.then258, %if.end249
  br label %do.body634

do.body634:                                       ; preds = %store_c
  %316 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool635 = trunc i8 %316 to i1
  br i1 %tobool635, label %land.lhs.true637, label %if.end658

land.lhs.true637:                                 ; preds = %do.body634
  %317 = load i8, i8* %escaping, align 1
  %tobool638 = trunc i8 %317 to i1
  br i1 %tobool638, label %if.end658, label %if.then639

if.then639:                                       ; preds = %land.lhs.true637
  br label %do.body640

do.body640:                                       ; preds = %if.then639
  %318 = load i64, i64* %len, align 8
  %319 = load i64, i64* %buffersize.addr, align 8
  %cmp641 = icmp ult i64 %318, %319
  br i1 %cmp641, label %if.then643, label %if.end645

if.then643:                                       ; preds = %do.body640
  %320 = load i8*, i8** %buffer.addr, align 8
  %321 = load i64, i64* %len, align 8
  %arrayidx644 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8 39, i8* %arrayidx644, align 1
  br label %if.end645

if.end645:                                        ; preds = %if.then643, %do.body640
  %322 = load i64, i64* %len, align 8
  %inc646 = add i64 %322, 1
  store i64 %inc646, i64* %len, align 8
  br label %do.end648

do.end648:                                        ; preds = %if.end645
  br label %do.body649

do.body649:                                       ; preds = %do.end648
  %323 = load i64, i64* %len, align 8
  %324 = load i64, i64* %buffersize.addr, align 8
  %cmp650 = icmp ult i64 %323, %324
  br i1 %cmp650, label %if.then652, label %if.end654

if.then652:                                       ; preds = %do.body649
  %325 = load i8*, i8** %buffer.addr, align 8
  %326 = load i64, i64* %len, align 8
  %arrayidx653 = getelementptr inbounds i8, i8* %325, i64 %326
  store i8 39, i8* %arrayidx653, align 1
  br label %if.end654

if.end654:                                        ; preds = %if.then652, %do.body649
  %327 = load i64, i64* %len, align 8
  %inc655 = add i64 %327, 1
  store i64 %inc655, i64* %len, align 8
  br label %do.end657

do.end657:                                        ; preds = %if.end654
  store i8 0, i8* %pending_shell_escape_end, align 1
  br label %if.end658

if.end658:                                        ; preds = %do.end657, %land.lhs.true637, %do.body634
  br label %do.end660

do.end660:                                        ; preds = %if.end658
  br label %do.body661

do.body661:                                       ; preds = %do.end660
  %328 = load i64, i64* %len, align 8
  %329 = load i64, i64* %buffersize.addr, align 8
  %cmp662 = icmp ult i64 %328, %329
  br i1 %cmp662, label %if.then664, label %if.end666

if.then664:                                       ; preds = %do.body661
  %330 = load i8, i8* %c, align 1
  %331 = load i8*, i8** %buffer.addr, align 8
  %332 = load i64, i64* %len, align 8
  %arrayidx665 = getelementptr inbounds i8, i8* %331, i64 %332
  store i8 %330, i8* %arrayidx665, align 1
  br label %if.end666

if.end666:                                        ; preds = %if.then664, %do.body661
  %333 = load i64, i64* %len, align 8
  %inc667 = add i64 %333, 1
  store i64 %inc667, i64* %len, align 8
  br label %do.end669

do.end669:                                        ; preds = %if.end666
  %334 = load i8, i8* %c_and_shell_quote_compat, align 1
  %tobool670 = trunc i8 %334 to i1
  br i1 %tobool670, label %if.end672, label %if.then671

if.then671:                                       ; preds = %do.end669
  store i8 0, i8* %all_c_and_shell_quote_compat, align 1
  br label %if.end672

if.end672:                                        ; preds = %if.then671, %do.end669
  br label %for.inc673

for.inc673:                                       ; preds = %if.end672, %if.then167
  %335 = load i64, i64* %i, align 8
  %inc674 = add i64 %335, 1
  store i64 %inc674, i64* %i, align 8
  br label %for.cond44

for.end675:                                       ; preds = %cond.end
  %336 = load i64, i64* %len, align 8
  %cmp676 = icmp eq i64 %336, 0
  br i1 %cmp676, label %land.lhs.true678, label %if.end685

land.lhs.true678:                                 ; preds = %for.end675
  %337 = load i32, i32* %quoting_style.addr, align 4
  %cmp679 = icmp eq i32 %337, 2
  br i1 %cmp679, label %land.lhs.true681, label %if.end685

land.lhs.true681:                                 ; preds = %land.lhs.true678
  %338 = load i8, i8* %elide_outer_quotes, align 1
  %tobool682 = trunc i8 %338 to i1
  br i1 %tobool682, label %if.then684, label %if.end685

if.then684:                                       ; preds = %land.lhs.true681
  br label %force_outer_quoting_style

if.end685:                                        ; preds = %land.lhs.true681, %land.lhs.true678, %for.end675
  %339 = load i32, i32* %quoting_style.addr, align 4
  %cmp686 = icmp eq i32 %339, 2
  br i1 %cmp686, label %land.lhs.true688, label %if.end704

land.lhs.true688:                                 ; preds = %if.end685
  %340 = load i8, i8* %elide_outer_quotes, align 1
  %tobool689 = trunc i8 %340 to i1
  br i1 %tobool689, label %if.end704, label %land.lhs.true690

land.lhs.true690:                                 ; preds = %land.lhs.true688
  %341 = load i8, i8* %encountered_single_quote, align 1
  %tobool691 = trunc i8 %341 to i1
  br i1 %tobool691, label %if.then693, label %if.end704

if.then693:                                       ; preds = %land.lhs.true690
  %342 = load i8, i8* %all_c_and_shell_quote_compat, align 1
  %tobool694 = trunc i8 %342 to i1
  br i1 %tobool694, label %if.then695, label %if.else697

if.then695:                                       ; preds = %if.then693
  %343 = load i8*, i8** %buffer.addr, align 8
  %344 = load i64, i64* %orig_buffersize, align 8
  %345 = load i8*, i8** %arg.addr, align 8
  %346 = load i64, i64* %argsize.addr, align 8
  %347 = load i32, i32* %flags.addr, align 4
  %348 = load i32*, i32** %quote_these_too.addr, align 8
  %349 = load i8*, i8** %left_quote.addr, align 8
  %350 = load i8*, i8** %right_quote.addr, align 8
  %call696 = call i64 @quotearg_buffer_restyled(i8* %343, i64 %344, i8* %345, i64 %346, i32 5, i32 %347, i32* %348, i8* %349, i8* %350)
  store i64 %call696, i64* %retval, align 8
  br label %return

if.else697:                                       ; preds = %if.then693
  %351 = load i64, i64* %buffersize.addr, align 8
  %tobool698 = icmp ne i64 %351, 0
  br i1 %tobool698, label %if.end702, label %land.lhs.true699

land.lhs.true699:                                 ; preds = %if.else697
  %352 = load i64, i64* %orig_buffersize, align 8
  %tobool700 = icmp ne i64 %352, 0
  br i1 %tobool700, label %if.then701, label %if.end702

if.then701:                                       ; preds = %land.lhs.true699
  %353 = load i64, i64* %orig_buffersize, align 8
  store i64 %353, i64* %buffersize.addr, align 8
  store i64 0, i64* %len, align 8
  br label %process_input

if.end702:                                        ; preds = %land.lhs.true699, %if.else697
  br label %if.end703

if.end703:                                        ; preds = %if.end702
  br label %if.end704

if.end704:                                        ; preds = %if.end703, %land.lhs.true690, %land.lhs.true688, %if.end685
  %354 = load i8*, i8** %quote_string, align 8
  %tobool705 = icmp ne i8* %354, null
  br i1 %tobool705, label %land.lhs.true706, label %if.end724

land.lhs.true706:                                 ; preds = %if.end704
  %355 = load i8, i8* %elide_outer_quotes, align 1
  %tobool707 = trunc i8 %355 to i1
  br i1 %tobool707, label %if.end724, label %if.then708

if.then708:                                       ; preds = %land.lhs.true706
  br label %for.cond709

for.cond709:                                      ; preds = %for.inc721, %if.then708
  %356 = load i8*, i8** %quote_string, align 8
  %357 = load i8, i8* %356, align 1
  %tobool710 = icmp ne i8 %357, 0
  br i1 %tobool710, label %for.body711, label %for.end723

for.body711:                                      ; preds = %for.cond709
  br label %do.body712

do.body712:                                       ; preds = %for.body711
  %358 = load i64, i64* %len, align 8
  %359 = load i64, i64* %buffersize.addr, align 8
  %cmp713 = icmp ult i64 %358, %359
  br i1 %cmp713, label %if.then715, label %if.end717

if.then715:                                       ; preds = %do.body712
  %360 = load i8*, i8** %quote_string, align 8
  %361 = load i8, i8* %360, align 1
  %362 = load i8*, i8** %buffer.addr, align 8
  %363 = load i64, i64* %len, align 8
  %arrayidx716 = getelementptr inbounds i8, i8* %362, i64 %363
  store i8 %361, i8* %arrayidx716, align 1
  br label %if.end717

if.end717:                                        ; preds = %if.then715, %do.body712
  %364 = load i64, i64* %len, align 8
  %inc718 = add i64 %364, 1
  store i64 %inc718, i64* %len, align 8
  br label %do.end720

do.end720:                                        ; preds = %if.end717
  br label %for.inc721

for.inc721:                                       ; preds = %do.end720
  %365 = load i8*, i8** %quote_string, align 8
  %incdec.ptr722 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %incdec.ptr722, i8** %quote_string, align 8
  br label %for.cond709

for.end723:                                       ; preds = %for.cond709
  br label %if.end724

if.end724:                                        ; preds = %for.end723, %land.lhs.true706, %if.end704
  %366 = load i64, i64* %len, align 8
  %367 = load i64, i64* %buffersize.addr, align 8
  %cmp725 = icmp ult i64 %366, %367
  br i1 %cmp725, label %if.then727, label %if.end729

if.then727:                                       ; preds = %if.end724
  %368 = load i8*, i8** %buffer.addr, align 8
  %369 = load i64, i64* %len, align 8
  %arrayidx728 = getelementptr inbounds i8, i8* %368, i64 %369
  store i8 0, i8* %arrayidx728, align 1
  br label %if.end729

if.end729:                                        ; preds = %if.then727, %if.end724
  %370 = load i64, i64* %len, align 8
  store i64 %370, i64* %retval, align 8
  br label %return

force_outer_quoting_style:                        ; preds = %if.then684, %if.then588, %if.then429, %sw.bb391, %if.then302, %if.then295, %if.then265, %if.then248, %if.then194, %if.then173, %if.then88, %if.then78
  %371 = load i32, i32* %quoting_style.addr, align 4
  %cmp730 = icmp eq i32 %371, 2
  br i1 %cmp730, label %land.lhs.true732, label %if.end736

land.lhs.true732:                                 ; preds = %force_outer_quoting_style
  %372 = load i8, i8* %backslash_escapes, align 1
  %tobool733 = trunc i8 %372 to i1
  br i1 %tobool733, label %if.then735, label %if.end736

if.then735:                                       ; preds = %land.lhs.true732
  store i32 4, i32* %quoting_style.addr, align 4
  br label %if.end736

if.end736:                                        ; preds = %if.then735, %land.lhs.true732, %force_outer_quoting_style
  %373 = load i8*, i8** %buffer.addr, align 8
  %374 = load i64, i64* %buffersize.addr, align 8
  %375 = load i8*, i8** %arg.addr, align 8
  %376 = load i64, i64* %argsize.addr, align 8
  %377 = load i32, i32* %quoting_style.addr, align 4
  %378 = load i32, i32* %flags.addr, align 4
  %and737 = and i32 %378, -3
  %379 = load i8*, i8** %left_quote.addr, align 8
  %380 = load i8*, i8** %right_quote.addr, align 8
  %call738 = call i64 @quotearg_buffer_restyled(i8* %373, i64 %374, i8* %375, i64 %376, i32 %377, i32 %and737, i32* null, i8* %379, i8* %380)
  store i64 %call738, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end736, %if.end729, %if.then695
  %381 = load i64, i64* %retval, align 8
  ret i64 %381
}

; Function Attrs: nounwind
declare dso_local i64 @__ctype_get_mb_cur_max() #6

; Function Attrs: noinline nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #2 {
entry:
  %retval = alloca i8*, align 8
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  %locale_code = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i8*, i8** %msgid.addr, align 8
  store i8* %0, i8** %translation, align 8
  %1 = load i8*, i8** %translation, align 8
  %2 = load i8*, i8** %msgid.addr, align 8
  %cmp = icmp ne i8* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %translation, align 8
  store i8* %3, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @locale_charset()
  store i8* %call, i8** %locale_code, align 8
  %4 = load i8*, i8** %locale_code, align 8
  %call1 = call i32 @c_strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.102, i64 0, i64 0)) #13
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %msgid.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 96
  %7 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.103, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.104, i64 0, i64 0)
  store i8* %cond, i8** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load i8*, i8** %locale_code, align 8
  %call7 = call i32 @c_strcasecmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.105, i64 0, i64 0)) #13
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end6
  %9 = load i8*, i8** %msgid.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 96
  %11 = zext i1 %cmp13 to i64
  %cond15 = select i1 %cmp13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.106, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.107, i64 0, i64 0)
  store i8* %cond15, i8** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end6
  %12 = load i32, i32* %s.addr, align 4
  %cmp17 = icmp eq i32 %12, 9
  %13 = zext i1 %cmp17 to i64
  %cond19 = select i1 %cmp17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.99, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.101, i64 0, i64 0)
  store i8* %cond19, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then10, %if.then3, %if.then
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @iswprint(i32) #6

; Function Attrs: nounwind readonly
declare dso_local i32 @mbsinit(%struct.__mbstate_t*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_alloc(i8* %arg, i64 %argsize, %struct.quoting_options* %o) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i64, i64* %argsize.addr, align 8
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %call = call i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* null, %struct.quoting_options* %2)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_alloc_mem(i8* %arg, i64 %argsize, i64* %size, %struct.quoting_options* %o) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %size.addr = alloca i64*, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %flags = alloca i32, align 4
  %bufsize = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ]
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8
  %call = call i32* @__errno_location() #15
  %2 = load i32, i32* %call, align 4
  store i32 %2, i32* %e, align 4
  %3 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i32 0, i32 1
  %4 = load i32, i32* %flags1, align 4
  %5 = load i64*, i64** %size.addr, align 8
  %tobool2 = icmp ne i64* %5, null
  %6 = zext i1 %tobool2 to i64
  %cond3 = select i1 %tobool2, i32 0, i32 1
  %or = or i32 %4, %cond3
  store i32 %or, i32* %flags, align 4
  %7 = load i8*, i8** %arg.addr, align 8
  %8 = load i64, i64* %argsize.addr, align 8
  %9 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %9, i32 0, i32 0
  %10 = load i32, i32* %style, align 8
  %11 = load i32, i32* %flags, align 4
  %12 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %13 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %13, i32 0, i32 3
  %14 = load i8*, i8** %left_quote, align 8
  %15 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %15, i32 0, i32 4
  %16 = load i8*, i8** %right_quote, align 8
  %call4 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %7, i64 %8, i32 %10, i32 %11, i32* %arraydecay, i8* %14, i8* %16)
  %add = add i64 %call4, 1
  store i64 %add, i64* %bufsize, align 8
  %17 = load i64, i64* %bufsize, align 8
  %call5 = call noalias i8* @xcharalloc(i64 %17)
  store i8* %call5, i8** %buf, align 8
  %18 = load i8*, i8** %buf, align 8
  %19 = load i64, i64* %bufsize, align 8
  %20 = load i8*, i8** %arg.addr, align 8
  %21 = load i64, i64* %argsize.addr, align 8
  %22 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %style6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %22, i32 0, i32 0
  %23 = load i32, i32* %style6, align 8
  %24 = load i32, i32* %flags, align 4
  %25 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %quote_these_too7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %25, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too7, i64 0, i64 0
  %26 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %left_quote9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %26, i32 0, i32 3
  %27 = load i8*, i8** %left_quote9, align 8
  %28 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8
  %right_quote10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %28, i32 0, i32 4
  %29 = load i8*, i8** %right_quote10, align 8
  %call11 = call i64 @quotearg_buffer_restyled(i8* %18, i64 %19, i8* %20, i64 %21, i32 %23, i32 %24, i32* %arraydecay8, i8* %27, i8* %29)
  %30 = load i32, i32* %e, align 4
  %call12 = call i32* @__errno_location() #15
  store i32 %30, i32* %call12, align 4
  %31 = load i64*, i64** %size.addr, align 8
  %tobool13 = icmp ne i64* %31, null
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %32 = load i64, i64* %bufsize, align 8
  %sub = sub i64 %32, 1
  %33 = load i64*, i64** %size.addr, align 8
  store i64 %sub, i64* %33, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %34 = load i8*, i8** %buf, align 8
  ret i8* %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @quotearg_free() #2 {
entry:
  %sv = alloca %struct.slotvec*, align 8
  %i = alloca i32, align 4
  %0 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  store %struct.slotvec* %0, %struct.slotvec** %sv, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @nslots, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %3, i64 %idxprom
  %val = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 1
  %5 = load i8*, i8** %val, align 8
  call void @free(i8* %5) #11
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx1 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %7, i64 0
  %val2 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx1, i32 0, i32 1
  %8 = load i8*, i8** %val2, align 8
  %cmp3 = icmp ne i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx4 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 0
  %val5 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx4, i32 0, i32 1
  %10 = load i8*, i8** %val5, align 8
  call void @free(i8* %10) #11
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %11 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %cmp6 = icmp ne %struct.slotvec* %11, @slotvec0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %12 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %13 = bitcast %struct.slotvec* %12 to i8*
  call void @free(i8* %13) #11
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_n(i32 %n, i8* %arg) #2 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @quotearg_n_options(i32 %n, i8* %arg, i64 %argsize, %struct.quoting_options* %options) #2 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %options.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %sv = alloca %struct.slotvec*, align 8
  %preallocated = alloca i8, align 1
  %nmax = alloca i32, align 4
  %size = alloca i64, align 8
  %val = alloca i8*, align 8
  %flags = alloca i32, align 4
  %qsize = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8
  %call = call i32* @__errno_location() #15
  %0 = load i32, i32* %call, align 4
  store i32 %0, i32* %e, align 4
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8
  store %struct.slotvec* %1, %struct.slotvec** %sv, align 8
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #12
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @nslots, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end15

if.then2:                                         ; preds = %if.end
  %5 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %cmp3 = icmp eq %struct.slotvec* %5, @slotvec0
  %frombool = zext i1 %cmp3 to i8
  store i8 %frombool, i8* %preallocated, align 1
  store i32 2147483646, i32* %nmax, align 4
  %6 = load i32, i32* %nmax, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  call void @xalloc_die() #14
  unreachable

if.end6:                                          ; preds = %if.then2
  %8 = load i8, i8* %preallocated, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end6
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  %9 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.slotvec* [ null, %cond.true ], [ %9, %cond.false ]
  %10 = bitcast %struct.slotvec* %cond to i8*
  %11 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %11, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 16
  %call7 = call i8* @xrealloc(i8* %10, i64 %mul)
  %12 = bitcast i8* %call7 to %struct.slotvec*
  store %struct.slotvec* %12, %struct.slotvec** %sv, align 8
  store %struct.slotvec* %12, %struct.slotvec** @slotvec, align 8
  %13 = load i8, i8* %preallocated, align 1
  %tobool8 = trunc i8 %13 to i1
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %cond.end
  %14 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %15 = bitcast %struct.slotvec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %cond.end
  %16 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %17 = load i32, i32* @nslots, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds %struct.slotvec, %struct.slotvec* %16, i64 %idx.ext
  %18 = bitcast %struct.slotvec* %add.ptr to i8*
  %19 = load i32, i32* %n.addr, align 4
  %add11 = add nsw i32 %19, 1
  %20 = load i32, i32* @nslots, align 4
  %sub = sub nsw i32 %add11, %20
  %conv12 = sext i32 %sub to i64
  %mul13 = mul i64 %conv12, 16
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 %mul13, i1 false)
  %21 = load i32, i32* %n.addr, align 4
  %add14 = add nsw i32 %21, 1
  store i32 %add14, i32* @nslots, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.end
  %22 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %23 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %22, i64 %idxprom
  %size16 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 0
  %24 = load i64, i64* %size16, align 8
  store i64 %24, i64* %size, align 8
  %25 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %26 = load i32, i32* %n.addr, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %25, i64 %idxprom17
  %val19 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx18, i32 0, i32 1
  %27 = load i8*, i8** %val19, align 8
  store i8* %27, i8** %val, align 8
  %28 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %flags20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %28, i32 0, i32 1
  %29 = load i32, i32* %flags20, align 4
  %or = or i32 %29, 1
  store i32 %or, i32* %flags, align 4
  %30 = load i8*, i8** %val, align 8
  %31 = load i64, i64* %size, align 8
  %32 = load i8*, i8** %arg.addr, align 8
  %33 = load i64, i64* %argsize.addr, align 8
  %34 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %34, i32 0, i32 0
  %35 = load i32, i32* %style, align 8
  %36 = load i32, i32* %flags, align 4
  %37 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %37, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %38 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %38, i32 0, i32 3
  %39 = load i8*, i8** %left_quote, align 8
  %40 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 4
  %41 = load i8*, i8** %right_quote, align 8
  %call21 = call i64 @quotearg_buffer_restyled(i8* %30, i64 %31, i8* %32, i64 %33, i32 %35, i32 %36, i32* %arraydecay, i8* %39, i8* %41)
  store i64 %call21, i64* %qsize, align 8
  %42 = load i64, i64* %size, align 8
  %43 = load i64, i64* %qsize, align 8
  %cmp22 = icmp ule i64 %42, %43
  br i1 %cmp22, label %if.then24, label %if.end43

if.then24:                                        ; preds = %if.end15
  %44 = load i64, i64* %qsize, align 8
  %add25 = add i64 %44, 1
  store i64 %add25, i64* %size, align 8
  %45 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %46 = load i32, i32* %n.addr, align 4
  %idxprom26 = sext i32 %46 to i64
  %arrayidx27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %45, i64 %idxprom26
  %size28 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx27, i32 0, i32 0
  store i64 %add25, i64* %size28, align 8
  %47 = load i8*, i8** %val, align 8
  %cmp29 = icmp ne i8* %47, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then24
  %48 = load i8*, i8** %val, align 8
  call void @free(i8* %48) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then24
  %49 = load i64, i64* %size, align 8
  %call33 = call noalias i8* @xcharalloc(i64 %49)
  store i8* %call33, i8** %val, align 8
  %50 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %51 = load i32, i32* %n.addr, align 4
  %idxprom34 = sext i32 %51 to i64
  %arrayidx35 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %50, i64 %idxprom34
  %val36 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx35, i32 0, i32 1
  store i8* %call33, i8** %val36, align 8
  %52 = load i8*, i8** %val, align 8
  %53 = load i64, i64* %size, align 8
  %54 = load i8*, i8** %arg.addr, align 8
  %55 = load i64, i64* %argsize.addr, align 8
  %56 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %style37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %56, i32 0, i32 0
  %57 = load i32, i32* %style37, align 8
  %58 = load i32, i32* %flags, align 4
  %59 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %quote_these_too38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %59, i32 0, i32 2
  %arraydecay39 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too38, i64 0, i64 0
  %60 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %left_quote40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %60, i32 0, i32 3
  %61 = load i8*, i8** %left_quote40, align 8
  %62 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %right_quote41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %62, i32 0, i32 4
  %63 = load i8*, i8** %right_quote41, align 8
  %call42 = call i64 @quotearg_buffer_restyled(i8* %52, i64 %53, i8* %54, i64 %55, i32 %57, i32 %58, i32* %arraydecay39, i8* %61, i8* %63)
  br label %if.end43

if.end43:                                         ; preds = %if.end32, %if.end15
  %64 = load i32, i32* %e, align 4
  %call44 = call i32* @__errno_location() #15
  store i32 %64, i32* %call44, align 4
  %65 = load i8*, i8** %val, align 8
  ret i8* %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 %n, i8* %arg, i64 %argsize) #2 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg(i8* %arg) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n(i32 0, i8* %0)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_mem(i8* %arg, i64 %argsize) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_mem(i32 0, i8* %0, i64 %1)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #2 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %s.addr, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret align 8 %o, i32 %0)
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 -1, %struct.quoting_options* %o)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret align 8 %agg.result, i32 %style) #2 {
entry:
  %style.addr = alloca i32, align 4
  store i32 %style, i32* %style.addr, align 4
  %0 = bitcast %struct.quoting_options* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false)
  %1 = load i32, i32* %style.addr, align 4
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #12
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %style.addr, align 4
  %style1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %agg.result, i32 0, i32 0
  store i32 %2, i32* %style1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %n, i32 %s, i8* %arg, i64 %argsize) #2 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i32, i32* %s.addr, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret align 8 %o, i32 %0)
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i8*, i8** %arg.addr, align 8
  %3 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %1, i8* %2, i64 %3, %struct.quoting_options* %o)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_style(i32 %s, i8* %arg) #2 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %s.addr, align 4
  %1 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 %s, i8* %arg, i64 %argsize) #2 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i32, i32* %s.addr, align 4
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_style_mem(i32 0, i32 %0, i8* %1, i64 %2)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* %arg, i64 %argsize, i8 signext %ch) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  %0 = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false)
  %1 = load i8, i8* %ch.addr, align 1
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %1, i32 1)
  %2 = load i8*, i8** %arg.addr, align 8
  %3 = load i64, i64* %argsize.addr, align 8
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* %options)
  ret i8* %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_char(i8* %arg, i8 signext %ch) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  store i8* %arg, i8** %arg.addr, align 8
  store i8 %ch, i8* %ch.addr, align 1
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8, i8* %ch.addr, align 1
  %call = call i8* @quotearg_char_mem(i8* %0, i64 -1, i8 signext %1)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_colon(i8* %arg) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* %arg, i64 %argsize) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext 58)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %n, i32 %s, i8* %arg) #2 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %options = alloca %struct.quoting_options, align 8
  %tmp = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %s.addr, align 4
  call void @quoting_options_from_style(%struct.quoting_options* sret align 8 %tmp, i32 %0)
  %1 = bitcast %struct.quoting_options* %options to i8*
  %2 = bitcast %struct.quoting_options* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false)
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext 58, i32 1)
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i8*, i8** %arg.addr, align 8
  %call1 = call i8* @quotearg_n_options(i32 %3, i8* %4, i64 -1, %struct.quoting_options* %options)
  ret i8* %call1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg) #2 {
entry:
  %n.addr = alloca i32, align 4
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %left_quote, i8** %left_quote.addr, align 8
  store i8* %right_quote, i8** %right_quote.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i8*, i8** %left_quote.addr, align 8
  %2 = load i8*, i8** %right_quote.addr, align 8
  %3 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 -1)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg, i64 %argsize) #2 {
entry:
  %n.addr = alloca i32, align 4
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %left_quote, i8** %left_quote.addr, align 8
  store i8* %right_quote, i8** %right_quote.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false)
  %1 = load i8*, i8** %left_quote.addr, align 8
  %2 = load i8*, i8** %right_quote.addr, align 8
  call void @set_custom_quoting(%struct.quoting_options* %o, i8* %1, i8* %2)
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i8*, i8** %arg.addr, align 8
  %5 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %3, i8* %4, i64 %5, %struct.quoting_options* %o)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_custom(i8* %left_quote, i8* %right_quote, i8* %arg) #2 {
entry:
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8
  store i8* %right_quote, i8** %right_quote.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %left_quote.addr, align 8
  %1 = load i8*, i8** %right_quote.addr, align 8
  %2 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quotearg_n_custom(i32 0, i8* %0, i8* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* %left_quote, i8* %right_quote, i8* %arg, i64 %argsize) #2 {
entry:
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8
  store i8* %right_quote, i8** %right_quote.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i8*, i8** %left_quote.addr, align 8
  %1 = load i8*, i8** %right_quote.addr, align 8
  %2 = load i8*, i8** %arg.addr, align 8
  %3 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_custom_mem(i32 0, i8* %0, i8* %1, i8* %2, i64 %3)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quote_n_mem(i32 %n, i8* %arg, i64 %argsize) #2 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i8*, i8** %arg.addr, align 8
  %2 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* @quote_quoting_options)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quote_mem(i8* %arg, i64 %argsize) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 %argsize, i64* %argsize.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quote_n_mem(i32 0, i8* %0, i64 %1)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quote_n(i32 %n, i8* %arg) #2 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quote_n_mem(i32 %0, i8* %1, i64 -1)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @quote(i8* %arg) #2 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i8* @quote_n(i32 0, i8* %0)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 %category, i8* nonnull %buf, i64 %bufsize) #2 {
entry:
  %category.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  store i32 %category, i32* %category.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  %0 = load i32, i32* %category.addr, align 4
  %1 = load i8*, i8** %buf.addr, align 8
  %2 = load i64, i64* %bufsize.addr, align 8
  %call = call i32 @setlocale_null_unlocked(i32 %0, i8* %1, i64 %2)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setlocale_null_unlocked(i32 %category, i8* %buf, i64 %bufsize) #2 {
entry:
  %retval = alloca i32, align 4
  %category.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  %length = alloca i64, align 8
  store i32 %category, i32* %category.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  %0 = load i32, i32* %category.addr, align 4
  %call = call i8* @setlocale_null_androidfix(i32 %0)
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %bufsize.addr, align 8
  %cmp1 = icmp ugt i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 22, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %result, align 8
  %call3 = call i64 @strlen(i8* %4) #13
  store i64 %call3, i64* %length, align 8
  %5 = load i64, i64* %length, align 8
  %6 = load i64, i64* %bufsize.addr, align 8
  %cmp4 = icmp ult i64 %5, %6
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load i8*, i8** %result, align 8
  %9 = load i64, i64* %length, align 8
  %add = add i64 %9, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %add, i1 false)
  store i32 0, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  %10 = load i64, i64* %bufsize.addr, align 8
  %cmp7 = icmp ugt i64 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.else6
  %11 = load i8*, i8** %buf.addr, align 8
  %12 = load i8*, i8** %result, align 8
  %13 = load i64, i64* %bufsize.addr, align 8
  %sub = sub i64 %13, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 %sub, i1 false)
  %14 = load i8*, i8** %buf.addr, align 8
  %15 = load i64, i64* %bufsize.addr, align 8
  %sub9 = sub i64 %15, 1
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %sub9
  store i8 0, i8* %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else6
  store i32 34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then5, %if.end
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @setlocale_null_androidfix(i32 %category) #2 {
entry:
  %category.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  store i32 %category, i32* %category.addr, align 4
  %0 = load i32, i32* %category.addr, align 4
  %call = call i8* @setlocale(i32 %0, i8* null) #11
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @setlocale_null(i32 %category) #2 {
entry:
  %category.addr = alloca i32, align 4
  store i32 %category, i32* %category.addr, align 4
  %0 = load i32, i32* %category.addr, align 4
  %call = call i8* @setlocale_null_androidfix(i32 %0)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dup_safer(i32 %fd) #2 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %call = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %authors, i64 %n_authors) #2 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8**, align 8
  %n_authors.addr = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store i8** %authors, i8*** %authors.addr, align 8
  store i64 %n_authors, i64* %n_authors.addr, align 8
  %0 = load i8*, i8** %command_name.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %2 = load i8*, i8** %command_name.addr, align 8
  %3 = load i8*, i8** %package.addr, align 8
  %4 = load i8*, i8** %version.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i64 0, i64 0), i8* %2, i8* %3, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load i8*, i8** %package.addr, align 8
  %7 = load i8*, i8** %version.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.121, i64 0, i64 0), i8* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.122, i64 0, i64 0), i32 2020)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.123, i64 0, i64 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.124, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.125, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.123, i64 0, i64 0), %struct._IO_FILE* %11)
  %12 = load i64, i64* %n_authors.addr, align 8
  switch i64 %12, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb6
    i64 2, label %sw.bb8
    i64 3, label %sw.bb12
    i64 4, label %sw.bb17
    i64 5, label %sw.bb23
    i64 6, label %sw.bb30
    i64 7, label %sw.bb38
    i64 8, label %sw.bb47
    i64 9, label %sw.bb57
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %14 = load i8**, i8*** %authors.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.126, i64 0, i64 0), i8* %15)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %17 = load i8**, i8*** %authors.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx9, align 8
  %19 = load i8**, i8*** %authors.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.127, i64 0, i64 0), i8* %18, i8* %20)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %22 = load i8**, i8*** %authors.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %22, i64 0
  %23 = load i8*, i8** %arrayidx13, align 8
  %24 = load i8**, i8*** %authors.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %24, i64 1
  %25 = load i8*, i8** %arrayidx14, align 8
  %26 = load i8**, i8*** %authors.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %26, i64 2
  %27 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.128, i64 0, i64 0), i8* %23, i8* %25, i8* %27)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %29 = load i8**, i8*** %authors.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx18, align 8
  %31 = load i8**, i8*** %authors.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx19, align 8
  %33 = load i8**, i8*** %authors.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %33, i64 2
  %34 = load i8*, i8** %arrayidx20, align 8
  %35 = load i8**, i8*** %authors.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %35, i64 3
  %36 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.129, i64 0, i64 0), i8* %30, i8* %32, i8* %34, i8* %36)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %38 = load i8**, i8*** %authors.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %38, i64 0
  %39 = load i8*, i8** %arrayidx24, align 8
  %40 = load i8**, i8*** %authors.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %40, i64 1
  %41 = load i8*, i8** %arrayidx25, align 8
  %42 = load i8**, i8*** %authors.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %42, i64 2
  %43 = load i8*, i8** %arrayidx26, align 8
  %44 = load i8**, i8*** %authors.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %44, i64 3
  %45 = load i8*, i8** %arrayidx27, align 8
  %46 = load i8**, i8*** %authors.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %46, i64 4
  %47 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.130, i64 0, i64 0), i8* %39, i8* %41, i8* %43, i8* %45, i8* %47)
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %49 = load i8**, i8*** %authors.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx31, align 8
  %51 = load i8**, i8*** %authors.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %51, i64 1
  %52 = load i8*, i8** %arrayidx32, align 8
  %53 = load i8**, i8*** %authors.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %53, i64 2
  %54 = load i8*, i8** %arrayidx33, align 8
  %55 = load i8**, i8*** %authors.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %55, i64 3
  %56 = load i8*, i8** %arrayidx34, align 8
  %57 = load i8**, i8*** %authors.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %57, i64 4
  %58 = load i8*, i8** %arrayidx35, align 8
  %59 = load i8**, i8*** %authors.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %59, i64 5
  %60 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.131, i64 0, i64 0), i8* %50, i8* %52, i8* %54, i8* %56, i8* %58, i8* %60)
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %62 = load i8**, i8*** %authors.addr, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %62, i64 0
  %63 = load i8*, i8** %arrayidx39, align 8
  %64 = load i8**, i8*** %authors.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %64, i64 1
  %65 = load i8*, i8** %arrayidx40, align 8
  %66 = load i8**, i8*** %authors.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %66, i64 2
  %67 = load i8*, i8** %arrayidx41, align 8
  %68 = load i8**, i8*** %authors.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %68, i64 3
  %69 = load i8*, i8** %arrayidx42, align 8
  %70 = load i8**, i8*** %authors.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %70, i64 4
  %71 = load i8*, i8** %arrayidx43, align 8
  %72 = load i8**, i8*** %authors.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %72, i64 5
  %73 = load i8*, i8** %arrayidx44, align 8
  %74 = load i8**, i8*** %authors.addr, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %74, i64 6
  %75 = load i8*, i8** %arrayidx45, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.132, i64 0, i64 0), i8* %63, i8* %65, i8* %67, i8* %69, i8* %71, i8* %73, i8* %75)
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %77 = load i8**, i8*** %authors.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %77, i64 0
  %78 = load i8*, i8** %arrayidx48, align 8
  %79 = load i8**, i8*** %authors.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %79, i64 1
  %80 = load i8*, i8** %arrayidx49, align 8
  %81 = load i8**, i8*** %authors.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %81, i64 2
  %82 = load i8*, i8** %arrayidx50, align 8
  %83 = load i8**, i8*** %authors.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %83, i64 3
  %84 = load i8*, i8** %arrayidx51, align 8
  %85 = load i8**, i8*** %authors.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %85, i64 4
  %86 = load i8*, i8** %arrayidx52, align 8
  %87 = load i8**, i8*** %authors.addr, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %87, i64 5
  %88 = load i8*, i8** %arrayidx53, align 8
  %89 = load i8**, i8*** %authors.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %89, i64 6
  %90 = load i8*, i8** %arrayidx54, align 8
  %91 = load i8**, i8*** %authors.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %91, i64 7
  %92 = load i8*, i8** %arrayidx55, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.133, i64 0, i64 0), i8* %78, i8* %80, i8* %82, i8* %84, i8* %86, i8* %88, i8* %90, i8* %92)
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %94 = load i8**, i8*** %authors.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %94, i64 0
  %95 = load i8*, i8** %arrayidx58, align 8
  %96 = load i8**, i8*** %authors.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %96, i64 1
  %97 = load i8*, i8** %arrayidx59, align 8
  %98 = load i8**, i8*** %authors.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %98, i64 2
  %99 = load i8*, i8** %arrayidx60, align 8
  %100 = load i8**, i8*** %authors.addr, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %100, i64 3
  %101 = load i8*, i8** %arrayidx61, align 8
  %102 = load i8**, i8*** %authors.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %102, i64 4
  %103 = load i8*, i8** %arrayidx62, align 8
  %104 = load i8**, i8*** %authors.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %104, i64 5
  %105 = load i8*, i8** %arrayidx63, align 8
  %106 = load i8**, i8*** %authors.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %106, i64 6
  %107 = load i8*, i8** %arrayidx64, align 8
  %108 = load i8**, i8*** %authors.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %108, i64 7
  %109 = load i8*, i8** %arrayidx65, align 8
  %110 = load i8**, i8*** %authors.addr, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %110, i64 8
  %111 = load i8*, i8** %arrayidx66, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.134, i64 0, i64 0), i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105, i8* %107, i8* %109, i8* %111)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %113 = load i8**, i8*** %authors.addr, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %113, i64 0
  %114 = load i8*, i8** %arrayidx68, align 8
  %115 = load i8**, i8*** %authors.addr, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %115, i64 1
  %116 = load i8*, i8** %arrayidx69, align 8
  %117 = load i8**, i8*** %authors.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %117, i64 2
  %118 = load i8*, i8** %arrayidx70, align 8
  %119 = load i8**, i8*** %authors.addr, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %119, i64 3
  %120 = load i8*, i8** %arrayidx71, align 8
  %121 = load i8**, i8*** %authors.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %121, i64 4
  %122 = load i8*, i8** %arrayidx72, align 8
  %123 = load i8**, i8*** %authors.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %123, i64 5
  %124 = load i8*, i8** %arrayidx73, align 8
  %125 = load i8**, i8*** %authors.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %125, i64 6
  %126 = load i8*, i8** %arrayidx74, align 8
  %127 = load i8**, i8*** %authors.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %127, i64 7
  %128 = load i8*, i8** %arrayidx75, align 8
  %129 = load i8**, i8*** %authors.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %129, i64 8
  %130 = load i8*, i8** %arrayidx76, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.135, i64 0, i64 0), i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124, i8* %126, i8* %128, i8* %130)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb57, %sw.bb47, %sw.bb38, %sw.bb30, %sw.bb23, %sw.bb17, %sw.bb12, %sw.bb8, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %authors) #2 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8**, align 8
  %n_authors = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store i8** %authors, i8*** %authors.addr, align 8
  store i64 0, i64* %n_authors, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8**, i8*** %authors.addr, align 8
  %1 = load i64, i64* %n_authors, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 %1
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %n_authors, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %n_authors, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load i8*, i8** %command_name.addr, align 8
  %6 = load i8*, i8** %package.addr, align 8
  %7 = load i8*, i8** %version.addr, align 8
  %8 = load i8**, i8*** %authors.addr, align 8
  %9 = load i64, i64* %n_authors, align 8
  call void @version_etc_arn(%struct._IO_FILE* %4, i8* %5, i8* %6, i8* %7, i8** %8, i64 %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, %struct.__va_list_tag* %authors) #2 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca %struct.__va_list_tag*, align 8
  %n_authors = alloca i64, align 8
  %authtab = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8
  store i64 0, i64* %n_authors, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n_authors, align 8
  %cmp = icmp ult i64 %0, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 8
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %land.rhs
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 3
  %reg_save_area = load i8*, i8** %2, align 8
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %4 = bitcast i8* %3 to i8**
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %land.rhs
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %6 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ]
  %7 = load i8*, i8** %vaarg.addr, align 8
  %8 = load i64, i64* %n_authors, align 8
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i64 0, i64 %8
  store i8* %7, i8** %arrayidx, align 8
  %cmp1 = icmp ne i8* %7, null
  br label %land.end

land.end:                                         ; preds = %vaarg.end, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp1, %vaarg.end ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %n_authors, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %n_authors, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %12 = load i8*, i8** %command_name.addr, align 8
  %13 = load i8*, i8** %package.addr, align 8
  %14 = load i8*, i8** %version.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i64 0, i64 0
  %15 = load i64, i64* %n_authors, align 8
  call void @version_etc_arn(%struct._IO_FILE* %11, i8* %12, i8* %13, i8* %14, i8** %arraydecay, i64 %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, ...) #2 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %command_name, i8** %command_name.addr, align 8
  store i8* %package, i8** %package.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = load i8*, i8** %command_name.addr, align 8
  %2 = load i8*, i8** %package.addr, align 8
  %3 = load i8*, i8** %version.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i64 0, i64 0
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i64 0, i64 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: noinline nounwind uwtable
define dso_local void @emit_bug_reporting_address() #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.123, i64 0, i64 0), %struct._IO_FILE* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.138, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.139, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.140, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.141, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.142, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.143, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.144, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @xnmalloc(i64 %n, i64 %s) #2 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %div = udiv i64 9223372036854775807, %0
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %div, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @xalloc_die() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8
  %3 = load i64, i64* %s.addr, align 8
  %mul = mul i64 %2, %3
  %call = call noalias i8* @xmalloc(i64 %mul)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @xmalloc(i64 %n) #2 {
entry:
  %n.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #11
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @xalloc_die() #14
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %p, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #2 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %div = udiv i64 9223372036854775807, %0
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %div, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @xalloc_die() #14
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %p.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load i64, i64* %s.addr, align 8
  %mul = mul i64 %3, %4
  %call = call i8* @xrealloc(i8* %2, i64 %mul)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xrealloc(i8* %p, i64 %n) #2 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** %p.addr, align 8
  call void @free(i8* %2) #11
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i64, i64* %n.addr, align 8
  %call = call i8* @realloc(i8* %3, i64 %4) #11
  store i8* %call, i8** %p.addr, align 8
  %5 = load i8*, i8** %p.addr, align 8
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %if.end6, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %if.end
  %6 = load i64, i64* %n.addr, align 8
  %tobool4 = icmp ne i64 %6, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %land.lhs.true3
  call void @xalloc_die() #14
  unreachable

if.end6:                                          ; preds = %land.lhs.true3, %if.end
  %7 = load i8*, i8** %p.addr, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %8 = load i8*, i8** %retval, align 8
  ret i8* %8
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #2 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64* %pn, i64** %pn.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64*, i64** %pn.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %n, align 8
  %2 = load i8*, i8** %p.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %n, align 8
  %tobool1 = icmp ne i64 %3, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %4 = load i64, i64* %s.addr, align 8
  %div = udiv i64 128, %4
  store i64 %div, i64* %n, align 8
  %5 = load i64, i64* %n, align 8
  %tobool3 = icmp ne i64 %5, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %6 = load i64, i64* %n, align 8
  %add = add i64 %6, %conv
  store i64 %add, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i64, i64* %s.addr, align 8
  %div4 = udiv i64 9223372036854775807, %7
  %8 = load i64, i64* %n, align 8
  %cmp = icmp ult i64 %div4, %8
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @xalloc_die() #14
  unreachable

if.end7:                                          ; preds = %if.end
  br label %if.end16

if.else:                                          ; preds = %entry
  %9 = load i64, i64* %s.addr, align 8
  %div8 = udiv i64 6148914691236517204, %9
  %10 = load i64, i64* %n, align 8
  %cmp9 = icmp ule i64 %div8, %10
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  call void @xalloc_die() #14
  unreachable

if.end12:                                         ; preds = %if.else
  %11 = load i64, i64* %n, align 8
  %div13 = udiv i64 %11, 2
  %add14 = add i64 %div13, 1
  %12 = load i64, i64* %n, align 8
  %add15 = add i64 %12, %add14
  store i64 %add15, i64* %n, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %if.end7
  %13 = load i64, i64* %n, align 8
  %14 = load i64*, i64** %pn.addr, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i8*, i8** %p.addr, align 8
  %16 = load i64, i64* %n, align 8
  %17 = load i64, i64* %s.addr, align 8
  %mul = mul i64 %16, %17
  %call = call i8* @xrealloc(i8* %15, i64 %mul)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @xcharalloc(i64 %n) #2 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call noalias i8* @xmalloc(i64 %0)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @x2realloc(i8* %p, i64* %pn) #2 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64* %pn, i64** %pn.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i64*, i64** %pn.addr, align 8
  %call = call i8* @x2nrealloc(i8* %0, i64* %1, i64 1)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @xzalloc(i64 %n) #2 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call noalias i8* @xcalloc(i64 %0, i64 1)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @xcalloc(i64 %n, i64 %s) #2 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %div = udiv i64 9223372036854775807, %0
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %div, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8
  %3 = load i64, i64* %s.addr, align 8
  %call = call noalias i8* @calloc(i64 %2, i64 %3) #11
  store i8* %call, i8** %p, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @xalloc_die() #14
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %p, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xmemdup(i8* %p, i64 %s) #2 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %call = call noalias i8* @xmalloc(i64 %0)
  %1 = load i8*, i8** %p.addr, align 8
  %2 = load i64, i64* %s.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %call, i8* align 1 %1, i64 %2, i1 false)
  ret i8* %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @xstrdup(i8* %string) #2 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %1) #13
  %add = add i64 %call, 1
  %call1 = call i8* @xmemdup(i8* %0, i64 %add)
  ret i8* %call1
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @xalloc_die() #0 {
entry:
  %0 = load volatile i32, i32* @exit_failure, align 4
  call void (i32, i32, i8*, ...) @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.164, i64 0, i64 0))
  call void @abort() #12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @xmemcoll(i8* %s1, i64 %s1len, i8* %s2, i64 %s2len) #2 {
entry:
  %s1.addr = alloca i8*, align 8
  %s1len.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2len.addr = alloca i64, align 8
  %diff = alloca i32, align 4
  %collation_errno = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %s1len, i64* %s1len.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %s2len, i64* %s2len.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i64, i64* %s1len.addr, align 8
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i64, i64* %s2len.addr, align 8
  %call = call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3)
  store i32 %call, i32* %diff, align 4
  %call1 = call i32* @__errno_location() #15
  %4 = load i32, i32* %call1, align 4
  store i32 %4, i32* %collation_errno, align 4
  %5 = load i32, i32* %collation_errno, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %collation_errno, align 4
  %7 = load i8*, i8** %s1.addr, align 8
  %8 = load i64, i64* %s1len.addr, align 8
  %9 = load i8*, i8** %s2.addr, align 8
  %10 = load i64, i64* %s2len.addr, align 8
  call void @collate_error(i32 %6, i8* %7, i64 %8, i8* %9, i64 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %diff, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define internal void @collate_error(i32 %collation_errno, i8* %s1, i64 %s1len, i8* %s2, i64 %s2len) #2 {
entry:
  %collation_errno.addr = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s1len.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2len.addr = alloca i64, align 8
  store i32 %collation_errno, i32* %collation_errno.addr, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %s1len, i64* %s1len.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %s2len, i64* %s2len.addr, align 8
  %0 = load i32, i32* %collation_errno.addr, align 4
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.167, i64 0, i64 0))
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.168, i64 0, i64 0))
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i64, i64* %s1len.addr, align 8
  %call = call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %2, i64 %3)
  %4 = load i8*, i8** %s2.addr, align 8
  %5 = load i64, i64* %s2len.addr, align 8
  %call1 = call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %4, i64 %5)
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.169, i64 0, i64 0), i8* %call, i8* %call1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @xmemcoll0(i8* %s1, i64 %s1size, i8* %s2, i64 %s2size) #2 {
entry:
  %s1.addr = alloca i8*, align 8
  %s1size.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2size.addr = alloca i64, align 8
  %diff = alloca i32, align 4
  %collation_errno = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %s1size, i64* %s1size.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %s2size, i64* %s2size.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i64, i64* %s1size.addr, align 8
  %2 = load i8*, i8** %s2.addr, align 8
  %3 = load i64, i64* %s2size.addr, align 8
  %call = call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3)
  store i32 %call, i32* %diff, align 4
  %call1 = call i32* @__errno_location() #15
  %4 = load i32, i32* %call1, align 4
  store i32 %4, i32* %collation_errno, align 4
  %5 = load i32, i32* %collation_errno, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %collation_errno, align 4
  %7 = load i8*, i8** %s1.addr, align 8
  %8 = load i64, i64* %s1size.addr, align 8
  %sub = sub i64 %8, 1
  %9 = load i8*, i8** %s2.addr, align 8
  %10 = load i64, i64* %s2size.addr, align 8
  %sub2 = sub i64 %10, 1
  call void @collate_error(i32 %6, i8* %7, i64 %sub, i8* %9, i64 %sub2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %diff, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @xstrtoul(i8* %s, i8** %ptr, i32 %strtol_base, i64* %val, i8* %valid_suffixes) #2 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %strtol_base.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %valid_suffixes.addr = alloca i8*, align 8
  %t_ptr = alloca i8*, align 8
  %p = alloca i8**, align 8
  %tmp = alloca i64, align 8
  %err = alloca i32, align 4
  %q = alloca i8*, align 8
  %ch = alloca i8, align 1
  %base = alloca i32, align 4
  %suffixes = alloca i32, align 4
  %overflow = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  store i32 %strtol_base, i32* %strtol_base.addr, align 4
  store i64* %val, i64** %val.addr, align 8
  store i8* %valid_suffixes, i8** %valid_suffixes.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load i32, i32* %strtol_base.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %strtol_base.addr, align 4
  %cmp1 = icmp sle i32 %1, 36
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.172, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.173, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #12
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load i8**, i8*** %ptr.addr, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i8**, i8*** %ptr.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %3, %cond.true ], [ %t_ptr, %cond.false ]
  store i8** %cond, i8*** %p, align 8
  %call = call i32* @__errno_location() #15
  store i32 0, i32* %call, align 4
  %4 = load i8*, i8** %s.addr, align 8
  store i8* %4, i8** %q, align 8
  %5 = load i8*, i8** %q, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %ch, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %call2 = call i16** @__ctype_b_loc() #15
  %7 = load i16*, i16** %call2, align 8
  %8 = load i8, i8* %ch, align 1
  %conv = zext i8 %8 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %9 to i32
  %and = and i32 %conv3, 8192
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  %11 = load i8, i8* %incdec.ptr, align 1
  store i8 %11, i8* %ch, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8, i8* %ch, align 1
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv5, 45
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  store i32 4, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.end
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8**, i8*** %p, align 8
  %15 = load i32, i32* %strtol_base.addr, align 4
  %call10 = call i64 @strtoul(i8* %13, i8** %14, i32 %15) #11
  store i64 %call10, i64* %tmp, align 8
  %16 = load i8**, i8*** %p, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %s.addr, align 8
  %cmp11 = icmp eq i8* %17, %18
  br i1 %cmp11, label %if.then13, label %if.else25

if.then13:                                        ; preds = %if.end9
  %19 = load i8*, i8** %valid_suffixes.addr, align 8
  %tobool14 = icmp ne i8* %19, null
  br i1 %tobool14, label %land.lhs.true15, label %if.else23

land.lhs.true15:                                  ; preds = %if.then13
  %20 = load i8**, i8*** %p, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %conv16 = sext i8 %22 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %land.lhs.true18, label %if.else23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %23 = load i8*, i8** %valid_suffixes.addr, align 8
  %24 = load i8**, i8*** %p, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %conv19 = sext i8 %26 to i32
  %call20 = call i8* @strchr(i8* %23, i32 %conv19) #13
  %tobool21 = icmp ne i8* %call20, null
  br i1 %tobool21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %land.lhs.true18
  store i64 1, i64* %tmp, align 8
  br label %if.end24

if.else23:                                        ; preds = %land.lhs.true18, %land.lhs.true15, %if.then13
  store i32 4, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then22
  br label %if.end36

if.else25:                                        ; preds = %if.end9
  %call26 = call i32* @__errno_location() #15
  %27 = load i32, i32* %call26, align 4
  %cmp27 = icmp ne i32 %27, 0
  br i1 %cmp27, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.else25
  %call30 = call i32* @__errno_location() #15
  %28 = load i32, i32* %call30, align 4
  %cmp31 = icmp ne i32 %28, 34
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then29
  store i32 4, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then29
  store i32 1, i32* %err, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.else25
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end24
  %29 = load i8*, i8** %valid_suffixes.addr, align 8
  %tobool37 = icmp ne i8* %29, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end36
  %30 = load i64, i64* %tmp, align 8
  %31 = load i64*, i64** %val.addr, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %err, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end36
  %33 = load i8**, i8*** %p, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %conv40 = sext i8 %35 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.end98

if.then43:                                        ; preds = %if.end39
  store i32 1024, i32* %base, align 4
  store i32 1, i32* %suffixes, align 4
  %36 = load i8*, i8** %valid_suffixes.addr, align 8
  %37 = load i8**, i8*** %p, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %conv44 = sext i8 %39 to i32
  %call45 = call i8* @strchr(i8* %36, i32 %conv44) #13
  %tobool46 = icmp ne i8* %call45, null
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.then43
  %40 = load i64, i64* %tmp, align 8
  %41 = load i64*, i64** %val.addr, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %err, align 4
  %or = or i32 %42, 2
  store i32 %or, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then43
  %43 = load i8**, i8*** %p, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %conv49 = sext i8 %45 to i32
  switch i32 %conv49, label %sw.epilog66 [
    i32 69, label %sw.bb
    i32 71, label %sw.bb
    i32 103, label %sw.bb
    i32 107, label %sw.bb
    i32 75, label %sw.bb
    i32 77, label %sw.bb
    i32 109, label %sw.bb
    i32 80, label %sw.bb
    i32 84, label %sw.bb
    i32 116, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48
  %46 = load i8*, i8** %valid_suffixes.addr, align 8
  %call50 = call i8* @strchr(i8* %46, i32 48) #13
  %tobool51 = icmp ne i8* %call50, null
  br i1 %tobool51, label %if.then52, label %if.end65

if.then52:                                        ; preds = %sw.bb
  %47 = load i8**, i8*** %p, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %47, i64 0
  %48 = load i8*, i8** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %49 to i32
  switch i32 %conv55, label %sw.epilog [
    i32 105, label %sw.bb56
    i32 66, label %sw.bb64
    i32 68, label %sw.bb64
  ]

sw.bb56:                                          ; preds = %if.then52
  %50 = load i8**, i8*** %p, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %50, i64 0
  %51 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %52 to i32
  %cmp60 = icmp eq i32 %conv59, 66
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %sw.bb56
  %53 = load i32, i32* %suffixes, align 4
  %add = add nsw i32 %53, 2
  store i32 %add, i32* %suffixes, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %sw.bb56
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.then52, %if.then52
  store i32 1000, i32* %base, align 4
  %54 = load i32, i32* %suffixes, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %suffixes, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then52, %sw.bb64, %if.end63
  br label %if.end65

if.end65:                                         ; preds = %sw.epilog, %sw.bb
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %if.end65, %if.end48
  %55 = load i8**, i8*** %p, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %conv67 = sext i8 %57 to i32
  switch i32 %conv67, label %sw.default [
    i32 98, label %sw.bb68
    i32 66, label %sw.bb70
    i32 99, label %sw.bb72
    i32 69, label %sw.bb73
    i32 71, label %sw.bb75
    i32 103, label %sw.bb75
    i32 107, label %sw.bb77
    i32 75, label %sw.bb77
    i32 77, label %sw.bb79
    i32 109, label %sw.bb79
    i32 80, label %sw.bb81
    i32 84, label %sw.bb83
    i32 116, label %sw.bb83
    i32 119, label %sw.bb85
    i32 89, label %sw.bb87
    i32 90, label %sw.bb89
  ]

sw.bb68:                                          ; preds = %sw.epilog66
  %call69 = call i32 @bkm_scale(i64* %tmp, i32 512)
  store i32 %call69, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb70:                                          ; preds = %sw.epilog66
  %call71 = call i32 @bkm_scale(i64* %tmp, i32 1024)
  store i32 %call71, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb72:                                          ; preds = %sw.epilog66
  store i32 0, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb73:                                          ; preds = %sw.epilog66
  %58 = load i32, i32* %base, align 4
  %call74 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %58, i32 6)
  store i32 %call74, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb75:                                          ; preds = %sw.epilog66, %sw.epilog66
  %59 = load i32, i32* %base, align 4
  %call76 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %59, i32 3)
  store i32 %call76, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb77:                                          ; preds = %sw.epilog66, %sw.epilog66
  %60 = load i32, i32* %base, align 4
  %call78 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %60, i32 1)
  store i32 %call78, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb79:                                          ; preds = %sw.epilog66, %sw.epilog66
  %61 = load i32, i32* %base, align 4
  %call80 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %61, i32 2)
  store i32 %call80, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb81:                                          ; preds = %sw.epilog66
  %62 = load i32, i32* %base, align 4
  %call82 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %62, i32 5)
  store i32 %call82, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb83:                                          ; preds = %sw.epilog66, %sw.epilog66
  %63 = load i32, i32* %base, align 4
  %call84 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %63, i32 4)
  store i32 %call84, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb85:                                          ; preds = %sw.epilog66
  %call86 = call i32 @bkm_scale(i64* %tmp, i32 2)
  store i32 %call86, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb87:                                          ; preds = %sw.epilog66
  %64 = load i32, i32* %base, align 4
  %call88 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %64, i32 8)
  store i32 %call88, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb89:                                          ; preds = %sw.epilog66
  %65 = load i32, i32* %base, align 4
  %call90 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %65, i32 7)
  store i32 %call90, i32* %overflow, align 4
  br label %sw.epilog92

sw.default:                                       ; preds = %sw.epilog66
  %66 = load i64, i64* %tmp, align 8
  %67 = load i64*, i64** %val.addr, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i32, i32* %err, align 4
  %or91 = or i32 %68, 2
  store i32 %or91, i32* %retval, align 4
  br label %return

sw.epilog92:                                      ; preds = %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb72, %sw.bb70, %sw.bb68
  %69 = load i32, i32* %overflow, align 4
  %70 = load i32, i32* %err, align 4
  %or93 = or i32 %70, %69
  store i32 %or93, i32* %err, align 4
  %71 = load i32, i32* %suffixes, align 4
  %72 = load i8**, i8*** %p, align 8
  %73 = load i8*, i8** %72, align 8
  %idx.ext = sext i32 %71 to i64
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 %idx.ext
  store i8* %add.ptr, i8** %72, align 8
  %74 = load i8**, i8*** %p, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %tobool94 = icmp ne i8 %76, 0
  br i1 %tobool94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %sw.epilog92
  %77 = load i32, i32* %err, align 4
  %or96 = or i32 %77, 2
  store i32 %or96, i32* %err, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %sw.epilog92
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end39
  %78 = load i64, i64* %tmp, align 8
  %79 = load i64*, i64** %val.addr, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %err, align 4
  store i32 %80, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end98, %sw.default, %if.then47, %if.then38, %if.then33, %if.else23, %if.then8
  %81 = load i32, i32* %retval, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8*, i8**, i32) #6

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale(i64* %x, i32 %scale_factor) #2 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64*, align 8
  %scale_factor.addr = alloca i32, align 4
  store i64* %x, i64** %x.addr, align 8
  store i32 %scale_factor, i32* %scale_factor.addr, align 4
  %0 = load i32, i32* %scale_factor.addr, align 4
  %conv = sext i32 %0 to i64
  %div = udiv i64 -1, %conv
  %1 = load i64*, i64** %x.addr, align 8
  %2 = load i64, i64* %1, align 8
  %cmp = icmp ult i64 %div, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %x.addr, align 8
  store i64 -1, i64* %3, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %scale_factor.addr, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64*, i64** %x.addr, align 8
  %6 = load i64, i64* %5, align 8
  %mul = mul i64 %6, %conv2
  store i64 %mul, i64* %5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale_by_power(i64* %x, i32 %base, i32 %power) #2 {
entry:
  %x.addr = alloca i64*, align 8
  %base.addr = alloca i32, align 4
  %power.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i64* %x, i64** %x.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %power, i32* %power.addr, align 4
  store i32 0, i32* %err, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %power.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %power.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64*, i64** %x.addr, align 8
  %2 = load i32, i32* %base.addr, align 4
  %call = call i32 @bkm_scale(i64* %1, i32 %2)
  %3 = load i32, i32* %err, align 4
  %or = or i32 %3, %call
  store i32 %or, i32* %err, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %err, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @xstrtoumax(i8* %s, i8** %ptr, i32 %strtol_base, i64* %val, i8* %valid_suffixes) #2 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %strtol_base.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %valid_suffixes.addr = alloca i8*, align 8
  %t_ptr = alloca i8*, align 8
  %p = alloca i8**, align 8
  %tmp = alloca i64, align 8
  %err = alloca i32, align 4
  %q = alloca i8*, align 8
  %ch = alloca i8, align 1
  %base = alloca i32, align 4
  %suffixes = alloca i32, align 4
  %overflow = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  store i32 %strtol_base, i32* %strtol_base.addr, align 4
  store i64* %val, i64** %val.addr, align 8
  store i8* %valid_suffixes, i8** %valid_suffixes.addr, align 8
  store i32 0, i32* %err, align 4
  %0 = load i32, i32* %strtol_base.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %strtol_base.addr, align 4
  %cmp1 = icmp sle i32 %1, 36
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.176, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.177, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #12
  unreachable

if.end:                                           ; preds = %if.then
  %2 = load i8**, i8*** %ptr.addr, align 8
  %tobool = icmp ne i8** %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i8**, i8*** %ptr.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %3, %cond.true ], [ %t_ptr, %cond.false ]
  store i8** %cond, i8*** %p, align 8
  %call = call i32* @__errno_location() #15
  store i32 0, i32* %call, align 4
  %4 = load i8*, i8** %s.addr, align 8
  store i8* %4, i8** %q, align 8
  %5 = load i8*, i8** %q, align 8
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %ch, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %call2 = call i16** @__ctype_b_loc() #15
  %7 = load i16*, i16** %call2, align 8
  %8 = load i8, i8* %ch, align 1
  %conv = zext i8 %8 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv3 = zext i16 %9 to i32
  %and = and i32 %conv3, 8192
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  %11 = load i8, i8* %incdec.ptr, align 1
  store i8 %11, i8* %ch, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i8, i8* %ch, align 1
  %conv5 = zext i8 %12 to i32
  %cmp6 = icmp eq i32 %conv5, 45
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  store i32 4, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %while.end
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8**, i8*** %p, align 8
  %15 = load i32, i32* %strtol_base.addr, align 4
  %call10 = call i64 @strtoumax(i8* %13, i8** %14, i32 %15) #11
  store i64 %call10, i64* %tmp, align 8
  %16 = load i8**, i8*** %p, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %s.addr, align 8
  %cmp11 = icmp eq i8* %17, %18
  br i1 %cmp11, label %if.then13, label %if.else25

if.then13:                                        ; preds = %if.end9
  %19 = load i8*, i8** %valid_suffixes.addr, align 8
  %tobool14 = icmp ne i8* %19, null
  br i1 %tobool14, label %land.lhs.true15, label %if.else23

land.lhs.true15:                                  ; preds = %if.then13
  %20 = load i8**, i8*** %p, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %conv16 = sext i8 %22 to i32
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %land.lhs.true18, label %if.else23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %23 = load i8*, i8** %valid_suffixes.addr, align 8
  %24 = load i8**, i8*** %p, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %conv19 = sext i8 %26 to i32
  %call20 = call i8* @strchr(i8* %23, i32 %conv19) #13
  %tobool21 = icmp ne i8* %call20, null
  br i1 %tobool21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %land.lhs.true18
  store i64 1, i64* %tmp, align 8
  br label %if.end24

if.else23:                                        ; preds = %land.lhs.true18, %land.lhs.true15, %if.then13
  store i32 4, i32* %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then22
  br label %if.end36

if.else25:                                        ; preds = %if.end9
  %call26 = call i32* @__errno_location() #15
  %27 = load i32, i32* %call26, align 4
  %cmp27 = icmp ne i32 %27, 0
  br i1 %cmp27, label %if.then29, label %if.end35

if.then29:                                        ; preds = %if.else25
  %call30 = call i32* @__errno_location() #15
  %28 = load i32, i32* %call30, align 4
  %cmp31 = icmp ne i32 %28, 34
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then29
  store i32 4, i32* %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then29
  store i32 1, i32* %err, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.else25
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end24
  %29 = load i8*, i8** %valid_suffixes.addr, align 8
  %tobool37 = icmp ne i8* %29, null
  br i1 %tobool37, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end36
  %30 = load i64, i64* %tmp, align 8
  %31 = load i64*, i64** %val.addr, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %err, align 4
  store i32 %32, i32* %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end36
  %33 = load i8**, i8*** %p, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %conv40 = sext i8 %35 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then43, label %if.end98

if.then43:                                        ; preds = %if.end39
  store i32 1024, i32* %base, align 4
  store i32 1, i32* %suffixes, align 4
  %36 = load i8*, i8** %valid_suffixes.addr, align 8
  %37 = load i8**, i8*** %p, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %conv44 = sext i8 %39 to i32
  %call45 = call i8* @strchr(i8* %36, i32 %conv44) #13
  %tobool46 = icmp ne i8* %call45, null
  br i1 %tobool46, label %if.end48, label %if.then47

if.then47:                                        ; preds = %if.then43
  %40 = load i64, i64* %tmp, align 8
  %41 = load i64*, i64** %val.addr, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %err, align 4
  %or = or i32 %42, 2
  store i32 %or, i32* %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then43
  %43 = load i8**, i8*** %p, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %conv49 = sext i8 %45 to i32
  switch i32 %conv49, label %sw.epilog66 [
    i32 69, label %sw.bb
    i32 71, label %sw.bb
    i32 103, label %sw.bb
    i32 107, label %sw.bb
    i32 75, label %sw.bb
    i32 77, label %sw.bb
    i32 109, label %sw.bb
    i32 80, label %sw.bb
    i32 84, label %sw.bb
    i32 116, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48, %if.end48
  %46 = load i8*, i8** %valid_suffixes.addr, align 8
  %call50 = call i8* @strchr(i8* %46, i32 48) #13
  %tobool51 = icmp ne i8* %call50, null
  br i1 %tobool51, label %if.then52, label %if.end65

if.then52:                                        ; preds = %sw.bb
  %47 = load i8**, i8*** %p, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %47, i64 0
  %48 = load i8*, i8** %arrayidx53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %49 to i32
  switch i32 %conv55, label %sw.epilog [
    i32 105, label %sw.bb56
    i32 66, label %sw.bb64
    i32 68, label %sw.bb64
  ]

sw.bb56:                                          ; preds = %if.then52
  %50 = load i8**, i8*** %p, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %50, i64 0
  %51 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %51, i64 2
  %52 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %52 to i32
  %cmp60 = icmp eq i32 %conv59, 66
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %sw.bb56
  %53 = load i32, i32* %suffixes, align 4
  %add = add nsw i32 %53, 2
  store i32 %add, i32* %suffixes, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %sw.bb56
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.then52, %if.then52
  store i32 1000, i32* %base, align 4
  %54 = load i32, i32* %suffixes, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %suffixes, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then52, %sw.bb64, %if.end63
  br label %if.end65

if.end65:                                         ; preds = %sw.epilog, %sw.bb
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %if.end65, %if.end48
  %55 = load i8**, i8*** %p, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %conv67 = sext i8 %57 to i32
  switch i32 %conv67, label %sw.default [
    i32 98, label %sw.bb68
    i32 66, label %sw.bb70
    i32 99, label %sw.bb72
    i32 69, label %sw.bb73
    i32 71, label %sw.bb75
    i32 103, label %sw.bb75
    i32 107, label %sw.bb77
    i32 75, label %sw.bb77
    i32 77, label %sw.bb79
    i32 109, label %sw.bb79
    i32 80, label %sw.bb81
    i32 84, label %sw.bb83
    i32 116, label %sw.bb83
    i32 119, label %sw.bb85
    i32 89, label %sw.bb87
    i32 90, label %sw.bb89
  ]

sw.bb68:                                          ; preds = %sw.epilog66
  %call69 = call i32 @bkm_scale.178(i64* %tmp, i32 512)
  store i32 %call69, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb70:                                          ; preds = %sw.epilog66
  %call71 = call i32 @bkm_scale.178(i64* %tmp, i32 1024)
  store i32 %call71, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb72:                                          ; preds = %sw.epilog66
  store i32 0, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb73:                                          ; preds = %sw.epilog66
  %58 = load i32, i32* %base, align 4
  %call74 = call i32 @bkm_scale_by_power.179(i64* %tmp, i32 %58, i32 6)
  store i32 %call74, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb75:                                          ; preds = %sw.epilog66, %sw.epilog66
  %59 = load i32, i32* %base, align 4
  %call76 = call i32 @bkm_scale_by_power.179(i64* %tmp, i32 %59, i32 3)
  store i32 %call76, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb77:                                          ; preds = %sw.epilog66, %sw.epilog66
  %60 = load i32, i32* %base, align 4
  %call78 = call i32 @bkm_scale_by_power.179(i64* %tmp, i32 %60, i32 1)
  store i32 %call78, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb79:                                          ; preds = %sw.epilog66, %sw.epilog66
  %61 = load i32, i32* %base, align 4
  %call80 = call i32 @bkm_scale_by_power.179(i64* %tmp, i32 %61, i32 2)
  store i32 %call80, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb81:                                          ; preds = %sw.epilog66
  %62 = load i32, i32* %base, align 4
  %call82 = call i32 @bkm_scale_by_power.179(i64* %tmp, i32 %62, i32 5)
  store i32 %call82, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb83:                                          ; preds = %sw.epilog66, %sw.epilog66
  %63 = load i32, i32* %base, align 4
  %call84 = call i32 @bkm_scale_by_power.179(i64* %tmp, i32 %63, i32 4)
  store i32 %call84, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb85:                                          ; preds = %sw.epilog66
  %call86 = call i32 @bkm_scale.178(i64* %tmp, i32 2)
  store i32 %call86, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb87:                                          ; preds = %sw.epilog66
  %64 = load i32, i32* %base, align 4
  %call88 = call i32 @bkm_scale_by_power.179(i64* %tmp, i32 %64, i32 8)
  store i32 %call88, i32* %overflow, align 4
  br label %sw.epilog92

sw.bb89:                                          ; preds = %sw.epilog66
  %65 = load i32, i32* %base, align 4
  %call90 = call i32 @bkm_scale_by_power.179(i64* %tmp, i32 %65, i32 7)
  store i32 %call90, i32* %overflow, align 4
  br label %sw.epilog92

sw.default:                                       ; preds = %sw.epilog66
  %66 = load i64, i64* %tmp, align 8
  %67 = load i64*, i64** %val.addr, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i32, i32* %err, align 4
  %or91 = or i32 %68, 2
  store i32 %or91, i32* %retval, align 4
  br label %return

sw.epilog92:                                      ; preds = %sw.bb89, %sw.bb87, %sw.bb85, %sw.bb83, %sw.bb81, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb72, %sw.bb70, %sw.bb68
  %69 = load i32, i32* %overflow, align 4
  %70 = load i32, i32* %err, align 4
  %or93 = or i32 %70, %69
  store i32 %or93, i32* %err, align 4
  %71 = load i32, i32* %suffixes, align 4
  %72 = load i8**, i8*** %p, align 8
  %73 = load i8*, i8** %72, align 8
  %idx.ext = sext i32 %71 to i64
  %add.ptr = getelementptr inbounds i8, i8* %73, i64 %idx.ext
  store i8* %add.ptr, i8** %72, align 8
  %74 = load i8**, i8*** %p, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %tobool94 = icmp ne i8 %76, 0
  br i1 %tobool94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %sw.epilog92
  %77 = load i32, i32* %err, align 4
  %or96 = or i32 %77, 2
  store i32 %or96, i32* %err, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %sw.epilog92
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end39
  %78 = load i64, i64* %tmp, align 8
  %79 = load i64*, i64** %val.addr, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %err, align 4
  store i32 %80, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end98, %sw.default, %if.then47, %if.then38, %if.then33, %if.else23, %if.then8
  %81 = load i32, i32* %retval, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare dso_local i64 @strtoumax(i8*, i8**, i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale.178(i64* %x, i32 %scale_factor) #2 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64*, align 8
  %scale_factor.addr = alloca i32, align 4
  store i64* %x, i64** %x.addr, align 8
  store i32 %scale_factor, i32* %scale_factor.addr, align 4
  %0 = load i32, i32* %scale_factor.addr, align 4
  %conv = sext i32 %0 to i64
  %div = udiv i64 -1, %conv
  %1 = load i64*, i64** %x.addr, align 8
  %2 = load i64, i64* %1, align 8
  %cmp = icmp ult i64 %div, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %x.addr, align 8
  store i64 -1, i64* %3, align 8
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %scale_factor.addr, align 4
  %conv2 = sext i32 %4 to i64
  %5 = load i64*, i64** %x.addr, align 8
  %6 = load i64, i64* %5, align 8
  %mul = mul i64 %6, %conv2
  store i64 %mul, i64* %5, align 8
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bkm_scale_by_power.179(i64* %x, i32 %base, i32 %power) #2 {
entry:
  %x.addr = alloca i64*, align 8
  %base.addr = alloca i32, align 4
  %power.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i64* %x, i64** %x.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %power, i32* %power.addr, align 4
  store i32 0, i32* %err, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %power.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %power.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64*, i64** %x.addr, align 8
  %2 = load i32, i32* %base.addr, align 4
  %call = call i32 @bkm_scale.178(i64* %1, i32 %2)
  %3 = load i32, i32* %err, align 4
  %or = or i32 %3, %call
  store i32 %or, i32* %err, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %err, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %fp) #2 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %saved_errno = alloca i32, align 4
  %fd = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 0, i32* %saved_errno, align 4
  store i32 0, i32* %result, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %0) #11
  store i32 %call, i32* %fd, align 4
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %2)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @__freading(%struct._IO_FILE* %3) #11
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fileno(%struct._IO_FILE* %4) #11
  %call5 = call i64 @lseek(i32 %call4, i64 0, i32 1) #11
  %cmp6 = icmp ne i64 %call5, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @rpl_fflush(%struct._IO_FILE* %5)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call i32* @__errno_location() #15
  %6 = load i32, i32* %call9, align 4
  store i32 %6, i32* %saved_errno, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %lor.lhs.false
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* %7)
  store i32 %call11, i32* %result, align 4
  %8 = load i32, i32* %saved_errno, align 4
  %cmp12 = icmp ne i32 %8, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %9 = load i32, i32* %saved_errno, align 4
  %call14 = call i32* @__errno_location() #15
  store i32 %9, i32* %call14, align 4
  store i32 -1, i32* %result, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %10 = load i32, i32* %result, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @__freading(%struct._IO_FILE*) #6

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 %fd, i32 %action, ...) #2 {
entry:
  %fd.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %arg = alloca [1 x %struct.__va_list_tag], align 16
  %result = alloca i32, align 4
  %target = alloca i32, align 4
  %target4 = alloca i32, align 4
  %x = alloca i32, align 4
  %p = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  store i32 -1, i32* %result, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %action.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1030, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %1 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %1, align 16
  %2 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %3 = bitcast i8* %2 to i32*
  %4 = add i32 %gp_offset, 8
  store i32 %4, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %5 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %3, %vaarg.in_reg ], [ %5, %vaarg.in_mem ]
  %6 = load i32, i32* %vaarg.addr, align 4
  store i32 %6, i32* %target, align 4
  %7 = load i32, i32* %fd.addr, align 4
  %8 = load i32, i32* %target, align 4
  %call = call i32 @rpl_fcntl_DUPFD(i32 %7, i32 %8)
  store i32 %call, i32* %result, align 4
  br label %sw.epilog48

sw.bb3:                                           ; preds = %entry
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %gp_offset_p6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 0
  %gp_offset7 = load i32, i32* %gp_offset_p6, align 16
  %fits_in_gp8 = icmp ule i32 %gp_offset7, 40
  br i1 %fits_in_gp8, label %vaarg.in_reg9, label %vaarg.in_mem11

vaarg.in_reg9:                                    ; preds = %sw.bb3
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 3
  %reg_save_area10 = load i8*, i8** %9, align 16
  %10 = getelementptr i8, i8* %reg_save_area10, i32 %gp_offset7
  %11 = bitcast i8* %10 to i32*
  %12 = add i32 %gp_offset7, 8
  store i32 %12, i32* %gp_offset_p6, align 16
  br label %vaarg.end15

vaarg.in_mem11:                                   ; preds = %sw.bb3
  %overflow_arg_area_p12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 2
  %overflow_arg_area13 = load i8*, i8** %overflow_arg_area_p12, align 8
  %13 = bitcast i8* %overflow_arg_area13 to i32*
  %overflow_arg_area.next14 = getelementptr i8, i8* %overflow_arg_area13, i32 8
  store i8* %overflow_arg_area.next14, i8** %overflow_arg_area_p12, align 8
  br label %vaarg.end15

vaarg.end15:                                      ; preds = %vaarg.in_mem11, %vaarg.in_reg9
  %vaarg.addr16 = phi i32* [ %11, %vaarg.in_reg9 ], [ %13, %vaarg.in_mem11 ]
  %14 = load i32, i32* %vaarg.addr16, align 4
  store i32 %14, i32* %target4, align 4
  %15 = load i32, i32* %fd.addr, align 4
  %16 = load i32, i32* %target4, align 4
  %call17 = call i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 %15, i32 %16)
  store i32 %call17, i32* %result, align 4
  br label %sw.epilog48

sw.default:                                       ; preds = %entry
  %17 = load i32, i32* %action.addr, align 4
  switch i32 %17, label %sw.default34 [
    i32 1, label %sw.bb18
    i32 3, label %sw.bb18
    i32 1025, label %sw.bb18
    i32 9, label %sw.bb18
    i32 1032, label %sw.bb18
    i32 1034, label %sw.bb18
    i32 11, label %sw.bb18
    i32 1033, label %sw.bb20
    i32 0, label %sw.bb20
    i32 1030, label %sw.bb20
    i32 1026, label %sw.bb20
    i32 2, label %sw.bb20
    i32 4, label %sw.bb20
    i32 1024, label %sw.bb20
    i32 8, label %sw.bb20
    i32 1031, label %sw.bb20
    i32 10, label %sw.bb20
  ]

sw.bb18:                                          ; preds = %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default
  %18 = load i32, i32* %fd.addr, align 4
  %19 = load i32, i32* %action.addr, align 4
  %call19 = call i32 (i32, i32, ...) @fcntl(i32 %18, i32 %19)
  store i32 %call19, i32* %result, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default
  %arraydecay21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %gp_offset_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 0
  %gp_offset23 = load i32, i32* %gp_offset_p22, align 16
  %fits_in_gp24 = icmp ule i32 %gp_offset23, 40
  br i1 %fits_in_gp24, label %vaarg.in_reg25, label %vaarg.in_mem27

vaarg.in_reg25:                                   ; preds = %sw.bb20
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 3
  %reg_save_area26 = load i8*, i8** %20, align 16
  %21 = getelementptr i8, i8* %reg_save_area26, i32 %gp_offset23
  %22 = bitcast i8* %21 to i32*
  %23 = add i32 %gp_offset23, 8
  store i32 %23, i32* %gp_offset_p22, align 16
  br label %vaarg.end31

vaarg.in_mem27:                                   ; preds = %sw.bb20
  %overflow_arg_area_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 2
  %overflow_arg_area29 = load i8*, i8** %overflow_arg_area_p28, align 8
  %24 = bitcast i8* %overflow_arg_area29 to i32*
  %overflow_arg_area.next30 = getelementptr i8, i8* %overflow_arg_area29, i32 8
  store i8* %overflow_arg_area.next30, i8** %overflow_arg_area_p28, align 8
  br label %vaarg.end31

vaarg.end31:                                      ; preds = %vaarg.in_mem27, %vaarg.in_reg25
  %vaarg.addr32 = phi i32* [ %22, %vaarg.in_reg25 ], [ %24, %vaarg.in_mem27 ]
  %25 = load i32, i32* %vaarg.addr32, align 4
  store i32 %25, i32* %x, align 4
  %26 = load i32, i32* %fd.addr, align 4
  %27 = load i32, i32* %action.addr, align 4
  %28 = load i32, i32* %x, align 4
  %call33 = call i32 (i32, i32, ...) @fcntl(i32 %26, i32 %27, i32 %28)
  store i32 %call33, i32* %result, align 4
  br label %sw.epilog

sw.default34:                                     ; preds = %sw.default
  %arraydecay35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %gp_offset_p36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 0
  %gp_offset37 = load i32, i32* %gp_offset_p36, align 16
  %fits_in_gp38 = icmp ule i32 %gp_offset37, 40
  br i1 %fits_in_gp38, label %vaarg.in_reg39, label %vaarg.in_mem41

vaarg.in_reg39:                                   ; preds = %sw.default34
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 3
  %reg_save_area40 = load i8*, i8** %29, align 16
  %30 = getelementptr i8, i8* %reg_save_area40, i32 %gp_offset37
  %31 = bitcast i8* %30 to i8**
  %32 = add i32 %gp_offset37, 8
  store i32 %32, i32* %gp_offset_p36, align 16
  br label %vaarg.end45

vaarg.in_mem41:                                   ; preds = %sw.default34
  %overflow_arg_area_p42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 2
  %overflow_arg_area43 = load i8*, i8** %overflow_arg_area_p42, align 8
  %33 = bitcast i8* %overflow_arg_area43 to i8**
  %overflow_arg_area.next44 = getelementptr i8, i8* %overflow_arg_area43, i32 8
  store i8* %overflow_arg_area.next44, i8** %overflow_arg_area_p42, align 8
  br label %vaarg.end45

vaarg.end45:                                      ; preds = %vaarg.in_mem41, %vaarg.in_reg39
  %vaarg.addr46 = phi i8** [ %31, %vaarg.in_reg39 ], [ %33, %vaarg.in_mem41 ]
  %34 = load i8*, i8** %vaarg.addr46, align 8
  store i8* %34, i8** %p, align 8
  %35 = load i32, i32* %fd.addr, align 4
  %36 = load i32, i32* %action.addr, align 4
  %37 = load i8*, i8** %p, align 8
  %call47 = call i32 (i32, i32, ...) @fcntl(i32 %35, i32 %36, i8* %37)
  store i32 %call47, i32* %result, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %vaarg.end45, %vaarg.end31, %sw.bb18
  br label %sw.epilog48

sw.epilog48:                                      ; preds = %sw.epilog, %vaarg.end15, %vaarg.end
  %arraydecay49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %arraydecay4950 = bitcast %struct.__va_list_tag* %arraydecay49 to i8*
  call void @llvm.va_end(i8* %arraydecay4950)
  %38 = load i32, i32* %result, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpl_fcntl_DUPFD(i32 %fd, i32 %target) #2 {
entry:
  %fd.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %fd.addr, align 4
  %1 = load i32, i32* %target.addr, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 %0, i32 0, i32 %1)
  store i32 %call, i32* %result, align 4
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 %fd, i32 %target) #2 {
entry:
  %fd.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %flags = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %fd.addr, align 4
  %2 = load i32, i32* %target.addr, align 4
  %call = call i32 (i32, i32, ...) @fcntl(i32 %1, i32 1030, i32 %2)
  store i32 %call, i32* %result, align 4
  %3 = load i32, i32* %result, align 4
  %cmp1 = icmp sle i32 0, %3
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = call i32* @__errno_location() #15
  %4 = load i32, i32* %call2, align 4
  %cmp3 = icmp ne i32 %4, 22
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  br label %if.end8

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i32, i32* %fd.addr, align 4
  %6 = load i32, i32* %target.addr, align 4
  %call5 = call i32 @rpl_fcntl_DUPFD(i32 %5, i32 %6)
  store i32 %call5, i32* %result, align 4
  %7 = load i32, i32* %result, align 4
  %cmp6 = icmp sge i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then4
  br label %if.end11

if.else9:                                         ; preds = %entry
  %8 = load i32, i32* %fd.addr, align 4
  %9 = load i32, i32* %target.addr, align 4
  %call10 = call i32 @rpl_fcntl_DUPFD(i32 %8, i32 %9)
  store i32 %call10, i32* %result, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.end8
  %10 = load i32, i32* %result, align 4
  %cmp12 = icmp sle i32 0, %10
  br i1 %cmp12, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end11
  %11 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %cmp13 = icmp eq i32 %11, -1
  br i1 %cmp13, label %if.then14, label %if.end25

if.then14:                                        ; preds = %land.lhs.true
  %12 = load i32, i32* %result, align 4
  %call15 = call i32 (i32, i32, ...) @fcntl(i32 %12, i32 1)
  store i32 %call15, i32* %flags, align 4
  %13 = load i32, i32* %flags, align 4
  %cmp16 = icmp slt i32 %13, 0
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.then14
  %14 = load i32, i32* %result, align 4
  %15 = load i32, i32* %flags, align 4
  %or = or i32 %15, 1
  %call18 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 2, i32 %or)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %lor.lhs.false17, %if.then14
  %call21 = call i32* @__errno_location() #15
  %16 = load i32, i32* %call21, align 4
  store i32 %16, i32* %saved_errno, align 4
  %17 = load i32, i32* %result, align 4
  %call22 = call i32 @close(i32 %17)
  %18 = load i32, i32* %saved_errno, align 4
  %call23 = call i32* @__errno_location() #15
  store i32 %18, i32* %call23, align 4
  store i32 -1, i32* %result, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %lor.lhs.false17
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true, %if.end11
  %19 = load i32, i32* %result, align 4
  ret i32 %19
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %stream) #2 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @__freading(%struct._IO_FILE* %1) #11
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  store i32 %call2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %4)
  store i32 %call3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %fp) #2 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 0
  %1 = load i32, i32* %_flags, align 8
  %and = and i32 %1, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @rpl_fseeko(%struct._IO_FILE* %2, i64 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nonnull %fp, i64 %offset, i32 %whence) #2 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 2
  %1 = load i8*, i8** %_IO_read_end, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 1
  %3 = load i8*, i8** %_IO_read_ptr, align 8
  %cmp = icmp eq i8* %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 5
  %5 = load i8*, i8** %_IO_write_ptr, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_IO_write_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i32 0, i32 4
  %7 = load i8*, i8** %_IO_write_base, align 8
  %cmp1 = icmp eq i8* %5, %7
  br i1 %cmp1, label %land.lhs.true2, label %if.end7

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_IO_save_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i32 0, i32 9
  %9 = load i8*, i8** %_IO_save_base, align 8
  %cmp3 = icmp eq i8* %9, null
  br i1 %cmp3, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @fileno(%struct._IO_FILE* %10) #11
  %11 = load i64, i64* %offset.addr, align 8
  %12 = load i32, i32* %whence.addr, align 4
  %call4 = call i64 @lseek(i32 %call, i64 %11, i32 %12) #11
  store i64 %call4, i64* %pos, align 8
  %13 = load i64, i64* %pos, align 8
  %cmp5 = icmp eq i64 %13, -1
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i32 0, i32 0
  %15 = load i32, i32* %_flags, align 8
  %and = and i32 %15, -17
  store i32 %and, i32* %_flags, align 8
  %16 = load i64, i64* %pos, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %_offset = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %17, i32 0, i32 21
  store i64 %16, i64* %_offset, align 8
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load i64, i64* %offset.addr, align 8
  %20 = load i32, i32* %whence.addr, align 4
  %call8 = call i32 @fseeko(%struct._IO_FILE* %18, i64 %19, i32 %20)
  store i32 %call8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.end, %if.then6
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local i32 @fseeko(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @rpl_mbrtowc(i32* %pwc, i8* %s, i64 %n, %struct.__mbstate_t* %ps) #2 {
entry:
  %retval = alloca i64, align 8
  %pwc.addr = alloca i32*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %ps.addr = alloca %struct.__mbstate_t*, align 8
  %ret = alloca i64, align 8
  %wc = alloca i32, align 4
  %uc = alloca i8, align 1
  store i32* %pwc, i32** %pwc.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store %struct.__mbstate_t* %ps, %struct.__mbstate_t** %ps.addr, align 8
  %0 = load i32*, i32** %pwc.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* %wc, i32** %pwc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32*, i32** %pwc.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load %struct.__mbstate_t*, %struct.__mbstate_t** %ps.addr, align 8
  %call = call i64 @mbrtowc(i32* %1, i8* %2, i64 %3, %struct.__mbstate_t* %4) #11
  store i64 %call, i64* %ret, align 8
  %5 = load i64, i64* %ret, align 8
  %cmp = icmp ule i64 -2, %5
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ne i64 %6, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end5

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = call zeroext i1 @hard_locale(i32 0)
  br i1 %call3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true2
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %uc, align 1
  %9 = load i8, i8* %uc, align 1
  %conv = zext i8 %9 to i32
  %10 = load i32*, i32** %pwc.addr, align 8
  store i32 %conv, i32* %10, align 4
  store i64 1, i64* %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  %11 = load i64, i64* %ret, align 8
  store i64 %11, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4
  %12 = load i64, i64* %retval, align 8
  ret i64 %12
}

; Function Attrs: nounwind
declare dso_local i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #6

; Function Attrs: noinline nounwind readonly uwtable
define dso_local i32 @c_strcasecmp(i8* %s1, i8* %s2) #10 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  store i8* %0, i8** %p1, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  store i8* %1, i8** %p2, align 8
  %2 = load i8*, i8** %p1, align 8
  %3 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load i8*, i8** %p1, align 8
  %5 = load i8, i8* %4, align 1
  %conv = zext i8 %5 to i32
  %call = call i32 @c_tolower(i32 %conv)
  %conv1 = trunc i32 %call to i8
  store i8 %conv1, i8* %c1, align 1
  %6 = load i8*, i8** %p2, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = zext i8 %7 to i32
  %call3 = call i32 @c_tolower(i32 %conv2)
  %conv4 = trunc i32 %call3 to i8
  store i8 %conv4, i8* %c2, align 1
  %8 = load i8, i8* %c1, align 1
  %conv5 = zext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body
  br label %do.end

if.end9:                                          ; preds = %do.body
  %9 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %10 = load i8*, i8** %p2, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr10, i8** %p2, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end9
  %11 = load i8, i8* %c1, align 1
  %conv11 = zext i8 %11 to i32
  %12 = load i8, i8* %c2, align 1
  %conv12 = zext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv11, %conv12
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then8
  %13 = load i8, i8* %c1, align 1
  %conv15 = zext i8 %13 to i32
  %14 = load i8, i8* %c2, align 1
  %conv16 = zext i8 %14 to i32
  %sub = sub nsw i32 %conv15, %conv16
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @c_tolower(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %stream) #2 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %some_pending = alloca i8, align 1
  %prev_fail = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i64 @__fpending(%struct._IO_FILE* %0) #11
  %cmp = icmp ne i64 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %some_pending, align 1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @ferror_unlocked(%struct._IO_FILE* %1) #11
  %cmp2 = icmp ne i32 %call1, 0
  %frombool3 = zext i1 %cmp2 to i8
  store i8 %frombool3, i8* %prev_fail, align 1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 @rpl_fclose(%struct._IO_FILE* %2)
  %cmp5 = icmp ne i32 %call4, 0
  %frombool6 = zext i1 %cmp5 to i8
  store i8 %frombool6, i8* %fclose_fail, align 1
  %3 = load i8, i8* %prev_fail, align 1
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8, i8* %fclose_fail, align 1
  %tobool7 = trunc i8 %4 to i1
  br i1 %tobool7, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8, i8* %some_pending, align 1
  %tobool8 = trunc i8 %5 to i1
  br i1 %tobool8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #15
  %6 = load i32, i32* %call10, align 4
  %cmp11 = icmp ne i32 %6, 9
  br i1 %cmp11, label %if.then, label %if.end15

if.then:                                          ; preds = %lor.lhs.false9, %land.lhs.true, %entry
  %7 = load i8, i8* %fclose_fail, align 1
  %tobool12 = trunc i8 %7 to i1
  br i1 %tobool12, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.then
  %call14 = call i32* @__errno_location() #15
  store i32 0, i32* %call14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  store i32 -1, i32* %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false9, %lor.lhs.false
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.end
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare dso_local i64 @__fpending(%struct._IO_FILE*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @locale_charset() #2 {
entry:
  %codeset = alloca i8*, align 8
  %call = call i8* @nl_langinfo(i32 14) #11
  store i8* %call, i8** %codeset, align 8
  %0 = load i8*, i8** %codeset, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.196, i64 0, i64 0), i8** %codeset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %codeset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.197, i64 0, i64 0), i8** %codeset, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i8*, i8** %codeset, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare dso_local i8* @nl_langinfo(i32) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcoll(i8* %s1, i64 %s1len, i8* %s2, i64 %s2len) #2 {
entry:
  %s1.addr = alloca i8*, align 8
  %s1len.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2len.addr = alloca i64, align 8
  %diff = alloca i32, align 4
  %n1 = alloca i8, align 1
  %n2 = alloca i8, align 1
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %s1len, i64* %s1len.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %s2len, i64* %s2len.addr, align 8
  %0 = load i64, i64* %s1len.addr, align 8
  %1 = load i64, i64* %s2len.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %4 = load i64, i64* %s1len.addr, align 8
  %call = call i32 @memcmp(i8* %2, i8* %3, i64 %4) #13
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32* @__errno_location() #15
  store i32 0, i32* %call2, align 4
  store i32 0, i32* %diff, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i8*, i8** %s1.addr, align 8
  %6 = load i64, i64* %s1len.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  %7 = load i8, i8* %arrayidx, align 1
  store i8 %7, i8* %n1, align 1
  %8 = load i8*, i8** %s2.addr, align 8
  %9 = load i64, i64* %s2len.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i8, i8* %arrayidx3, align 1
  store i8 %10, i8* %n2, align 1
  %11 = load i8*, i8** %s1.addr, align 8
  %12 = load i64, i64* %s1len.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8 0, i8* %arrayidx4, align 1
  %13 = load i8*, i8** %s2.addr, align 8
  %14 = load i64, i64* %s2len.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 0, i8* %arrayidx5, align 1
  %15 = load i8*, i8** %s1.addr, align 8
  %16 = load i64, i64* %s1len.addr, align 8
  %add = add i64 %16, 1
  %17 = load i8*, i8** %s2.addr, align 8
  %18 = load i64, i64* %s2len.addr, align 8
  %add6 = add i64 %18, 1
  %call7 = call i32 @strcoll_loop(i8* %15, i64 %add, i8* %17, i64 %add6)
  store i32 %call7, i32* %diff, align 4
  %19 = load i8, i8* %n1, align 1
  %20 = load i8*, i8** %s1.addr, align 8
  %21 = load i64, i64* %s1len.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %arrayidx8, align 1
  %22 = load i8, i8* %n2, align 1
  %23 = load i8*, i8** %s2.addr, align 8
  %24 = load i64, i64* %s2len.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 %22, i8* %arrayidx9, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load i32, i32* %diff, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @strcoll_loop(i8* %s1, i64 %s1size, i8* %s2, i64 %s2size) #2 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s1size.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2size.addr = alloca i64, align 8
  %diff = alloca i32, align 4
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %s1size, i64* %s1size.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %s2size, i64* %s2size.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %call = call i32* @__errno_location() #15
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %call1 = call i32 @strcoll(i8* %0, i8* %1) #13
  store i32 %call1, i32* %diff, align 4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %call2 = call i32* @__errno_location() #15
  %2 = load i32, i32* %call2, align 4
  %tobool3 = icmp ne i32 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %3 = phi i1 [ true, %while.cond ], [ %tobool3, %lor.rhs ]
  %lnot = xor i1 %3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %4 = load i8*, i8** %s1.addr, align 8
  %call4 = call i64 @strlen(i8* %4) #13
  %add = add i64 %call4, 1
  store i64 %add, i64* %size1, align 8
  %5 = load i8*, i8** %s2.addr, align 8
  %call5 = call i64 @strlen(i8* %5) #13
  %add6 = add i64 %call5, 1
  store i64 %add6, i64* %size2, align 8
  %6 = load i64, i64* %size1, align 8
  %7 = load i8*, i8** %s1.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %6
  store i8* %add.ptr, i8** %s1.addr, align 8
  %8 = load i64, i64* %size2, align 8
  %9 = load i8*, i8** %s2.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %9, i64 %8
  store i8* %add.ptr7, i8** %s2.addr, align 8
  %10 = load i64, i64* %size1, align 8
  %11 = load i64, i64* %s1size.addr, align 8
  %sub = sub i64 %11, %10
  store i64 %sub, i64* %s1size.addr, align 8
  %12 = load i64, i64* %size2, align 8
  %13 = load i64, i64* %s2size.addr, align 8
  %sub8 = sub i64 %13, %12
  store i64 %sub8, i64* %s2size.addr, align 8
  %14 = load i64, i64* %s1size.addr, align 8
  %cmp = icmp eq i64 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %15 = load i64, i64* %s2size.addr, align 8
  %cmp9 = icmp ne i64 %15, 0
  %conv = zext i1 %cmp9 to i32
  %sub10 = sub nsw i32 0, %conv
  store i32 %sub10, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %16 = load i64, i64* %s2size.addr, align 8
  %cmp11 = icmp eq i64 %16, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %17 = load i32, i32* %diff, align 4
  store i32 %17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then13, %if.then
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcoll(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcoll0(i8* %s1, i64 %s1size, i8* %s2, i64 %s2size) #2 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s1size.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %s2size.addr = alloca i64, align 8
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %s1size, i64* %s1size.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %s2size, i64* %s2size.addr, align 8
  %0 = load i64, i64* %s1size.addr, align 8
  %1 = load i64, i64* %s2size.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i8*, i8** %s2.addr, align 8
  %4 = load i64, i64* %s1size.addr, align 8
  %call = call i32 @memcmp(i8* %2, i8* %3, i64 %4) #13
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call2 = call i32* @__errno_location() #15
  store i32 0, i32* %call2, align 4
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i8*, i8** %s1.addr, align 8
  %6 = load i64, i64* %s1size.addr, align 8
  %7 = load i8*, i8** %s2.addr, align 8
  %8 = load i64, i64* %s2size.addr, align 8
  %call3 = call i32 @strcoll_loop(i8* %5, i64 %6, i8* %7, i64 %8)
  store i32 %call3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

attributes #0 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn writeonly }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }
attributes #15 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
