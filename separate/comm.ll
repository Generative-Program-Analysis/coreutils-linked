; ModuleID = './comm.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTION]... FILE1 FILE2\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Compare sorted files FILE1 and FILE2 line by line.\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"\0AWhen FILE1 or FILE2 (not both) is -, read standard input.\0A\00", align 1
@.str.4 = private unnamed_addr constant [189 x i8] c"\0AWith no options, produce three-column output.  Column one contains\0Alines unique to FILE1, column two contains lines unique to FILE2,\0Aand column three contains lines common to both files.\0A\00", align 1
@.str.5 = private unnamed_addr constant [192 x i8] c"\0A  -1              suppress column 1 (lines unique to FILE1)\0A  -2              suppress column 2 (lines unique to FILE2)\0A  -3              suppress column 3 (lines that appear in both files)\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0A  --check-order     check that the input is correctly sorted, even\0A                      if all input lines are pairable\0A  --nocheck-order   do not check that the input is correctly sorted\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"  --output-delimiter=STR  separate columns with STR\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"  --total           output a summary\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"\0ANote, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@.str.13 = private unnamed_addr constant [156 x i8] c"\0AExamples:\0A  %s -12 file1 file2  Print only lines present in both file1 and file2.\0A  %s -3 file1 file2  Print lines in file1 not in file2, and vice versa.\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@hard_LC_COLLATE = internal global i8 0, align 1
@only_file_1 = internal global i8 0, align 1
@only_file_2 = internal global i8 0, align 1
@both = internal global i8 0, align 1
@seen_unpairable = internal global i8 0, align 1
@issued_disorder_warning = internal global [2 x i8] zeroinitializer, align 1
@check_input_order = internal global i32 0, align 4
@total_option = internal global i8 0, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"123z\00", align 1
@long_options = internal constant [8 x %struct.option] [%struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), i32 0, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 0, i32* null, i32 131 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@delim = internal global i8 10, align 1
@col_sep_len = internal global i64 0, align 8
@col_sep = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0), align 8
@optarg = external dso_local global i8*, align 8
@.str.17 = private unnamed_addr constant [37 x i8] c"multiple output delimiters specified\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external dso_local global i32, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"input is not in sorted order\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.50 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.52 = private unnamed_addr constant [17 x i8] c"%s%s%s%s%s%s%s%c\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"file %d is not in sorted order\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"check-order\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"nocheck-order\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal global i8* null, align 8
@ignore_EPIPE = internal global i8 0, align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.58 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.59 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.68 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.69 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@program_name = dso_local global i8* null, align 8
@.str.82 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.84 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external dso_local global i8*, align 8
@program_invocation_name = external dso_local global i8*, align 8
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.86, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.87, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.88, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.89, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.91, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.92, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.94, i32 0, i32 0), i8* null], align 16
@.str.85 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.86 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.87 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.88 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.89 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.90 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.91 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.92 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.93 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.94 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.10.95 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.96 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.97 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.98 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.14.99 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.100 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.16.101 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.17.102 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.103 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.114 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.115 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.116 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.117 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.118 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.119 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.120 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.121 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.122 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.123 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.124 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.125 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.126 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.127 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.128 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.129 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.132 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.133 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.134 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.135 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.136 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.137 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.138 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.151 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.152 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.155 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.156 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.157 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal global i32 0, align 4
@.str.174 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.175 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  %call2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), %struct._IO_FILE* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %14)
  %15 = load i8*, i8** @program_name, align 8
  %16 = load i8*, i8** @program_name, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.13, i64 0, i64 0), i8* %15, i8* %16)
  call void @emit_ancillary_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %17 = load i32, i32* %status.addr, align 4
  call void @exit(i32 %17) #12
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
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0))
  %call7 = call i8* @setlocale(i32 5, i8* null) #11
  store i8* %call7, i8** %lc_messages, align 8
  %13 = load i8*, i8** %lc_messages, align 8
  %tobool8 = icmp ne i8* %13, null
  br i1 %tobool8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %14 = load i8*, i8** %lc_messages, align 8
  %call9 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i64 3) #13
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* %15)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true, %if.end
  %16 = load i8*, i8** %program.addr, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* %16)
  %17 = load i8*, i8** %node, align 8
  %18 = load i8*, i8** %node, align 8
  %19 = load i8*, i8** %program.addr, align 8
  %cmp15 = icmp eq i8* %18, %19
  %20 = zext i1 %cmp15 to i64
  %cond = select i1 %cmp15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i8* %17, i8* %cond)
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
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  call void @set_program_name(i8* %1)
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)) #11
  %call1 = call zeroext i1 @hard_locale(i32 3)
  %frombool = zext i1 %call1 to i8
  store i8 %frombool, i8* @hard_LC_COLLATE, align 1
  %call2 = call i32 @atexit(void ()* @close_stdout) #11
  store i8 1, i8* @only_file_1, align 1
  store i8 1, i8* @only_file_2, align 1
  store i8 1, i8* @both, align 1
  store i8 0, i8* @seen_unpairable, align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  store i32 0, i32* @check_input_order, align 4
  store i8 0, i8* @total_option, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %call3 = call i32 @getopt_long(i32 %2, i8** %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([8 x %struct.option], [8 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #11
  store i32 %call3, i32* %c, align 4
  %cmp = icmp ne i32 %call3, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %c, align 4
  switch i32 %4, label %sw.default [
    i32 49, label %sw.bb
    i32 50, label %sw.bb4
    i32 51, label %sw.bb5
    i32 122, label %sw.bb6
    i32 129, label %sw.bb7
    i32 128, label %sw.bb8
    i32 130, label %sw.bb9
    i32 131, label %sw.bb14
    i32 -130, label %sw.bb15
    i32 -131, label %sw.bb16
  ]

sw.bb:                                            ; preds = %while.body
  store i8 0, i8* @only_file_1, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  store i8 0, i8* @only_file_2, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  store i8 0, i8* @both, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  store i8 0, i8* @delim, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  store i32 2, i32* @check_input_order, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  store i32 1, i32* @check_input_order, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  %5 = load i64, i64* @col_sep_len, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb9
  %6 = load i8*, i8** @col_sep, align 8
  %7 = load i8*, i8** @optarg, align 8
  %call10 = call i32 @strcmp(i8* %6, i8* %7) #13
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0))
  unreachable

if.end:                                           ; preds = %land.lhs.true, %sw.bb9
  %8 = load i8*, i8** @optarg, align 8
  store i8* %8, i8** @col_sep, align 8
  %9 = load i8*, i8** @optarg, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %tobool12 = icmp ne i32 %conv, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load i8*, i8** @optarg, align 8
  %call13 = call i64 @strlen(i8* %11) #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call13, %cond.true ], [ 1, %cond.false ]
  store i64 %cond, i64* @col_sep_len, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %while.body
  store i8 1, i8* @total_option, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %while.body
  call void @usage(i32 0) #14
  unreachable

sw.bb16:                                          ; preds = %while.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* null)
  call void @exit(i32 0) #12
  unreachable

sw.default:                                       ; preds = %while.body
  call void @usage(i32 1) #14
  unreachable

sw.epilog:                                        ; preds = %sw.bb14, %cond.end, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i64, i64* @col_sep_len, align 8
  %tobool17 = icmp ne i64 %14, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %while.end
  store i64 1, i64* @col_sep_len, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %while.end
  %15 = load i32, i32* %argc.addr, align 4
  %16 = load i32, i32* @optind, align 4
  %sub = sub nsw i32 %15, %16
  %cmp20 = icmp slt i32 %sub, 2
  br i1 %cmp20, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.end19
  %17 = load i32, i32* %argc.addr, align 4
  %18 = load i32, i32* @optind, align 4
  %cmp23 = icmp sle i32 %17, %18
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then22
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  br label %if.end29

if.else:                                          ; preds = %if.then22
  %19 = load i8**, i8*** %argv.addr, align 8
  %20 = load i32, i32* %argc.addr, align 4
  %sub26 = sub nsw i32 %20, 1
  %idxprom = sext i32 %sub26 to i64
  %arrayidx27 = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  %21 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i8* @quote(i8* %21)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* %call28)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then25
  call void @usage(i32 1) #14
  unreachable

if.end30:                                         ; preds = %if.end19
  %22 = load i32, i32* %argc.addr, align 4
  %23 = load i32, i32* @optind, align 4
  %sub31 = sub nsw i32 %22, %23
  %cmp32 = icmp slt i32 2, %sub31
  br i1 %cmp32, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end30
  %24 = load i8**, i8*** %argv.addr, align 8
  %25 = load i32, i32* @optind, align 4
  %add = add nsw i32 %25, 2
  %idxprom35 = sext i32 %add to i64
  %arrayidx36 = getelementptr inbounds i8*, i8** %24, i64 %idxprom35
  %26 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i8* @quote(i8* %26)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %call37)
  call void @usage(i32 1) #14
  unreachable

if.end38:                                         ; preds = %if.end30
  %27 = load i8**, i8*** %argv.addr, align 8
  %28 = load i32, i32* @optind, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %27, i64 %idx.ext
  call void @compare_files(i8** %add.ptr)
  %29 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 0), align 1
  %tobool39 = trunc i8 %29 to i1
  br i1 %tobool39, label %if.then43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end38
  %30 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 1), align 1
  %tobool41 = trunc i8 %30 to i1
  br i1 %tobool41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %lor.lhs.false, %if.end38
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  unreachable

if.else44:                                        ; preds = %lor.lhs.false
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) #6

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #6

declare dso_local void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: noinline nounwind uwtable
define internal void @compare_files(i8** %infiles) #2 {
entry:
  %infiles.addr = alloca i8**, align 8
  %lba = alloca [2 x [4 x %struct.linebuffer]], align 16
  %thisline = alloca [2 x %struct.linebuffer*], align 16
  %all_line = alloca [2 x [4 x %struct.linebuffer*]], align 16
  %alt = alloca [2 x [3 x i32]], align 16
  %streams = alloca [2 x %struct._IO_FILE*], align 16
  %total = alloca [3 x i64], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %order = alloca i32, align 4
  %fill_up = alloca [2 x i8], align 1
  %len = alloca i64, align 8
  %buf1 = alloca [21 x i8], align 16
  %buf2 = alloca [21 x i8], align 16
  %buf3 = alloca [21 x i8], align 16
  store i8** %infiles, i8*** %infiles.addr, align 8
  %0 = bitcast [3 x i64]* %total to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 24, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc61, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %for.body, label %for.end63

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %lba, i64 0, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x %struct.linebuffer], [4 x %struct.linebuffer]* %arrayidx, i64 0, i64 %idxprom4
  call void @initbuffer(%struct.linebuffer* %arrayidx5)
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [2 x [4 x %struct.linebuffer]], [2 x [4 x %struct.linebuffer]]* %lba, i64 0, i64 %idxprom6
  %6 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [4 x %struct.linebuffer], [4 x %struct.linebuffer]* %arrayidx7, i64 0, i64 %idxprom8
  %7 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %all_line, i64 0, i64 %idxprom10
  %8 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [4 x %struct.linebuffer*], [4 x %struct.linebuffer*]* %arrayidx11, i64 0, i64 %idxprom12
  store %struct.linebuffer* %arrayidx9, %struct.linebuffer** %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %10 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx15, i64 0, i64 0
  store i32 0, i32* %arrayidx16, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i64 0, i64 1
  store i32 0, i32* %arrayidx19, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx21, i64 0, i64 2
  store i32 0, i32* %arrayidx22, align 4
  %13 = load i8**, i8*** %infiles.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds i8*, i8** %13, i64 %idxprom23
  %15 = load i8*, i8** %arrayidx24, align 8
  %call = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #13
  %cmp25 = icmp eq i32 %call, 0
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %17 = load i8**, i8*** %infiles.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds i8*, i8** %17, i64 %idxprom26
  %19 = load i8*, i8** %arrayidx27, align 8
  %call28 = call %struct._IO_FILE* @fopen_safer(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._IO_FILE* [ %16, %cond.true ], [ %call28, %cond.false ]
  %20 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [2 x %struct._IO_FILE*], [2 x %struct._IO_FILE*]* %streams, i64 0, i64 %idxprom29
  store %struct._IO_FILE* %cond, %struct._IO_FILE** %arrayidx30, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %21 to i64
  %arrayidx32 = getelementptr inbounds [2 x %struct._IO_FILE*], [2 x %struct._IO_FILE*]* %streams, i64 0, i64 %idxprom31
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx32, align 8
  %tobool = icmp ne %struct._IO_FILE* %22, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %call33 = call i32* @__errno_location() #15
  %23 = load i32, i32* %call33, align 4
  %24 = load i8**, i8*** %infiles.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds i8*, i8** %24, i64 %idxprom34
  %26 = load i8*, i8** %arrayidx35, align 8
  %call36 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %26)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %call36)
  unreachable

if.end:                                           ; preds = %cond.end
  %27 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %27 to i64
  %arrayidx38 = getelementptr inbounds [2 x %struct._IO_FILE*], [2 x %struct._IO_FILE*]* %streams, i64 0, i64 %idxprom37
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx38, align 8
  call void @fadvise(%struct._IO_FILE* %28, i32 2)
  %29 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %all_line, i64 0, i64 %idxprom39
  %30 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %30 to i64
  %arrayidx42 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx42, i64 0, i64 0
  %31 = load i32, i32* %arrayidx43, align 4
  %idxprom44 = sext i32 %31 to i64
  %arrayidx45 = getelementptr inbounds [4 x %struct.linebuffer*], [4 x %struct.linebuffer*]* %arrayidx40, i64 0, i64 %idxprom44
  %32 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx45, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %33 to i64
  %arrayidx47 = getelementptr inbounds [2 x %struct._IO_FILE*], [2 x %struct._IO_FILE*]* %streams, i64 0, i64 %idxprom46
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx47, align 8
  %35 = load i8, i8* @delim, align 1
  %call48 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %32, %struct._IO_FILE* %34, i8 signext %35)
  %36 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %36 to i64
  %arrayidx50 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 %idxprom49
  store %struct.linebuffer* %call48, %struct.linebuffer** %arrayidx50, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds [2 x %struct._IO_FILE*], [2 x %struct._IO_FILE*]* %streams, i64 0, i64 %idxprom51
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx52, align 8
  %call53 = call i32 @ferror_unlocked(%struct._IO_FILE* %38) #11
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end
  %call56 = call i32* @__errno_location() #15
  %39 = load i32, i32* %call56, align 4
  %40 = load i8**, i8*** %infiles.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %41 to i64
  %arrayidx58 = getelementptr inbounds i8*, i8** %40, i64 %idxprom57
  %42 = load i8*, i8** %arrayidx58, align 8
  %call59 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %42)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %call59)
  unreachable

if.end60:                                         ; preds = %if.end
  br label %for.inc61

for.inc61:                                        ; preds = %if.end60
  %43 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %43, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond

for.end63:                                        ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end249, %for.end63
  %arrayidx64 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %44 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx64, align 16
  %tobool65 = icmp ne %struct.linebuffer* %44, null
  br i1 %tobool65, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %arrayidx66 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %45 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx66, align 8
  %tobool67 = icmp ne %struct.linebuffer* %45, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %46 = phi i1 [ true, %while.cond ], [ %tobool67, %lor.rhs ]
  br i1 %46, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %47 = bitcast [2 x i8]* %fill_up to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %47, i8 0, i64 2, i1 false)
  %arrayidx68 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %48 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx68, align 16
  %tobool69 = icmp ne %struct.linebuffer* %48, null
  br i1 %tobool69, label %if.else, label %if.then70

if.then70:                                        ; preds = %while.body
  store i32 1, i32* %order, align 4
  br label %if.end124

if.else:                                          ; preds = %while.body
  %arrayidx71 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %49 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx71, align 8
  %tobool72 = icmp ne %struct.linebuffer* %49, null
  br i1 %tobool72, label %if.else74, label %if.then73

if.then73:                                        ; preds = %if.else
  store i32 -1, i32* %order, align 4
  br label %if.end123

if.else74:                                        ; preds = %if.else
  %50 = load i8, i8* @hard_LC_COLLATE, align 1
  %tobool75 = trunc i8 %50 to i1
  br i1 %tobool75, label %if.then76, label %if.else85

if.then76:                                        ; preds = %if.else74
  %arrayidx77 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %51 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx77, align 16
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %51, i32 0, i32 2
  %52 = load i8*, i8** %buffer, align 8
  %arrayidx78 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %53 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx78, align 16
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %53, i32 0, i32 1
  %54 = load i64, i64* %length, align 8
  %sub = sub i64 %54, 1
  %arrayidx79 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %55 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx79, align 8
  %buffer80 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %55, i32 0, i32 2
  %56 = load i8*, i8** %buffer80, align 8
  %arrayidx81 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %57 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx81, align 8
  %length82 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %57, i32 0, i32 1
  %58 = load i64, i64* %length82, align 8
  %sub83 = sub i64 %58, 1
  %call84 = call i32 @xmemcoll(i8* %52, i64 %sub, i8* %56, i64 %sub83)
  store i32 %call84, i32* %order, align 4
  br label %if.end122

if.else85:                                        ; preds = %if.else74
  %arrayidx86 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %59 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx86, align 16
  %length87 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %59, i32 0, i32 1
  %60 = load i64, i64* %length87, align 8
  %arrayidx88 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %61 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx88, align 8
  %length89 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %61, i32 0, i32 1
  %62 = load i64, i64* %length89, align 8
  %cmp90 = icmp ult i64 %60, %62
  br i1 %cmp90, label %cond.true91, label %cond.false94

cond.true91:                                      ; preds = %if.else85
  %arrayidx92 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %63 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx92, align 16
  %length93 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %63, i32 0, i32 1
  %64 = load i64, i64* %length93, align 8
  br label %cond.end97

cond.false94:                                     ; preds = %if.else85
  %arrayidx95 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %65 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx95, align 8
  %length96 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %65, i32 0, i32 1
  %66 = load i64, i64* %length96, align 8
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false94, %cond.true91
  %cond98 = phi i64 [ %64, %cond.true91 ], [ %66, %cond.false94 ]
  %sub99 = sub i64 %cond98, 1
  store i64 %sub99, i64* %len, align 8
  %arrayidx100 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %67 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx100, align 16
  %buffer101 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %67, i32 0, i32 2
  %68 = load i8*, i8** %buffer101, align 8
  %arrayidx102 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %69 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx102, align 8
  %buffer103 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %69, i32 0, i32 2
  %70 = load i8*, i8** %buffer103, align 8
  %71 = load i64, i64* %len, align 8
  %call104 = call i32 @memcmp(i8* %68, i8* %70, i64 %71) #13
  store i32 %call104, i32* %order, align 4
  %72 = load i32, i32* %order, align 4
  %cmp105 = icmp eq i32 %72, 0
  br i1 %cmp105, label %if.then106, label %if.end121

if.then106:                                       ; preds = %cond.end97
  %arrayidx107 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %73 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx107, align 16
  %length108 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %73, i32 0, i32 1
  %74 = load i64, i64* %length108, align 8
  %arrayidx109 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %75 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx109, align 8
  %length110 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %75, i32 0, i32 1
  %76 = load i64, i64* %length110, align 8
  %cmp111 = icmp ult i64 %74, %76
  br i1 %cmp111, label %cond.true112, label %cond.false113

cond.true112:                                     ; preds = %if.then106
  br label %cond.end119

cond.false113:                                    ; preds = %if.then106
  %arrayidx114 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %77 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx114, align 16
  %length115 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %77, i32 0, i32 1
  %78 = load i64, i64* %length115, align 8
  %arrayidx116 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %79 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx116, align 8
  %length117 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %79, i32 0, i32 1
  %80 = load i64, i64* %length117, align 8
  %cmp118 = icmp ne i64 %78, %80
  %conv = zext i1 %cmp118 to i32
  br label %cond.end119

cond.end119:                                      ; preds = %cond.false113, %cond.true112
  %cond120 = phi i32 [ -1, %cond.true112 ], [ %conv, %cond.false113 ]
  store i32 %cond120, i32* %order, align 4
  br label %if.end121

if.end121:                                        ; preds = %cond.end119, %cond.end97
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then76
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then73
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then70
  %81 = load i32, i32* %order, align 4
  %cmp125 = icmp eq i32 %81, 0
  br i1 %cmp125, label %if.then127, label %if.else131

if.then127:                                       ; preds = %if.end124
  %arrayidx128 = getelementptr inbounds [3 x i64], [3 x i64]* %total, i64 0, i64 2
  %82 = load i64, i64* %arrayidx128, align 16
  %inc129 = add i64 %82, 1
  store i64 %inc129, i64* %arrayidx128, align 16
  %arrayidx130 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %83 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx130, align 8
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @writeline(%struct.linebuffer* %83, %struct._IO_FILE* %84, i32 3)
  br label %if.end143

if.else131:                                       ; preds = %if.end124
  store i8 1, i8* @seen_unpairable, align 1
  %85 = load i32, i32* %order, align 4
  %cmp132 = icmp sle i32 %85, 0
  br i1 %cmp132, label %if.then134, label %if.else138

if.then134:                                       ; preds = %if.else131
  %arrayidx135 = getelementptr inbounds [3 x i64], [3 x i64]* %total, i64 0, i64 0
  %86 = load i64, i64* %arrayidx135, align 16
  %inc136 = add i64 %86, 1
  store i64 %inc136, i64* %arrayidx135, align 16
  %arrayidx137 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 0
  %87 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx137, align 16
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @writeline(%struct.linebuffer* %87, %struct._IO_FILE* %88, i32 1)
  br label %if.end142

if.else138:                                       ; preds = %if.else131
  %arrayidx139 = getelementptr inbounds [3 x i64], [3 x i64]* %total, i64 0, i64 1
  %89 = load i64, i64* %arrayidx139, align 8
  %inc140 = add i64 %89, 1
  store i64 %inc140, i64* %arrayidx139, align 8
  %arrayidx141 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 1
  %90 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx141, align 8
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @writeline(%struct.linebuffer* %90, %struct._IO_FILE* %91, i32 2)
  br label %if.end142

if.end142:                                        ; preds = %if.else138, %if.then134
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then127
  %92 = load i32, i32* %order, align 4
  %cmp144 = icmp sle i32 0, %92
  br i1 %cmp144, label %if.then146, label %if.end148

if.then146:                                       ; preds = %if.end143
  %arrayidx147 = getelementptr inbounds [2 x i8], [2 x i8]* %fill_up, i64 0, i64 1
  store i8 1, i8* %arrayidx147, align 1
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end143
  %93 = load i32, i32* %order, align 4
  %cmp149 = icmp sle i32 %93, 0
  br i1 %cmp149, label %if.then151, label %if.end153

if.then151:                                       ; preds = %if.end148
  %arrayidx152 = getelementptr inbounds [2 x i8], [2 x i8]* %fill_up, i64 0, i64 0
  store i8 1, i8* %arrayidx152, align 1
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end148
  store i32 0, i32* %i, align 4
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc247, %if.end153
  %94 = load i32, i32* %i, align 4
  %cmp155 = icmp slt i32 %94, 2
  br i1 %cmp155, label %for.body157, label %for.end249

for.body157:                                      ; preds = %for.cond154
  %95 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %95 to i64
  %arrayidx159 = getelementptr inbounds [2 x i8], [2 x i8]* %fill_up, i64 0, i64 %idxprom158
  %96 = load i8, i8* %arrayidx159, align 1
  %tobool160 = trunc i8 %96 to i1
  br i1 %tobool160, label %if.then161, label %if.end246

if.then161:                                       ; preds = %for.body157
  %97 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %97 to i64
  %arrayidx163 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx163, i64 0, i64 1
  %98 = load i32, i32* %arrayidx164, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %99 to i64
  %arrayidx166 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom165
  %arrayidx167 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx166, i64 0, i64 2
  store i32 %98, i32* %arrayidx167, align 4
  %100 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %100 to i64
  %arrayidx169 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom168
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx169, i64 0, i64 0
  %101 = load i32, i32* %arrayidx170, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %102 to i64
  %arrayidx172 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom171
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx172, i64 0, i64 1
  store i32 %101, i32* %arrayidx173, align 4
  %103 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %103 to i64
  %arrayidx175 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom174
  %arrayidx176 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx175, i64 0, i64 0
  %104 = load i32, i32* %arrayidx176, align 4
  %add = add nsw i32 %104, 1
  %and = and i32 %add, 3
  %105 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %105 to i64
  %arrayidx178 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom177
  %arrayidx179 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx178, i64 0, i64 0
  store i32 %and, i32* %arrayidx179, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %106 to i64
  %arrayidx181 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %all_line, i64 0, i64 %idxprom180
  %107 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %107 to i64
  %arrayidx183 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom182
  %arrayidx184 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx183, i64 0, i64 0
  %108 = load i32, i32* %arrayidx184, align 4
  %idxprom185 = sext i32 %108 to i64
  %arrayidx186 = getelementptr inbounds [4 x %struct.linebuffer*], [4 x %struct.linebuffer*]* %arrayidx181, i64 0, i64 %idxprom185
  %109 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx186, align 8
  %110 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %110 to i64
  %arrayidx188 = getelementptr inbounds [2 x %struct._IO_FILE*], [2 x %struct._IO_FILE*]* %streams, i64 0, i64 %idxprom187
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx188, align 8
  %112 = load i8, i8* @delim, align 1
  %call189 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %109, %struct._IO_FILE* %111, i8 signext %112)
  %113 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %113 to i64
  %arrayidx191 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 %idxprom190
  store %struct.linebuffer* %call189, %struct.linebuffer** %arrayidx191, align 8
  %114 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %114 to i64
  %arrayidx193 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 %idxprom192
  %115 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx193, align 8
  %tobool194 = icmp ne %struct.linebuffer* %115, null
  br i1 %tobool194, label %if.then195, label %if.else206

if.then195:                                       ; preds = %if.then161
  %116 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %116 to i64
  %arrayidx197 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %all_line, i64 0, i64 %idxprom196
  %117 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %117 to i64
  %arrayidx199 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom198
  %arrayidx200 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx199, i64 0, i64 1
  %118 = load i32, i32* %arrayidx200, align 4
  %idxprom201 = sext i32 %118 to i64
  %arrayidx202 = getelementptr inbounds [4 x %struct.linebuffer*], [4 x %struct.linebuffer*]* %arrayidx197, i64 0, i64 %idxprom201
  %119 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx202, align 8
  %120 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %120 to i64
  %arrayidx204 = getelementptr inbounds [2 x %struct.linebuffer*], [2 x %struct.linebuffer*]* %thisline, i64 0, i64 %idxprom203
  %121 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx204, align 8
  %122 = load i32, i32* %i, align 4
  %add205 = add nsw i32 %122, 1
  call void @check_order(%struct.linebuffer* %119, %struct.linebuffer* %121, i32 %add205)
  br label %if.end233

if.else206:                                       ; preds = %if.then161
  %123 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %123 to i64
  %arrayidx208 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %all_line, i64 0, i64 %idxprom207
  %124 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %124 to i64
  %arrayidx210 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom209
  %arrayidx211 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx210, i64 0, i64 2
  %125 = load i32, i32* %arrayidx211, align 4
  %idxprom212 = sext i32 %125 to i64
  %arrayidx213 = getelementptr inbounds [4 x %struct.linebuffer*], [4 x %struct.linebuffer*]* %arrayidx208, i64 0, i64 %idxprom212
  %126 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx213, align 8
  %buffer214 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %126, i32 0, i32 2
  %127 = load i8*, i8** %buffer214, align 8
  %tobool215 = icmp ne i8* %127, null
  br i1 %tobool215, label %if.then216, label %if.end232

if.then216:                                       ; preds = %if.else206
  %128 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %128 to i64
  %arrayidx218 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %all_line, i64 0, i64 %idxprom217
  %129 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %129 to i64
  %arrayidx220 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom219
  %arrayidx221 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx220, i64 0, i64 2
  %130 = load i32, i32* %arrayidx221, align 4
  %idxprom222 = sext i32 %130 to i64
  %arrayidx223 = getelementptr inbounds [4 x %struct.linebuffer*], [4 x %struct.linebuffer*]* %arrayidx218, i64 0, i64 %idxprom222
  %131 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx223, align 8
  %132 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %132 to i64
  %arrayidx225 = getelementptr inbounds [2 x [4 x %struct.linebuffer*]], [2 x [4 x %struct.linebuffer*]]* %all_line, i64 0, i64 %idxprom224
  %133 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %133 to i64
  %arrayidx227 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %alt, i64 0, i64 %idxprom226
  %arrayidx228 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx227, i64 0, i64 1
  %134 = load i32, i32* %arrayidx228, align 4
  %idxprom229 = sext i32 %134 to i64
  %arrayidx230 = getelementptr inbounds [4 x %struct.linebuffer*], [4 x %struct.linebuffer*]* %arrayidx225, i64 0, i64 %idxprom229
  %135 = load %struct.linebuffer*, %struct.linebuffer** %arrayidx230, align 8
  %136 = load i32, i32* %i, align 4
  %add231 = add nsw i32 %136, 1
  call void @check_order(%struct.linebuffer* %131, %struct.linebuffer* %135, i32 %add231)
  br label %if.end232

if.end232:                                        ; preds = %if.then216, %if.else206
  br label %if.end233

if.end233:                                        ; preds = %if.end232, %if.then195
  %137 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %137 to i64
  %arrayidx235 = getelementptr inbounds [2 x %struct._IO_FILE*], [2 x %struct._IO_FILE*]* %streams, i64 0, i64 %idxprom234
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx235, align 8
  %call236 = call i32 @ferror_unlocked(%struct._IO_FILE* %138) #11
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.then238, label %if.end243

if.then238:                                       ; preds = %if.end233
  %call239 = call i32* @__errno_location() #15
  %139 = load i32, i32* %call239, align 4
  %140 = load i8**, i8*** %infiles.addr, align 8
  %141 = load i32, i32* %i, align 4
  %idxprom240 = sext i32 %141 to i64
  %arrayidx241 = getelementptr inbounds i8*, i8** %140, i64 %idxprom240
  %142 = load i8*, i8** %arrayidx241, align 8
  %call242 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %142)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %call242)
  unreachable

if.end243:                                        ; preds = %if.end233
  %143 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %143 to i64
  %arrayidx245 = getelementptr inbounds [2 x i8], [2 x i8]* %fill_up, i64 0, i64 %idxprom244
  store i8 0, i8* %arrayidx245, align 1
  br label %if.end246

if.end246:                                        ; preds = %if.end243, %for.body157
  br label %for.inc247

for.inc247:                                       ; preds = %if.end246
  %144 = load i32, i32* %i, align 4
  %inc248 = add nsw i32 %144, 1
  store i32 %inc248, i32* %i, align 4
  br label %for.cond154

for.end249:                                       ; preds = %for.cond154
  br label %while.cond

while.end:                                        ; preds = %lor.end
  store i32 0, i32* %i, align 4
  br label %for.cond250

for.cond250:                                      ; preds = %for.inc265, %while.end
  %145 = load i32, i32* %i, align 4
  %cmp251 = icmp slt i32 %145, 2
  br i1 %cmp251, label %for.body253, label %for.end267

for.body253:                                      ; preds = %for.cond250
  %146 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %146 to i64
  %arrayidx255 = getelementptr inbounds [2 x %struct._IO_FILE*], [2 x %struct._IO_FILE*]* %streams, i64 0, i64 %idxprom254
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx255, align 8
  %call256 = call i32 @rpl_fclose(%struct._IO_FILE* %147)
  %cmp257 = icmp ne i32 %call256, 0
  br i1 %cmp257, label %if.then259, label %if.end264

if.then259:                                       ; preds = %for.body253
  %call260 = call i32* @__errno_location() #15
  %148 = load i32, i32* %call260, align 4
  %149 = load i8**, i8*** %infiles.addr, align 8
  %150 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %150 to i64
  %arrayidx262 = getelementptr inbounds i8*, i8** %149, i64 %idxprom261
  %151 = load i8*, i8** %arrayidx262, align 8
  %call263 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %151)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i8* %call263)
  unreachable

if.end264:                                        ; preds = %for.body253
  br label %for.inc265

for.inc265:                                       ; preds = %if.end264
  %152 = load i32, i32* %i, align 4
  %inc266 = add nsw i32 %152, 1
  store i32 %inc266, i32* %i, align 4
  br label %for.cond250

for.end267:                                       ; preds = %for.cond250
  %153 = load i8, i8* @total_option, align 1
  %tobool268 = trunc i8 %153 to i1
  br i1 %tobool268, label %if.then269, label %if.end280

if.then269:                                       ; preds = %for.end267
  %arrayidx270 = getelementptr inbounds [3 x i64], [3 x i64]* %total, i64 0, i64 0
  %154 = load i64, i64* %arrayidx270, align 16
  %arraydecay = getelementptr inbounds [21 x i8], [21 x i8]* %buf1, i64 0, i64 0
  %call271 = call i8* @umaxtostr(i64 %154, i8* %arraydecay)
  %155 = load i8*, i8** @col_sep, align 8
  %arrayidx272 = getelementptr inbounds [3 x i64], [3 x i64]* %total, i64 0, i64 1
  %156 = load i64, i64* %arrayidx272, align 8
  %arraydecay273 = getelementptr inbounds [21 x i8], [21 x i8]* %buf2, i64 0, i64 0
  %call274 = call i8* @umaxtostr(i64 %156, i8* %arraydecay273)
  %157 = load i8*, i8** @col_sep, align 8
  %arrayidx275 = getelementptr inbounds [3 x i64], [3 x i64]* %total, i64 0, i64 2
  %158 = load i64, i64* %arrayidx275, align 16
  %arraydecay276 = getelementptr inbounds [21 x i8], [21 x i8]* %buf3, i64 0, i64 0
  %call277 = call i8* @umaxtostr(i64 %158, i8* %arraydecay276)
  %159 = load i8*, i8** @col_sep, align 8
  %160 = load i8, i8* @delim, align 1
  %conv278 = zext i8 %160 to i32
  %call279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.52, i64 0, i64 0), i8* %call271, i8* %155, i8* %call274, i8* %157, i8* %call277, i8* %159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0), i32 %conv278)
  br label %if.end280

if.end280:                                        ; preds = %if.then269, %for.end267
  ret void
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

; Function Attrs: nounwind
declare dso_local i32 @ferror_unlocked(%struct._IO_FILE*) #6

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define internal void @writeline(%struct.linebuffer* %line, %struct._IO_FILE* %stream, i32 %class) #2 {
entry:
  %line.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %class.addr = alloca i32, align 4
  store %struct.linebuffer* %line, %struct.linebuffer** %line.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  %0 = load i32, i32* %class.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* @only_file_1, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %return

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i8, i8* @only_file_2, align 1
  %tobool2 = trunc i8 %2 to i1
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %sw.bb1
  br label %return

if.end4:                                          ; preds = %sw.bb1
  %3 = load i8, i8* @only_file_1, align 1
  %tobool5 = trunc i8 %3 to i1
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %4 = load i8*, i8** @col_sep, align 8
  %5 = load i64, i64* @col_sep_len, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i64 @fwrite_unlocked(i8* %4, i64 1, i64 %5, %struct._IO_FILE* %6)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %7 = load i8, i8* @both, align 1
  %tobool9 = trunc i8 %7 to i1
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %sw.bb8
  br label %return

if.end11:                                         ; preds = %sw.bb8
  %8 = load i8, i8* @only_file_1, align 1
  %tobool12 = trunc i8 %8 to i1
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %9 = load i8*, i8** @col_sep, align 8
  %10 = load i64, i64* @col_sep_len, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i64 @fwrite_unlocked(i8* %9, i64 1, i64 %10, %struct._IO_FILE* %11)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %12 = load i8, i8* @only_file_2, align 1
  %tobool16 = trunc i8 %12 to i1
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %13 = load i8*, i8** @col_sep, align 8
  %14 = load i64, i64* @col_sep_len, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call18 = call i64 @fwrite_unlocked(i8* %13, i64 1, i64 %14, %struct._IO_FILE* %15)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end19, %if.end7, %if.end
  %16 = load %struct.linebuffer*, %struct.linebuffer** %line.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %16, i32 0, i32 2
  %17 = load i8*, i8** %buffer, align 8
  %18 = load %struct.linebuffer*, %struct.linebuffer** %line.addr, align 8
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %18, i32 0, i32 1
  %19 = load i64, i64* %length, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call20 = call i64 @fwrite_unlocked(i8* %17, i64 1, i64 %19, %struct._IO_FILE* %20)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then10, %if.then3, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @check_order(%struct.linebuffer* %prev, %struct.linebuffer* %current, i32 %whatfile) #2 {
entry:
  %prev.addr = alloca %struct.linebuffer*, align 8
  %current.addr = alloca %struct.linebuffer*, align 8
  %whatfile.addr = alloca i32, align 4
  %order = alloca i32, align 4
  store %struct.linebuffer* %prev, %struct.linebuffer** %prev.addr, align 8
  store %struct.linebuffer* %current, %struct.linebuffer** %current.addr, align 8
  store i32 %whatfile, i32* %whatfile.addr, align 4
  %0 = load i32, i32* @check_input_order, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @check_input_order, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i8, i8* @seen_unpairable, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then, label %if.end25

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load i32, i32* %whatfile.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool2 = trunc i8 %4 to i1
  br i1 %tobool2, label %if.end24, label %if.then3

if.then3:                                         ; preds = %if.then
  %5 = load i8, i8* @hard_LC_COLLATE, align 1
  %tobool4 = trunc i8 %5 to i1
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %6 = load %struct.linebuffer*, %struct.linebuffer** %prev.addr, align 8
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %6, i32 0, i32 2
  %7 = load i8*, i8** %buffer, align 8
  %8 = load %struct.linebuffer*, %struct.linebuffer** %prev.addr, align 8
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %8, i32 0, i32 1
  %9 = load i64, i64* %length, align 8
  %sub6 = sub i64 %9, 1
  %10 = load %struct.linebuffer*, %struct.linebuffer** %current.addr, align 8
  %buffer7 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %10, i32 0, i32 2
  %11 = load i8*, i8** %buffer7, align 8
  %12 = load %struct.linebuffer*, %struct.linebuffer** %current.addr, align 8
  %length8 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %12, i32 0, i32 1
  %13 = load i64, i64* %length8, align 8
  %sub9 = sub i64 %13, 1
  %call = call i32 @xmemcoll(i8* %7, i64 %sub6, i8* %11, i64 %sub9)
  store i32 %call, i32* %order, align 4
  br label %if.end

if.else:                                          ; preds = %if.then3
  %14 = load %struct.linebuffer*, %struct.linebuffer** %prev.addr, align 8
  %buffer10 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %14, i32 0, i32 2
  %15 = load i8*, i8** %buffer10, align 8
  %16 = load %struct.linebuffer*, %struct.linebuffer** %prev.addr, align 8
  %length11 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %16, i32 0, i32 1
  %17 = load i64, i64* %length11, align 8
  %sub12 = sub i64 %17, 1
  %18 = load %struct.linebuffer*, %struct.linebuffer** %current.addr, align 8
  %buffer13 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %18, i32 0, i32 2
  %19 = load i8*, i8** %buffer13, align 8
  %20 = load %struct.linebuffer*, %struct.linebuffer** %current.addr, align 8
  %length14 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %20, i32 0, i32 1
  %21 = load i64, i64* %length14, align 8
  %sub15 = sub i64 %21, 1
  %call16 = call i32 @memcmp2(i8* %15, i64 %sub12, i8* %19, i64 %sub15) #13
  store i32 %call16, i32* %order, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %22 = load i32, i32* %order, align 4
  %cmp17 = icmp slt i32 0, %22
  br i1 %cmp17, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end
  %23 = load i32, i32* @check_input_order, align 4
  %cmp19 = icmp eq i32 %23, 1
  %24 = zext i1 %cmp19 to i64
  %cond = select i1 %cmp19, i32 1, i32 0
  %25 = load i32, i32* %whatfile.addr, align 4
  call void (i32, i32, i8*, ...) @error(i32 %cond, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0), i32 %25)
  %26 = load i32, i32* %whatfile.addr, align 4
  %sub20 = sub nsw i32 %26, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds [2 x i8], [2 x i8]* @issued_disorder_warning, i64 0, i64 %idxprom21
  store i8 1, i8* %arrayidx22, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %lor.lhs.false, %entry
  ret void
}

declare dso_local i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #1

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
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i8** %write_error, align 8
  %3 = load i8*, i8** @file_name, align 8
  %tobool4 = icmp ne i8* %3, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %call6 = call i32* @__errno_location() #15
  %4 = load i32, i32* %call6, align 4
  %5 = load i8*, i8** @file_name, align 8
  %call7 = call i8* @quotearg_colon(i8* %5)
  %6 = load i8*, i8** %write_error, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.58, i64 0, i64 0), i8* %call7, i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call8 = call i32* @__errno_location() #15
  %7 = load i32, i32* %call8, align 4
  %8 = load i8*, i8** %write_error, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.59, i64 0, i64 0), i8* %8)
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
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i64 0, i64 0)) #13
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [257 x i8], [257 x i8]* %locale, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.69, i64 0, i64 0)) #13
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
define dso_local i8* @umaxtostr(i64 %i, i8* %buf) #2 {
entry:
  %i.addr = alloca i64, align 8
  %buf.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i64 %i, i64* %i.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 20
  store i8* %add.ptr, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  store i8 0, i8* %1, align 1
  %2 = load i64, i64* %i.addr, align 8
  %cmp = icmp ult i64 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %3 = load i64, i64* %i.addr, align 8
  %rem = urem i64 %3, 10
  %sub = sub i64 48, %rem
  %conv = trunc i64 %sub to i8
  %4 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv, i8* %incdec.ptr, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i64, i64* %i.addr, align 8
  %div = udiv i64 %5, 10
  store i64 %div, i64* %i.addr, align 8
  %cmp1 = icmp ne i64 %div, 0
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %6 = load i8*, i8** %p, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr3, i8** %p, align 8
  store i8 45, i8* %incdec.ptr3, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  br label %do.body4

do.body4:                                         ; preds = %do.cond8, %if.else
  %7 = load i64, i64* %i.addr, align 8
  %rem5 = urem i64 %7, 10
  %add = add i64 48, %rem5
  %conv6 = trunc i64 %add to i8
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr7, i8** %p, align 8
  store i8 %conv6, i8* %incdec.ptr7, align 1
  br label %do.cond8

do.cond8:                                         ; preds = %do.body4
  %9 = load i64, i64* %i.addr, align 8
  %div9 = udiv i64 %9, 10
  store i64 %div9, i64* %i.addr, align 8
  %cmp10 = icmp ne i64 %div9, 0
  br i1 %cmp10, label %do.body4, label %do.end12

do.end12:                                         ; preds = %do.cond8
  br label %if.end

if.end:                                           ; preds = %do.end12, %do.end
  %10 = load i8*, i8** %p, align 8
  ret i8* %10
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

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: noinline nounwind readonly uwtable
define dso_local i32 @memcmp2(i8* %s1, i64 %n1, i8* %s2, i64 %n2) #10 {
entry:
  %s1.addr = alloca i8*, align 8
  %n1.addr = alloca i64, align 8
  %s2.addr = alloca i8*, align 8
  %n2.addr = alloca i64, align 8
  %cmp = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i64 %n1, i64* %n1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i64 %n2, i64* %n2.addr, align 8
  %0 = load i8*, i8** %s1.addr, align 8
  %1 = load i8*, i8** %s2.addr, align 8
  %2 = load i64, i64* %n1.addr, align 8
  %3 = load i64, i64* %n2.addr, align 8
  %cmp1 = icmp ule i64 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* %n1.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* %n2.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ]
  %call = call i32 @memcmp(i8* %0, i8* %1, i64 %cond) #13
  store i32 %call, i32* %cmp, align 4
  %6 = load i32, i32* %cmp, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %if.then, label %if.end8

if.then:                                          ; preds = %cond.end
  %7 = load i64, i64* %n1.addr, align 8
  %8 = load i64, i64* %n2.addr, align 8
  %cmp3 = icmp ult i64 %7, %8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  store i32 -1, i32* %cmp, align 4
  br label %if.end7

if.else:                                          ; preds = %if.then
  %9 = load i64, i64* %n1.addr, align 8
  %10 = load i64, i64* %n2.addr, align 8
  %cmp5 = icmp ugt i64 %9, %10
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.else
  store i32 1, i32* %cmp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %cond.end
  %11 = load i32, i32* %cmp, align 4
  ret i32 %11
}

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
  %call = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.82, i64 0, i64 0), %struct._IO_FILE* %1)
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
  %call5 = call i32 @strncmp(i8* %add.ptr4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.83, i64 0, i64 0), i64 7) #13
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %9 = load i8*, i8** %base, align 8
  store i8* %9, i8** %argv0.addr, align 8
  %10 = load i8*, i8** %base, align 8
  %call8 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.84, i64 0, i64 0), i64 3) #13
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8** %quote_string, align 8
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
  %call11 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.96, i64 0, i64 0), i32 %9)
  store i8* %call11, i8** %left_quote.addr, align 8
  %10 = load i32, i32* %quoting_style.addr, align 4
  %call12 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), i32 %10)
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
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0), i8** %quote_string, align 8
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
  %call1 = call i32 @c_strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.98, i64 0, i64 0)) #13
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %msgid.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 96
  %7 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.99, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.100, i64 0, i64 0)
  store i8* %cond, i8** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load i8*, i8** %locale_code, align 8
  %call7 = call i32 @c_strcasecmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.101, i64 0, i64 0)) #13
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end6
  %9 = load i8*, i8** %msgid.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 96
  %11 = zext i1 %cmp13 to i64
  %cond15 = select i1 %cmp13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.102, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.103, i64 0, i64 0)
  store i8* %cond15, i8** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end6
  %12 = load i32, i32* %s.addr, align 4
  %cmp17 = icmp eq i32 %12, 9
  %13 = zext i1 %cmp17 to i64
  %cond19 = select i1 %cmp17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.95, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.97, i64 0, i64 0)
  store i8* %cond19, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then10, %if.then3, %if.then
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #8

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
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i64 0, i64 0), i8* %2, i8* %3, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %6 = load i8*, i8** %package.addr, align 8
  %7 = load i8*, i8** %version.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.115, i64 0, i64 0), i8* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.116, i64 0, i64 0), i32 2020)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.117, i64 0, i64 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.118, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.119, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.117, i64 0, i64 0), %struct._IO_FILE* %11)
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
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.120, i64 0, i64 0), i8* %15)
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %17 = load i8**, i8*** %authors.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx9, align 8
  %19 = load i8**, i8*** %authors.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.121, i64 0, i64 0), i8* %18, i8* %20)
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
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.122, i64 0, i64 0), i8* %23, i8* %25, i8* %27)
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
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.123, i64 0, i64 0), i8* %30, i8* %32, i8* %34, i8* %36)
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
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.124, i64 0, i64 0), i8* %39, i8* %41, i8* %43, i8* %45, i8* %47)
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
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.125, i64 0, i64 0), i8* %50, i8* %52, i8* %54, i8* %56, i8* %58, i8* %60)
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
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.126, i64 0, i64 0), i8* %63, i8* %65, i8* %67, i8* %69, i8* %71, i8* %73, i8* %75)
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
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.127, i64 0, i64 0), i8* %78, i8* %80, i8* %82, i8* %84, i8* %86, i8* %88, i8* %90, i8* %92)
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
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.128, i64 0, i64 0), i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105, i8* %107, i8* %109, i8* %111)
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
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.129, i64 0, i64 0), i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124, i8* %126, i8* %128, i8* %130)
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
  %call = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.117, i64 0, i64 0), %struct._IO_FILE* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.132, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.133, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.134, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.135, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.136, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.137, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.138, i64 0, i64 0))
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
  call void (i32, i32, i8*, ...) @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.151, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.152, i64 0, i64 0))
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
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.155, i64 0, i64 0))
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.156, i64 0, i64 0))
  %1 = load volatile i32, i32* @exit_failure, align 4
  %2 = load i8*, i8** %s1.addr, align 8
  %3 = load i64, i64* %s1len.addr, align 8
  %call = call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %2, i64 %3)
  %4 = load i8*, i8** %s2.addr, align 8
  %5 = load i64, i64* %s2len.addr, align 8
  %call1 = call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %4, i64 %5)
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.157, i64 0, i64 0), i8* %call, i8* %call1)
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
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.174, i64 0, i64 0), i8** %codeset, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %codeset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.175, i64 0, i64 0), i8** %codeset, align 8
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

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
