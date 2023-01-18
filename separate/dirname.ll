; ModuleID = 'dirname.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"  -z, --zero     end each output line with NUL, not newline\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@main.dot = internal constant i8 46, align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"8.32\00", align 1
@file_name = internal global i8* null, align 8
@ignore_EPIPE = internal global i8 0, align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4
@program_name = dso_local global i8* null, align 8
@.str.49 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external dso_local global i8*, align 8
@program_invocation_name = external dso_local global i8*, align 8
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.54, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.56, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.59, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.61, i32 0, i32 0), i8* null], align 16
@.str.52 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.53 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.54 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.55 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.56 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.57 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.58 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.59 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.60 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.61 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.10.62 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.64 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.65 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.14.66 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.67 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.16.68 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.17.69 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.70 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.77 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.91 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.92 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.93 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.95 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.96 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.97 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.109 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.119 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.123 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @program_name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** @program_name, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %7)
  %8 = load i8*, i8** @program_name, align 8
  %9 = load i8*, i8** @program_name, align 8
  %10 = load i8*, i8** @program_name, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.6, i64 0, i64 0), i8* %8, i8* %9, i8* %10)
  call void @emit_ancillary_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %11 = load i32, i32* %status.addr, align 4
  call void @exit(i32 %11) #12
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
  %1 = call i8* @memcpy(i8* %0, i8* bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112)
  %2 = load i8*, i8** %program.addr, align 8
  store i8* %2, i8** %node, align 8
  %arraydecay = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %infomap, i64 0, i64 0
  store %struct.infomap* %arraydecay, %struct.infomap** %map_prog, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load %struct.infomap*, %struct.infomap** %map_prog, align 8
  %program1 = getelementptr inbounds %struct.infomap, %struct.infomap* %3, i32 0, i32 0
  %4 = load i8*, i8** %program1, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8*, i8** %program.addr, align 8
  %6 = load %struct.infomap*, %struct.infomap** %map_prog, align 8
  %program2 = getelementptr inbounds %struct.infomap, %struct.infomap* %6, i32 0, i32 0
  %7 = load i8*, i8** %program2, align 8
  %call = call i32 @strcmp(i8* %5, i8* %7) #13
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  %9 = load %struct.infomap*, %struct.infomap** %map_prog, align 8
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %incdec.ptr = getelementptr inbounds %struct.infomap, %struct.infomap* %9, i32 1
  store %struct.infomap* %incdec.ptr, %struct.infomap** %map_prog, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
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
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  %call7 = call i8* @setlocale(i32 5, i8* null) #11
  store i8* %call7, i8** %lc_messages, align 8
  %13 = load i8*, i8** %lc_messages, align 8
  %tobool8 = icmp ne i8* %13, null
  br i1 %tobool8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %14 = load i8*, i8** %lc_messages, align 8
  %call9 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #13
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i64 0, i64 0), %struct._IO_FILE* %15)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true, %if.end
  %16 = load i8*, i8** %program.addr, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* %16)
  %17 = load i8*, i8** %node, align 8
  %18 = load i8*, i8** %node, align 8
  %19 = load i8*, i8** %program.addr, align 8
  %cmp15 = icmp eq i8* %18, %19
  %20 = zext i1 %cmp15 to i64
  %cond = select i1 %cmp15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i8* %17, i8* %cond)
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
  %use_nuls = alloca i8, align 1
  %result = alloca i8*, align 8
  %len = alloca i64, align 8
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8 0, i8* %use_nuls, align 1
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  call void @set_program_name(i8* %1)
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #11
  %call1 = call i32 @atexit(void ()* @close_stdout) #11
  br label %while.body

while.body:                                       ; preds = %entry, %sw.bb
  %2 = load i32, i32* %argc.addr, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %call2 = call i32 @getopt_long(i32 %2, i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11
  store i32 %call2, i32* %c, align 4
  %4 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %c, align 4
  br label %NodeBlock3

NodeBlock3:                                       ; preds = %if.end
  %case.cmp4 = icmp eq i32 %5, 122
  br i1 %case.cmp4, label %sw.bb, label %NodeBlock1

NodeBlock1:                                       ; preds = %NodeBlock3
  %case.cmp2 = icmp eq i32 %5, -130
  br i1 %case.cmp2, label %sw.bb3, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock1
  %case.cmp = icmp eq i32 %5, -131
  br i1 %case.cmp, label %sw.bb4, label %newDefault

sw.bb:                                            ; preds = %NodeBlock3
  store i8 1, i8* %use_nuls, align 1
  br label %while.body

sw.bb3:                                           ; preds = %NodeBlock1
  call void @usage(i32 0) #14
  unreachable

sw.bb4:                                           ; preds = %NodeBlock
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** @Version, align 8
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* null)
  call void @exit(i32 0) #12
  unreachable

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
  call void @usage(i32 1) #14
  unreachable

while.end:                                        ; preds = %while.body
  %8 = load i32, i32* %argc.addr, align 4
  %9 = load i32, i32* @optind, align 4
  %add = add nsw i32 %9, 1
  %cmp5 = icmp slt i32 %8, %add
  br i1 %cmp5, label %if.then6, label %for.cond

if.then6:                                         ; preds = %while.end
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  call void @usage(i32 1) #14
  unreachable

for.cond:                                         ; preds = %while.end, %if.end12
  %10 = load i32, i32* @optind, align 4
  %11 = load i32, i32* %argc.addr, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8**, i8*** %argv.addr, align 8
  %13 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i8*, i8** %12, i64 %idxprom
  %14 = load i8*, i8** %arrayidx9, align 8
  store i8* %14, i8** %result, align 8
  %15 = load i8*, i8** %result, align 8
  %call10 = call i64 @dir_len(i8* %15) #13
  store i64 %call10, i64* %len, align 8
  %16 = load i64, i64* %len, align 8
  %tobool = icmp ne i64 %16, 0
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %for.body
  store i8* @main.dot, i8** %result, align 8
  store i64 1, i64* %len, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.body
  %17 = load i8*, i8** %result, align 8
  %18 = load i64, i64* %len, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i64 @fwrite_unlocked(i8* %17, i64 1, i64 %18, %struct._IO_FILE* %19)
  %20 = load i8, i8* %use_nuls, align 1
  %tobool14 = trunc i8 %20 to i1
  %21 = zext i1 %tobool14 to i64
  %cond = select i1 %tobool14, i32 0, i32 10
  %call15 = call i32 @putchar_unlocked(i32 %cond)
  %22 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* @optind, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) #6

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #6

declare dso_local void @error(i32, i32, i8*, ...) #1

declare dso_local i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @putchar_unlocked(i32) #1

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
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8** %write_error, align 8
  %3 = load i8*, i8** @file_name, align 8
  %tobool4 = icmp ne i8* %3, null
  %call6 = call i32* @__errno_location() #15
  %4 = load i32, i32* %call6, align 4
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %5 = load i8*, i8** @file_name, align 8
  %call7 = call i8* @quotearg_colon(i8* %5)
  %6 = load i8*, i8** %write_error, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.37, i64 0, i64 0), i8* %call7, i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = load i8*, i8** %write_error, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.38, i64 0, i64 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %8 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %8) #14
  unreachable

if.end9:                                          ; preds = %land.lhs.true1, %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call10 = call i32 @close_stream(%struct._IO_FILE* %9)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %10 = load volatile i32, i32* @exit_failure, align 4
  call void @_exit(i32 %10) #14
  unreachable

if.end13:                                         ; preds = %if.end9
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #7

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #8

; Function Attrs: noinline nounwind readonly uwtable
define dso_local i64 @dir_len(i8* %file) #9 {
entry:
  %file.addr = alloca i8*, align 8
  %prefix_length = alloca i64, align 8
  %length = alloca i64, align 8
  store i8* %file, i8** %file.addr, align 8
  store i64 0, i64* %prefix_length, align 8
  %0 = load i64, i64* %prefix_length, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 47
  %3 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 1, i32 0
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond3 = phi i32 [ %cond, %cond.false ], [ 0, %entry ]
  %conv4 = sext i32 %cond3 to i64
  %4 = load i64, i64* %prefix_length, align 8
  %add = add i64 %4, %conv4
  store i64 %add, i64* %prefix_length, align 8
  %5 = load i8*, i8** %file.addr, align 8
  %call = call i8* @last_component(i8* %5) #13
  %6 = load i8*, i8** %file.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %length, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load i64, i64* %prefix_length, align 8
  %8 = load i64, i64* %length, align 8
  %cmp5 = icmp ult i64 %7, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %file.addr, align 8
  %10 = load i64, i64* %length, align 8
  %sub = sub i64 %10, 1
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 %sub
  %11 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 47
  br i1 %cmp9, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %length, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %length, align 8
  br label %for.cond

for.end:                                          ; preds = %for.body, %for.cond
  %13 = load i64, i64* %length, align 8
  ret i64 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @mdir_name(i8* %file) #2 {
entry:
  %retval = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %length = alloca i64, align 8
  %append_dot = alloca i8, align 1
  %dir = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i64 @dir_len(i8* %0) #13
  store i64 %call, i64* %length, align 8
  %1 = load i64, i64* %length, align 8
  %cmp = icmp eq i64 %1, 0
  %spec.select = select i1 %cmp, i1 true, i1 false
  %frombool = zext i1 %spec.select to i8
  store i8 %frombool, i8* %append_dot, align 1
  %2 = load i64, i64* %length, align 8
  %3 = load i8, i8* %append_dot, align 1
  %tobool = trunc i8 %3 to i1
  %conv = zext i1 %tobool to i64
  %add = add i64 %2, %conv
  %add1 = add i64 %add, 1
  %call2 = call noalias i8* @malloc(i64 %add1) #11
  store i8* %call2, i8** %dir, align 8
  %4 = load i8*, i8** %dir, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %dir, align 8
  %6 = load i8*, i8** %file.addr, align 8
  %7 = load i64, i64* %length, align 8
  %8 = call i8* @memcpy(i8* %5, i8* %6, i64 %7)
  %9 = load i8, i8* %append_dot, align 1
  %tobool4 = trunc i8 %9 to i1
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %10 = load i8*, i8** %dir, align 8
  %11 = load i64, i64* %length, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %length, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11
  store i8 46, i8* %arrayidx, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %12 = load i8*, i8** %dir, align 8
  %13 = load i64, i64* %length, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8 0, i8* %arrayidx7, align 1
  %14 = load i8*, i8** %dir, align 8
  store i8* %14, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %15 = load i8*, i8** %retval, align 8
  ret i8* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: noinline nounwind readonly uwtable
define dso_local i8* @last_component(i8* %name) #9 {
entry:
  %name.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  %p = alloca i8*, align 8
  %saw_slash = alloca i8, align 1
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 0
  store i8* %add.ptr, i8** %base, align 8
  store i8 0, i8* %saw_slash, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %base, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  %3 = load i8*, i8** %base, align 8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %base, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* %3, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv2, 47
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i8 1, i8* %saw_slash, align 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %8 = load i8, i8* %saw_slash, align 1
  %tobool5 = trunc i8 %8 to i1
  br i1 %tobool5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %if.else
  %9 = load i8*, i8** %p, align 8
  store i8* %9, i8** %base, align 8
  store i8 0, i8* %saw_slash, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then6, %if.else
  %10 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %base, align 8
  ret i8* %11
}

; Function Attrs: noinline nounwind readonly uwtable
define dso_local i64 @base_len(i8* %name) #9 {
entry:
  %name.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %prefix_len = alloca i64, align 8
  store i8* %name, i8** %name.addr, align 8
  store i64 0, i64* %prefix_len, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #13
  store i64 %call, i64* %len, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 1, %1
  br i1 %cmp, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i64, i64* %len, align 8
  %sub = sub i64 %3, 1
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %sub
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 47
  br i1 %cmp1, label %for.inc, label %for.end

for.inc:                                          ; preds = %land.rhs
  %5 = load i64, i64* %len, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %len, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond, %land.rhs
  %6 = load i64, i64* %len, align 8
  ret i64 %6
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

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
  %call = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* %1)
  call void @abort() #12
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %argv0.addr, align 8
  %call1 = call i8* @strrchr(i8* %2, i32 47) #13
  store i8* %call1, i8** %slash, align 8
  %3 = load i8*, i8** %slash, align 8
  %cmp2 = icmp ne i8* %3, null
  %4 = load i8*, i8** %slash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8*, i8** %argv0.addr, align 8
  %cond = select i1 %cmp2, i8* %add.ptr, i8* %5
  store i8* %cond, i8** %base, align 8
  %6 = load i8*, i8** %base, align 8
  %7 = load i8*, i8** %argv0.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp sge i64 %sub.ptr.sub, 7
  br i1 %cmp3, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %base, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 -7
  %call5 = call i32 @strncmp(i8* %add.ptr4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.50, i64 0, i64 0), i64 7) #13
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %9 = load i8*, i8** %base, align 8
  store i8* %9, i8** %argv0.addr, align 8
  %10 = load i8*, i8** %base, align 8
  %call8 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.51, i64 0, i64 0), i64 3) #13
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.then7
  %11 = load i8*, i8** %base, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %11, i64 3
  store i8* %add.ptr11, i8** %argv0.addr, align 8
  %12 = load i8*, i8** %argv0.addr, align 8
  store i8* %12, i8** @program_invocation_short_name, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.then10, %land.lhs.true, %if.end
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
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %cond = select i1 %tobool, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
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
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %cond = select i1 %tobool, %struct.quoting_options* %1, %struct.quoting_options* @default_quoting_options
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
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %cond = select i1 %tobool, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
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
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %cond = select i1 %tobool, %struct.quoting_options* %2, %struct.quoting_options* @default_quoting_options
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
  %3 = load i8*, i8** %right_quote.addr, align 8
  %tobool2 = icmp ne i8* %3, null
  %or.cond = and i1 %tobool1, %tobool2
  br i1 %or.cond, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @abort() #12
  unreachable

if.end4:                                          ; preds = %if.end
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
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %cond = select i1 %tobool, %struct.quoting_options* %1, %struct.quoting_options* @default_quoting_options
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
  br label %NodeBlock27

NodeBlock27:                                      ; preds = %process_input
  %case.cmp28 = icmp eq i32 %1, 6
  br i1 %case.cmp28, label %sw.bb, label %NodeBlock25

NodeBlock25:                                      ; preds = %NodeBlock27
  %case.cmp26 = icmp eq i32 %1, 5
  br i1 %case.cmp26, label %sw.bb3, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %case.cmp24 = icmp eq i32 %1, 7
  br i1 %case.cmp24, label %sw.bb7, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %case.cmp22 = icmp eq i32 %1, 8
  br i1 %case.cmp22, label %sw.bb8, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %case.cmp20 = icmp eq i32 %1, 9
  br i1 %case.cmp20, label %sw.bb8, label %NodeBlock17

NodeBlock17:                                      ; preds = %NodeBlock19
  %case.cmp18 = icmp eq i32 %1, 10
  br i1 %case.cmp18, label %sw.bb8, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %case.cmp16 = icmp eq i32 %1, 3
  br i1 %case.cmp16, label %sw.bb26, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %case.cmp14 = icmp eq i32 %1, 1
  br i1 %case.cmp14, label %sw.bb27, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %case.cmp12 = icmp eq i32 %1, 4
  br i1 %case.cmp12, label %sw.bb28, label %NodeBlock9

NodeBlock9:                                       ; preds = %NodeBlock11
  %case.cmp10 = icmp eq i32 %1, 2
  br i1 %case.cmp10, label %sw.bb32, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock9
  %case.cmp = icmp eq i32 %1, 0
  br i1 %case.cmp, label %sw.bb43, label %newDefault

sw.bb:                                            ; preds = %NodeBlock27
  store i32 5, i32* %quoting_style.addr, align 4
  store i8 1, i8* %elide_outer_quotes, align 1
  br label %sw.bb3

sw.bb3:                                           ; preds = %NodeBlock25, %sw.bb
  %2 = load i8, i8* %elide_outer_quotes, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.end6, label %do.body

do.body:                                          ; preds = %sw.bb3
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
  br label %if.end6

if.end6:                                          ; preds = %if.end, %sw.bb3
  store i8 1, i8* %backslash_escapes, align 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), i8** %quote_string, align 8
  store i64 1, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %NodeBlock23
  store i8 1, i8* %backslash_escapes, align 1
  store i8 0, i8* %elide_outer_quotes, align 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %NodeBlock21, %NodeBlock19, %NodeBlock17
  %8 = load i32, i32* %quoting_style.addr, align 4
  %cmp9 = icmp ne i32 %8, 10
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %sw.bb8
  %9 = load i32, i32* %quoting_style.addr, align 4
  %call11 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.63, i64 0, i64 0), i32 %9)
  store i8* %call11, i8** %left_quote.addr, align 8
  %10 = load i32, i32* %quoting_style.addr, align 4
  %call12 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i32 %10)
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

for.cond:                                         ; preds = %if.end21, %if.then15
  %13 = load i8*, i8** %quote_string, align 8
  %14 = load i8, i8* %13, align 1
  %tobool16 = icmp ne i8 %14, 0
  br i1 %tobool16, label %do.body17, label %if.end24

do.body17:                                        ; preds = %for.cond
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
  %22 = load i8*, i8** %quote_string, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %quote_string, align 8
  br label %for.cond

if.end24:                                         ; preds = %for.cond, %if.end13
  store i8 1, i8* %backslash_escapes, align 1
  %23 = load i8*, i8** %right_quote.addr, align 8
  store i8* %23, i8** %quote_string, align 8
  %24 = load i8*, i8** %quote_string, align 8
  %call25 = call i64 @strlen(i8* %24) #13
  store i64 %call25, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb26:                                          ; preds = %NodeBlock15
  store i8 1, i8* %backslash_escapes, align 1
  br label %sw.bb27

sw.bb27:                                          ; preds = %NodeBlock13, %sw.bb26
  store i8 1, i8* %elide_outer_quotes, align 1
  br label %sw.bb28

sw.bb28:                                          ; preds = %NodeBlock11, %sw.bb27
  %25 = load i8, i8* %elide_outer_quotes, align 1
  %tobool29 = trunc i8 %25 to i1
  br i1 %tobool29, label %sw.bb32, label %if.then30

if.then30:                                        ; preds = %sw.bb28
  store i8 1, i8* %backslash_escapes, align 1
  br label %sw.bb32

sw.bb32:                                          ; preds = %NodeBlock9, %sw.bb28, %if.then30
  store i32 2, i32* %quoting_style.addr, align 4
  %26 = load i8, i8* %elide_outer_quotes, align 1
  %tobool33 = trunc i8 %26 to i1
  br i1 %tobool33, label %if.end42, label %do.body35

do.body35:                                        ; preds = %sw.bb32
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
  br label %if.end42

if.end42:                                         ; preds = %if.end39, %sw.bb32
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0), i8** %quote_string, align 8
  store i64 1, i64* %quote_string_len, align 8
  br label %sw.epilog

sw.bb43:                                          ; preds = %NodeBlock
  store i8 0, i8* %elide_outer_quotes, align 1
  br label %sw.epilog

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
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
  %39 = load i32, i32* %quoting_style.addr, align 4
  %cmp55 = icmp ne i32 %39, 2
  %or.cond = and i1 %tobool53, %cmp55
  %40 = load i64, i64* %quote_string_len, align 8
  %tobool58 = icmp ne i64 %40, 0
  %or.cond1 = and i1 %or.cond, %tobool58
  br i1 %or.cond1, label %land.lhs.true59, label %if.end80

land.lhs.true59:                                  ; preds = %for.body52
  %41 = load i64, i64* %i, align 8
  %42 = load i64, i64* %quote_string_len, align 8
  %add = add i64 %41, %42
  %43 = load i64, i64* %argsize.addr, align 8
  %cmp60 = icmp eq i64 %43, -1
  %44 = load i64, i64* %quote_string_len, align 8
  %cmp63 = icmp ult i64 1, %44
  %or.cond2 = and i1 %cmp60, %cmp63
  br i1 %or.cond2, label %cond.true65, label %cond.false67

cond.true65:                                      ; preds = %land.lhs.true59
  %45 = load i8*, i8** %arg.addr, align 8
  %call66 = call i64 @strlen(i8* %45) #13
  store i64 %call66, i64* %argsize.addr, align 8
  br label %cond.end68

cond.false67:                                     ; preds = %land.lhs.true59
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
  br i1 %tobool77, label %force_outer_quoting_style, label %if.end79

if.end79:                                         ; preds = %if.then76
  store i8 1, i8* %is_right_quote, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %land.lhs.true72, %cond.end68, %for.body52
  %52 = load i8*, i8** %arg.addr, align 8
  %53 = load i64, i64* %i, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = load i8, i8* %arrayidx81, align 1
  store i8 %54, i8* %c, align 1
  %55 = load i8, i8* %c, align 1
  %conv82 = zext i8 %55 to i32
  br label %NodeBlock232

NodeBlock232:                                     ; preds = %if.end80
  %case.cmp233 = icmp eq i32 %conv82, 0
  br i1 %case.cmp233, label %sw.bb83, label %NodeBlock230

NodeBlock230:                                     ; preds = %NodeBlock232
  %case.cmp231 = icmp eq i32 %conv82, 63
  br i1 %case.cmp231, label %sw.bb170, label %NodeBlock228

NodeBlock228:                                     ; preds = %NodeBlock230
  %case.cmp229 = icmp eq i32 %conv82, 7
  br i1 %case.cmp229, label %sw.bb236, label %NodeBlock226

NodeBlock226:                                     ; preds = %NodeBlock228
  %case.cmp227 = icmp eq i32 %conv82, 8
  br i1 %case.cmp227, label %sw.bb237, label %NodeBlock224

NodeBlock224:                                     ; preds = %NodeBlock226
  %case.cmp225 = icmp eq i32 %conv82, 12
  br i1 %case.cmp225, label %sw.bb238, label %NodeBlock222

NodeBlock222:                                     ; preds = %NodeBlock224
  %case.cmp223 = icmp eq i32 %conv82, 10
  br i1 %case.cmp223, label %sw.bb239, label %NodeBlock220

NodeBlock220:                                     ; preds = %NodeBlock222
  %case.cmp221 = icmp eq i32 %conv82, 13
  br i1 %case.cmp221, label %sw.bb240, label %NodeBlock218

NodeBlock218:                                     ; preds = %NodeBlock220
  %case.cmp219 = icmp eq i32 %conv82, 9
  br i1 %case.cmp219, label %sw.bb241, label %NodeBlock216

NodeBlock216:                                     ; preds = %NodeBlock218
  %case.cmp217 = icmp eq i32 %conv82, 11
  br i1 %case.cmp217, label %sw.bb242, label %NodeBlock214

NodeBlock214:                                     ; preds = %NodeBlock216
  %case.cmp215 = icmp eq i32 %conv82, 92
  br i1 %case.cmp215, label %sw.bb243, label %NodeBlock212

NodeBlock212:                                     ; preds = %NodeBlock214
  %case.cmp213 = icmp eq i32 %conv82, 123
  br i1 %case.cmp213, label %sw.bb270, label %NodeBlock210

NodeBlock210:                                     ; preds = %NodeBlock212
  %case.cmp211 = icmp eq i32 %conv82, 125
  br i1 %case.cmp211, label %sw.bb270, label %NodeBlock208

NodeBlock208:                                     ; preds = %NodeBlock210
  %case.cmp209 = icmp eq i32 %conv82, 35
  br i1 %case.cmp209, label %sw.bb283, label %NodeBlock206

NodeBlock206:                                     ; preds = %NodeBlock208
  %case.cmp207 = icmp eq i32 %conv82, 126
  br i1 %case.cmp207, label %sw.bb283, label %NodeBlock204

NodeBlock204:                                     ; preds = %NodeBlock206
  %case.cmp205 = icmp eq i32 %conv82, 32
  br i1 %case.cmp205, label %sw.bb288, label %NodeBlock202

NodeBlock202:                                     ; preds = %NodeBlock204
  %case.cmp203 = icmp eq i32 %conv82, 33
  br i1 %case.cmp203, label %sw.bb289, label %NodeBlock200

NodeBlock200:                                     ; preds = %NodeBlock202
  %case.cmp201 = icmp eq i32 %conv82, 34
  br i1 %case.cmp201, label %sw.bb289, label %NodeBlock198

NodeBlock198:                                     ; preds = %NodeBlock200
  %case.cmp199 = icmp eq i32 %conv82, 36
  br i1 %case.cmp199, label %sw.bb289, label %NodeBlock196

NodeBlock196:                                     ; preds = %NodeBlock198
  %case.cmp197 = icmp eq i32 %conv82, 38
  br i1 %case.cmp197, label %sw.bb289, label %NodeBlock194

NodeBlock194:                                     ; preds = %NodeBlock196
  %case.cmp195 = icmp eq i32 %conv82, 40
  br i1 %case.cmp195, label %sw.bb289, label %NodeBlock192

NodeBlock192:                                     ; preds = %NodeBlock194
  %case.cmp193 = icmp eq i32 %conv82, 41
  br i1 %case.cmp193, label %sw.bb289, label %NodeBlock190

NodeBlock190:                                     ; preds = %NodeBlock192
  %case.cmp191 = icmp eq i32 %conv82, 42
  br i1 %case.cmp191, label %sw.bb289, label %NodeBlock188

NodeBlock188:                                     ; preds = %NodeBlock190
  %case.cmp189 = icmp eq i32 %conv82, 59
  br i1 %case.cmp189, label %sw.bb289, label %NodeBlock186

NodeBlock186:                                     ; preds = %NodeBlock188
  %case.cmp187 = icmp eq i32 %conv82, 60
  br i1 %case.cmp187, label %sw.bb289, label %NodeBlock184

NodeBlock184:                                     ; preds = %NodeBlock186
  %case.cmp185 = icmp eq i32 %conv82, 61
  br i1 %case.cmp185, label %sw.bb289, label %NodeBlock182

NodeBlock182:                                     ; preds = %NodeBlock184
  %case.cmp183 = icmp eq i32 %conv82, 62
  br i1 %case.cmp183, label %sw.bb289, label %NodeBlock180

NodeBlock180:                                     ; preds = %NodeBlock182
  %case.cmp181 = icmp eq i32 %conv82, 91
  br i1 %case.cmp181, label %sw.bb289, label %NodeBlock178

NodeBlock178:                                     ; preds = %NodeBlock180
  %case.cmp179 = icmp eq i32 %conv82, 94
  br i1 %case.cmp179, label %sw.bb289, label %NodeBlock176

NodeBlock176:                                     ; preds = %NodeBlock178
  %case.cmp177 = icmp eq i32 %conv82, 96
  br i1 %case.cmp177, label %sw.bb289, label %NodeBlock174

NodeBlock174:                                     ; preds = %NodeBlock176
  %case.cmp175 = icmp eq i32 %conv82, 124
  br i1 %case.cmp175, label %sw.bb289, label %NodeBlock172

NodeBlock172:                                     ; preds = %NodeBlock174
  %case.cmp173 = icmp eq i32 %conv82, 39
  br i1 %case.cmp173, label %sw.bb297, label %NodeBlock170

NodeBlock170:                                     ; preds = %NodeBlock172
  %case.cmp171 = icmp eq i32 %conv82, 37
  br i1 %case.cmp171, label %sw.bb334, label %NodeBlock168

NodeBlock168:                                     ; preds = %NodeBlock170
  %case.cmp169 = icmp eq i32 %conv82, 43
  br i1 %case.cmp169, label %sw.bb334, label %NodeBlock166

NodeBlock166:                                     ; preds = %NodeBlock168
  %case.cmp167 = icmp eq i32 %conv82, 44
  br i1 %case.cmp167, label %sw.bb334, label %NodeBlock164

NodeBlock164:                                     ; preds = %NodeBlock166
  %case.cmp165 = icmp eq i32 %conv82, 45
  br i1 %case.cmp165, label %sw.bb334, label %NodeBlock162

NodeBlock162:                                     ; preds = %NodeBlock164
  %case.cmp163 = icmp eq i32 %conv82, 46
  br i1 %case.cmp163, label %sw.bb334, label %NodeBlock160

NodeBlock160:                                     ; preds = %NodeBlock162
  %case.cmp161 = icmp eq i32 %conv82, 47
  br i1 %case.cmp161, label %sw.bb334, label %NodeBlock158

NodeBlock158:                                     ; preds = %NodeBlock160
  %case.cmp159 = icmp eq i32 %conv82, 48
  br i1 %case.cmp159, label %sw.bb334, label %NodeBlock156

NodeBlock156:                                     ; preds = %NodeBlock158
  %case.cmp157 = icmp eq i32 %conv82, 49
  br i1 %case.cmp157, label %sw.bb334, label %NodeBlock154

NodeBlock154:                                     ; preds = %NodeBlock156
  %case.cmp155 = icmp eq i32 %conv82, 50
  br i1 %case.cmp155, label %sw.bb334, label %NodeBlock152

NodeBlock152:                                     ; preds = %NodeBlock154
  %case.cmp153 = icmp eq i32 %conv82, 51
  br i1 %case.cmp153, label %sw.bb334, label %NodeBlock150

NodeBlock150:                                     ; preds = %NodeBlock152
  %case.cmp151 = icmp eq i32 %conv82, 52
  br i1 %case.cmp151, label %sw.bb334, label %NodeBlock148

NodeBlock148:                                     ; preds = %NodeBlock150
  %case.cmp149 = icmp eq i32 %conv82, 53
  br i1 %case.cmp149, label %sw.bb334, label %NodeBlock146

NodeBlock146:                                     ; preds = %NodeBlock148
  %case.cmp147 = icmp eq i32 %conv82, 54
  br i1 %case.cmp147, label %sw.bb334, label %NodeBlock144

NodeBlock144:                                     ; preds = %NodeBlock146
  %case.cmp145 = icmp eq i32 %conv82, 55
  br i1 %case.cmp145, label %sw.bb334, label %NodeBlock142

NodeBlock142:                                     ; preds = %NodeBlock144
  %case.cmp143 = icmp eq i32 %conv82, 56
  br i1 %case.cmp143, label %sw.bb334, label %NodeBlock140

NodeBlock140:                                     ; preds = %NodeBlock142
  %case.cmp141 = icmp eq i32 %conv82, 57
  br i1 %case.cmp141, label %sw.bb334, label %NodeBlock138

NodeBlock138:                                     ; preds = %NodeBlock140
  %case.cmp139 = icmp eq i32 %conv82, 58
  br i1 %case.cmp139, label %sw.bb334, label %NodeBlock136

NodeBlock136:                                     ; preds = %NodeBlock138
  %case.cmp137 = icmp eq i32 %conv82, 65
  br i1 %case.cmp137, label %sw.bb334, label %NodeBlock134

NodeBlock134:                                     ; preds = %NodeBlock136
  %case.cmp135 = icmp eq i32 %conv82, 66
  br i1 %case.cmp135, label %sw.bb334, label %NodeBlock132

NodeBlock132:                                     ; preds = %NodeBlock134
  %case.cmp133 = icmp eq i32 %conv82, 67
  br i1 %case.cmp133, label %sw.bb334, label %NodeBlock130

NodeBlock130:                                     ; preds = %NodeBlock132
  %case.cmp131 = icmp eq i32 %conv82, 68
  br i1 %case.cmp131, label %sw.bb334, label %NodeBlock128

NodeBlock128:                                     ; preds = %NodeBlock130
  %case.cmp129 = icmp eq i32 %conv82, 69
  br i1 %case.cmp129, label %sw.bb334, label %NodeBlock126

NodeBlock126:                                     ; preds = %NodeBlock128
  %case.cmp127 = icmp eq i32 %conv82, 70
  br i1 %case.cmp127, label %sw.bb334, label %NodeBlock124

NodeBlock124:                                     ; preds = %NodeBlock126
  %case.cmp125 = icmp eq i32 %conv82, 71
  br i1 %case.cmp125, label %sw.bb334, label %NodeBlock122

NodeBlock122:                                     ; preds = %NodeBlock124
  %case.cmp123 = icmp eq i32 %conv82, 72
  br i1 %case.cmp123, label %sw.bb334, label %NodeBlock120

NodeBlock120:                                     ; preds = %NodeBlock122
  %case.cmp121 = icmp eq i32 %conv82, 73
  br i1 %case.cmp121, label %sw.bb334, label %NodeBlock118

NodeBlock118:                                     ; preds = %NodeBlock120
  %case.cmp119 = icmp eq i32 %conv82, 74
  br i1 %case.cmp119, label %sw.bb334, label %NodeBlock116

NodeBlock116:                                     ; preds = %NodeBlock118
  %case.cmp117 = icmp eq i32 %conv82, 75
  br i1 %case.cmp117, label %sw.bb334, label %NodeBlock114

NodeBlock114:                                     ; preds = %NodeBlock116
  %case.cmp115 = icmp eq i32 %conv82, 76
  br i1 %case.cmp115, label %sw.bb334, label %NodeBlock112

NodeBlock112:                                     ; preds = %NodeBlock114
  %case.cmp113 = icmp eq i32 %conv82, 77
  br i1 %case.cmp113, label %sw.bb334, label %NodeBlock110

NodeBlock110:                                     ; preds = %NodeBlock112
  %case.cmp111 = icmp eq i32 %conv82, 78
  br i1 %case.cmp111, label %sw.bb334, label %NodeBlock108

NodeBlock108:                                     ; preds = %NodeBlock110
  %case.cmp109 = icmp eq i32 %conv82, 79
  br i1 %case.cmp109, label %sw.bb334, label %NodeBlock106

NodeBlock106:                                     ; preds = %NodeBlock108
  %case.cmp107 = icmp eq i32 %conv82, 80
  br i1 %case.cmp107, label %sw.bb334, label %NodeBlock104

NodeBlock104:                                     ; preds = %NodeBlock106
  %case.cmp105 = icmp eq i32 %conv82, 81
  br i1 %case.cmp105, label %sw.bb334, label %NodeBlock102

NodeBlock102:                                     ; preds = %NodeBlock104
  %case.cmp103 = icmp eq i32 %conv82, 82
  br i1 %case.cmp103, label %sw.bb334, label %NodeBlock100

NodeBlock100:                                     ; preds = %NodeBlock102
  %case.cmp101 = icmp eq i32 %conv82, 83
  br i1 %case.cmp101, label %sw.bb334, label %NodeBlock98

NodeBlock98:                                      ; preds = %NodeBlock100
  %case.cmp99 = icmp eq i32 %conv82, 84
  br i1 %case.cmp99, label %sw.bb334, label %NodeBlock96

NodeBlock96:                                      ; preds = %NodeBlock98
  %case.cmp97 = icmp eq i32 %conv82, 85
  br i1 %case.cmp97, label %sw.bb334, label %NodeBlock94

NodeBlock94:                                      ; preds = %NodeBlock96
  %case.cmp95 = icmp eq i32 %conv82, 86
  br i1 %case.cmp95, label %sw.bb334, label %NodeBlock92

NodeBlock92:                                      ; preds = %NodeBlock94
  %case.cmp93 = icmp eq i32 %conv82, 87
  br i1 %case.cmp93, label %sw.bb334, label %NodeBlock90

NodeBlock90:                                      ; preds = %NodeBlock92
  %case.cmp91 = icmp eq i32 %conv82, 88
  br i1 %case.cmp91, label %sw.bb334, label %NodeBlock88

NodeBlock88:                                      ; preds = %NodeBlock90
  %case.cmp89 = icmp eq i32 %conv82, 89
  br i1 %case.cmp89, label %sw.bb334, label %NodeBlock86

NodeBlock86:                                      ; preds = %NodeBlock88
  %case.cmp87 = icmp eq i32 %conv82, 90
  br i1 %case.cmp87, label %sw.bb334, label %NodeBlock84

NodeBlock84:                                      ; preds = %NodeBlock86
  %case.cmp85 = icmp eq i32 %conv82, 93
  br i1 %case.cmp85, label %sw.bb334, label %NodeBlock82

NodeBlock82:                                      ; preds = %NodeBlock84
  %case.cmp83 = icmp eq i32 %conv82, 95
  br i1 %case.cmp83, label %sw.bb334, label %NodeBlock80

NodeBlock80:                                      ; preds = %NodeBlock82
  %case.cmp81 = icmp eq i32 %conv82, 97
  br i1 %case.cmp81, label %sw.bb334, label %NodeBlock78

NodeBlock78:                                      ; preds = %NodeBlock80
  %case.cmp79 = icmp eq i32 %conv82, 98
  br i1 %case.cmp79, label %sw.bb334, label %NodeBlock76

NodeBlock76:                                      ; preds = %NodeBlock78
  %case.cmp77 = icmp eq i32 %conv82, 99
  br i1 %case.cmp77, label %sw.bb334, label %NodeBlock74

NodeBlock74:                                      ; preds = %NodeBlock76
  %case.cmp75 = icmp eq i32 %conv82, 100
  br i1 %case.cmp75, label %sw.bb334, label %NodeBlock72

NodeBlock72:                                      ; preds = %NodeBlock74
  %case.cmp73 = icmp eq i32 %conv82, 101
  br i1 %case.cmp73, label %sw.bb334, label %NodeBlock70

NodeBlock70:                                      ; preds = %NodeBlock72
  %case.cmp71 = icmp eq i32 %conv82, 102
  br i1 %case.cmp71, label %sw.bb334, label %NodeBlock68

NodeBlock68:                                      ; preds = %NodeBlock70
  %case.cmp69 = icmp eq i32 %conv82, 103
  br i1 %case.cmp69, label %sw.bb334, label %NodeBlock66

NodeBlock66:                                      ; preds = %NodeBlock68
  %case.cmp67 = icmp eq i32 %conv82, 104
  br i1 %case.cmp67, label %sw.bb334, label %NodeBlock64

NodeBlock64:                                      ; preds = %NodeBlock66
  %case.cmp65 = icmp eq i32 %conv82, 105
  br i1 %case.cmp65, label %sw.bb334, label %NodeBlock62

NodeBlock62:                                      ; preds = %NodeBlock64
  %case.cmp63 = icmp eq i32 %conv82, 106
  br i1 %case.cmp63, label %sw.bb334, label %NodeBlock60

NodeBlock60:                                      ; preds = %NodeBlock62
  %case.cmp61 = icmp eq i32 %conv82, 107
  br i1 %case.cmp61, label %sw.bb334, label %NodeBlock58

NodeBlock58:                                      ; preds = %NodeBlock60
  %case.cmp59 = icmp eq i32 %conv82, 108
  br i1 %case.cmp59, label %sw.bb334, label %NodeBlock56

NodeBlock56:                                      ; preds = %NodeBlock58
  %case.cmp57 = icmp eq i32 %conv82, 109
  br i1 %case.cmp57, label %sw.bb334, label %NodeBlock54

NodeBlock54:                                      ; preds = %NodeBlock56
  %case.cmp55 = icmp eq i32 %conv82, 110
  br i1 %case.cmp55, label %sw.bb334, label %NodeBlock52

NodeBlock52:                                      ; preds = %NodeBlock54
  %case.cmp53 = icmp eq i32 %conv82, 111
  br i1 %case.cmp53, label %sw.bb334, label %NodeBlock50

NodeBlock50:                                      ; preds = %NodeBlock52
  %case.cmp51 = icmp eq i32 %conv82, 112
  br i1 %case.cmp51, label %sw.bb334, label %NodeBlock48

NodeBlock48:                                      ; preds = %NodeBlock50
  %case.cmp49 = icmp eq i32 %conv82, 113
  br i1 %case.cmp49, label %sw.bb334, label %NodeBlock46

NodeBlock46:                                      ; preds = %NodeBlock48
  %case.cmp47 = icmp eq i32 %conv82, 114
  br i1 %case.cmp47, label %sw.bb334, label %NodeBlock44

NodeBlock44:                                      ; preds = %NodeBlock46
  %case.cmp45 = icmp eq i32 %conv82, 115
  br i1 %case.cmp45, label %sw.bb334, label %NodeBlock42

NodeBlock42:                                      ; preds = %NodeBlock44
  %case.cmp43 = icmp eq i32 %conv82, 116
  br i1 %case.cmp43, label %sw.bb334, label %NodeBlock40

NodeBlock40:                                      ; preds = %NodeBlock42
  %case.cmp41 = icmp eq i32 %conv82, 117
  br i1 %case.cmp41, label %sw.bb334, label %NodeBlock38

NodeBlock38:                                      ; preds = %NodeBlock40
  %case.cmp39 = icmp eq i32 %conv82, 118
  br i1 %case.cmp39, label %sw.bb334, label %NodeBlock36

NodeBlock36:                                      ; preds = %NodeBlock38
  %case.cmp37 = icmp eq i32 %conv82, 119
  br i1 %case.cmp37, label %sw.bb334, label %NodeBlock34

NodeBlock34:                                      ; preds = %NodeBlock36
  %case.cmp35 = icmp eq i32 %conv82, 120
  br i1 %case.cmp35, label %sw.bb334, label %NodeBlock32

NodeBlock32:                                      ; preds = %NodeBlock34
  %case.cmp33 = icmp eq i32 %conv82, 121
  br i1 %case.cmp33, label %sw.bb334, label %NodeBlock30

NodeBlock30:                                      ; preds = %NodeBlock32
  %case.cmp31 = icmp eq i32 %conv82, 122
  br i1 %case.cmp31, label %sw.bb334, label %newDefault29

sw.bb83:                                          ; preds = %NodeBlock232
  %56 = load i8, i8* %backslash_escapes, align 1
  %tobool84 = trunc i8 %56 to i1
  br i1 %tobool84, label %do.body86, label %if.else

do.body86:                                        ; preds = %sw.bb83
  %57 = load i8, i8* %elide_outer_quotes, align 1
  %tobool87 = trunc i8 %57 to i1
  br i1 %tobool87, label %force_outer_quoting_style, label %if.end89

if.end89:                                         ; preds = %do.body86
  store i8 1, i8* %escaping, align 1
  %58 = load i32, i32* %quoting_style.addr, align 4
  %cmp90 = icmp eq i32 %58, 2
  br i1 %cmp90, label %land.lhs.true92, label %do.body120

land.lhs.true92:                                  ; preds = %if.end89
  %59 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool93 = trunc i8 %59 to i1
  br i1 %tobool93, label %do.body120, label %do.body95

do.body95:                                        ; preds = %land.lhs.true92
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
  %65 = load i64, i64* %len, align 8
  %66 = load i64, i64* %buffersize.addr, align 8
  %cmp104 = icmp ult i64 %65, %66
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end100
  %67 = load i8*, i8** %buffer.addr, align 8
  %68 = load i64, i64* %len, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 36, i8* %arrayidx107, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end100
  %69 = load i64, i64* %len, align 8
  %inc109 = add i64 %69, 1
  store i64 %inc109, i64* %len, align 8
  %70 = load i64, i64* %len, align 8
  %71 = load i64, i64* %buffersize.addr, align 8
  %cmp112 = icmp ult i64 %70, %71
  br i1 %cmp112, label %if.then114, label %if.end116

if.then114:                                       ; preds = %if.end108
  %72 = load i8*, i8** %buffer.addr, align 8
  %73 = load i64, i64* %len, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 39, i8* %arrayidx115, align 1
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.end108
  %74 = load i64, i64* %len, align 8
  %inc117 = add i64 %74, 1
  store i64 %inc117, i64* %len, align 8
  store i8 1, i8* %pending_shell_escape_end, align 1
  br label %do.body120

do.body120:                                       ; preds = %if.end89, %land.lhs.true92, %if.end116
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
  %80 = load i32, i32* %quoting_style.addr, align 4
  %cmp129 = icmp ne i32 %80, 2
  br i1 %cmp129, label %land.lhs.true131, label %if.end164

land.lhs.true131:                                 ; preds = %if.end125
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
  br i1 %cmp145, label %do.body148, label %if.end164

do.body148:                                       ; preds = %land.lhs.true141
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
  %94 = load i64, i64* %len, align 8
  %95 = load i64, i64* %buffersize.addr, align 8
  %cmp157 = icmp ult i64 %94, %95
  br i1 %cmp157, label %if.then159, label %if.end161

if.then159:                                       ; preds = %if.end153
  %96 = load i8*, i8** %buffer.addr, align 8
  %97 = load i64, i64* %len, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 48, i8* %arrayidx160, align 1
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.end153
  %98 = load i64, i64* %len, align 8
  %inc162 = add i64 %98, 1
  store i64 %inc162, i64* %len, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.end161, %land.lhs.true141, %land.lhs.true135, %land.lhs.true131, %if.end125
  store i8 48, i8* %c, align 1
  br label %sw.epilog564

if.else:                                          ; preds = %sw.bb83
  %99 = load i32, i32* %flags.addr, align 4
  %and165 = and i32 %99, 1
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %for.inc673, label %sw.epilog564

sw.bb170:                                         ; preds = %NodeBlock230
  %100 = load i32, i32* %quoting_style.addr, align 4
  br label %NodeBlock237

NodeBlock237:                                     ; preds = %sw.bb170
  %case.cmp238 = icmp eq i32 %100, 2
  br i1 %case.cmp238, label %sw.bb171, label %NodeBlock235

NodeBlock235:                                     ; preds = %NodeBlock237
  %case.cmp236 = icmp eq i32 %100, 5
  br i1 %case.cmp236, label %sw.bb175, label %newDefault234

sw.bb171:                                         ; preds = %NodeBlock237
  %101 = load i8, i8* %elide_outer_quotes, align 1
  %tobool172 = trunc i8 %101 to i1
  br i1 %tobool172, label %force_outer_quoting_style, label %sw.epilog564

sw.bb175:                                         ; preds = %NodeBlock235
  %102 = load i32, i32* %flags.addr, align 4
  %and176 = and i32 %102, 4
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %land.lhs.true178, label %sw.epilog564

land.lhs.true178:                                 ; preds = %sw.bb175
  %103 = load i64, i64* %i, align 8
  %add179 = add i64 %103, 2
  %104 = load i64, i64* %argsize.addr, align 8
  %cmp180 = icmp ult i64 %add179, %104
  br i1 %cmp180, label %land.lhs.true182, label %sw.epilog564

land.lhs.true182:                                 ; preds = %land.lhs.true178
  %105 = load i8*, i8** %arg.addr, align 8
  %106 = load i64, i64* %i, align 8
  %add183 = add i64 %106, 1
  %arrayidx184 = getelementptr inbounds i8, i8* %105, i64 %add183
  %107 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %107 to i32
  %cmp186 = icmp eq i32 %conv185, 63
  br i1 %cmp186, label %if.then188, label %sw.epilog564

if.then188:                                       ; preds = %land.lhs.true182
  %108 = load i8*, i8** %arg.addr, align 8
  %109 = load i64, i64* %i, align 8
  %add189 = add i64 %109, 2
  %arrayidx190 = getelementptr inbounds i8, i8* %108, i64 %add189
  %110 = load i8, i8* %arrayidx190, align 1
  %conv191 = sext i8 %110 to i32
  br label %NodeBlock256

NodeBlock256:                                     ; preds = %if.then188
  %case.cmp257 = icmp eq i32 %conv191, 33
  br i1 %case.cmp257, label %sw.bb192, label %NodeBlock254

NodeBlock254:                                     ; preds = %NodeBlock256
  %case.cmp255 = icmp eq i32 %conv191, 39
  br i1 %case.cmp255, label %sw.bb192, label %NodeBlock252

NodeBlock252:                                     ; preds = %NodeBlock254
  %case.cmp253 = icmp eq i32 %conv191, 40
  br i1 %case.cmp253, label %sw.bb192, label %NodeBlock250

NodeBlock250:                                     ; preds = %NodeBlock252
  %case.cmp251 = icmp eq i32 %conv191, 41
  br i1 %case.cmp251, label %sw.bb192, label %NodeBlock248

NodeBlock248:                                     ; preds = %NodeBlock250
  %case.cmp249 = icmp eq i32 %conv191, 45
  br i1 %case.cmp249, label %sw.bb192, label %NodeBlock246

NodeBlock246:                                     ; preds = %NodeBlock248
  %case.cmp247 = icmp eq i32 %conv191, 47
  br i1 %case.cmp247, label %sw.bb192, label %NodeBlock244

NodeBlock244:                                     ; preds = %NodeBlock246
  %case.cmp245 = icmp eq i32 %conv191, 60
  br i1 %case.cmp245, label %sw.bb192, label %NodeBlock242

NodeBlock242:                                     ; preds = %NodeBlock244
  %case.cmp243 = icmp eq i32 %conv191, 61
  br i1 %case.cmp243, label %sw.bb192, label %NodeBlock240

NodeBlock240:                                     ; preds = %NodeBlock242
  %case.cmp241 = icmp eq i32 %conv191, 62
  br i1 %case.cmp241, label %sw.bb192, label %newDefault239

sw.bb192:                                         ; preds = %NodeBlock256, %NodeBlock254, %NodeBlock252, %NodeBlock250, %NodeBlock248, %NodeBlock246, %NodeBlock244, %NodeBlock242, %NodeBlock240
  %111 = load i8, i8* %elide_outer_quotes, align 1
  %tobool193 = trunc i8 %111 to i1
  br i1 %tobool193, label %force_outer_quoting_style, label %if.end195

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
  %116 = load i64, i64* %len, align 8
  %117 = load i64, i64* %buffersize.addr, align 8
  %cmp200 = icmp ult i64 %116, %117
  br i1 %cmp200, label %if.then202, label %if.end204

if.then202:                                       ; preds = %if.end195
  %118 = load i8*, i8** %buffer.addr, align 8
  %119 = load i64, i64* %len, align 8
  %arrayidx203 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8 63, i8* %arrayidx203, align 1
  br label %if.end204

if.end204:                                        ; preds = %if.then202, %if.end195
  %120 = load i64, i64* %len, align 8
  %inc205 = add i64 %120, 1
  store i64 %inc205, i64* %len, align 8
  %121 = load i64, i64* %len, align 8
  %122 = load i64, i64* %buffersize.addr, align 8
  %cmp208 = icmp ult i64 %121, %122
  br i1 %cmp208, label %if.then210, label %if.end212

if.then210:                                       ; preds = %if.end204
  %123 = load i8*, i8** %buffer.addr, align 8
  %124 = load i64, i64* %len, align 8
  %arrayidx211 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 34, i8* %arrayidx211, align 1
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %if.end204
  %125 = load i64, i64* %len, align 8
  %inc213 = add i64 %125, 1
  store i64 %inc213, i64* %len, align 8
  %126 = load i64, i64* %len, align 8
  %127 = load i64, i64* %buffersize.addr, align 8
  %cmp216 = icmp ult i64 %126, %127
  br i1 %cmp216, label %if.then218, label %if.end220

if.then218:                                       ; preds = %if.end212
  %128 = load i8*, i8** %buffer.addr, align 8
  %129 = load i64, i64* %len, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 34, i8* %arrayidx219, align 1
  br label %if.end220

if.end220:                                        ; preds = %if.then218, %if.end212
  %130 = load i64, i64* %len, align 8
  %inc221 = add i64 %130, 1
  store i64 %inc221, i64* %len, align 8
  %131 = load i64, i64* %len, align 8
  %132 = load i64, i64* %buffersize.addr, align 8
  %cmp224 = icmp ult i64 %131, %132
  br i1 %cmp224, label %if.then226, label %if.end228

if.then226:                                       ; preds = %if.end220
  %133 = load i8*, i8** %buffer.addr, align 8
  %134 = load i64, i64* %len, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8 63, i8* %arrayidx227, align 1
  br label %if.end228

if.end228:                                        ; preds = %if.then226, %if.end220
  %135 = load i64, i64* %len, align 8
  %inc229 = add i64 %135, 1
  store i64 %inc229, i64* %len, align 8
  br label %sw.epilog564

sw.bb236:                                         ; preds = %NodeBlock228
  store i8 97, i8* %esc, align 1
  br label %c_escape

sw.bb237:                                         ; preds = %NodeBlock226
  store i8 98, i8* %esc, align 1
  br label %c_escape

sw.bb238:                                         ; preds = %NodeBlock224
  store i8 102, i8* %esc, align 1
  br label %c_escape

sw.bb239:                                         ; preds = %NodeBlock222
  store i8 110, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb240:                                         ; preds = %NodeBlock220
  store i8 114, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb241:                                         ; preds = %NodeBlock218
  store i8 116, i8* %esc, align 1
  br label %c_and_shell_escape

sw.bb242:                                         ; preds = %NodeBlock216
  store i8 118, i8* %esc, align 1
  br label %c_escape

sw.bb243:                                         ; preds = %NodeBlock214
  %136 = load i8, i8* %c, align 1
  store i8 %136, i8* %esc, align 1
  %137 = load i32, i32* %quoting_style.addr, align 4
  %cmp244 = icmp eq i32 %137, 2
  br i1 %cmp244, label %if.then246, label %if.end250

if.then246:                                       ; preds = %sw.bb243
  %138 = load i8, i8* %elide_outer_quotes, align 1
  %tobool247 = trunc i8 %138 to i1
  br i1 %tobool247, label %force_outer_quoting_style, label %do.body634

if.end250:                                        ; preds = %sw.bb243
  %139 = load i8, i8* %backslash_escapes, align 1
  %tobool251 = trunc i8 %139 to i1
  br i1 %tobool251, label %land.lhs.true253, label %c_and_shell_escape

land.lhs.true253:                                 ; preds = %if.end250
  %140 = load i8, i8* %elide_outer_quotes, align 1
  %tobool254 = trunc i8 %140 to i1
  %141 = load i64, i64* %quote_string_len, align 8
  %tobool257 = icmp ne i64 %141, 0
  %or.cond3 = and i1 %tobool254, %tobool257
  br i1 %or.cond3, label %do.body634, label %c_and_shell_escape

c_and_shell_escape:                               ; preds = %if.end250, %land.lhs.true253, %sw.bb241, %sw.bb240, %sw.bb239
  %142 = load i32, i32* %quoting_style.addr, align 4
  %cmp260 = icmp eq i32 %142, 2
  br i1 %cmp260, label %land.lhs.true262, label %c_escape

land.lhs.true262:                                 ; preds = %c_and_shell_escape
  %143 = load i8, i8* %elide_outer_quotes, align 1
  %tobool263 = trunc i8 %143 to i1
  br i1 %tobool263, label %force_outer_quoting_style, label %c_escape

c_escape:                                         ; preds = %c_and_shell_escape, %land.lhs.true262, %sw.bb242, %sw.bb238, %sw.bb237, %sw.bb236
  %144 = load i8, i8* %backslash_escapes, align 1
  %tobool267 = trunc i8 %144 to i1
  br i1 %tobool267, label %if.then268, label %sw.epilog564

if.then268:                                       ; preds = %c_escape
  %145 = load i8, i8* %esc, align 1
  store i8 %145, i8* %c, align 1
  br label %do.body586

sw.bb270:                                         ; preds = %NodeBlock212, %NodeBlock210
  %146 = load i64, i64* %argsize.addr, align 8
  %cmp271 = icmp eq i64 %146, -1
  br i1 %cmp271, label %cond.true273, label %cond.false278

cond.true273:                                     ; preds = %sw.bb270
  %147 = load i8*, i8** %arg.addr, align 8
  %arrayidx274 = getelementptr inbounds i8, i8* %147, i64 1
  %148 = load i8, i8* %arrayidx274, align 1
  %conv275 = sext i8 %148 to i32
  %cmp276 = icmp eq i32 %conv275, 0
  br i1 %cmp276, label %sw.bb283, label %sw.epilog564

cond.false278:                                    ; preds = %sw.bb270
  %149 = load i64, i64* %argsize.addr, align 8
  %cmp279 = icmp eq i64 %149, 1
  br i1 %cmp279, label %sw.bb283, label %sw.epilog564

sw.bb283:                                         ; preds = %NodeBlock208, %NodeBlock206, %cond.true273, %cond.false278
  %150 = load i64, i64* %i, align 8
  %cmp284 = icmp ne i64 %150, 0
  br i1 %cmp284, label %sw.epilog564, label %sw.bb288

sw.bb288:                                         ; preds = %NodeBlock204, %sw.bb283
  store i8 1, i8* %c_and_shell_quote_compat, align 1
  br label %sw.bb289

sw.bb289:                                         ; preds = %NodeBlock202, %NodeBlock200, %NodeBlock198, %NodeBlock196, %NodeBlock194, %NodeBlock192, %NodeBlock190, %NodeBlock188, %NodeBlock186, %NodeBlock184, %NodeBlock182, %NodeBlock180, %NodeBlock178, %NodeBlock176, %NodeBlock174, %sw.bb288
  %151 = load i32, i32* %quoting_style.addr, align 4
  %cmp290 = icmp eq i32 %151, 2
  br i1 %cmp290, label %land.lhs.true292, label %sw.epilog564

land.lhs.true292:                                 ; preds = %sw.bb289
  %152 = load i8, i8* %elide_outer_quotes, align 1
  %tobool293 = trunc i8 %152 to i1
  br i1 %tobool293, label %force_outer_quoting_style, label %sw.epilog564

sw.bb297:                                         ; preds = %NodeBlock172
  store i8 1, i8* %encountered_single_quote, align 1
  store i8 1, i8* %c_and_shell_quote_compat, align 1
  %153 = load i32, i32* %quoting_style.addr, align 4
  %cmp298 = icmp eq i32 %153, 2
  br i1 %cmp298, label %if.then300, label %sw.epilog564

if.then300:                                       ; preds = %sw.bb297
  %154 = load i8, i8* %elide_outer_quotes, align 1
  %tobool301 = trunc i8 %154 to i1
  br i1 %tobool301, label %force_outer_quoting_style, label %if.end303

if.end303:                                        ; preds = %if.then300
  %155 = load i64, i64* %buffersize.addr, align 8
  %tobool304 = icmp eq i64 %155, 0
  %156 = load i64, i64* %orig_buffersize, align 8
  %tobool306 = icmp ne i64 %156, 0
  %or.cond4 = or i1 %tobool304, %tobool306
  br i1 %or.cond4, label %do.body309, label %if.then307

if.then307:                                       ; preds = %if.end303
  %157 = load i64, i64* %buffersize.addr, align 8
  store i64 %157, i64* %orig_buffersize, align 8
  store i64 0, i64* %buffersize.addr, align 8
  br label %do.body309

do.body309:                                       ; preds = %if.then307, %if.end303
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
  %163 = load i64, i64* %len, align 8
  %164 = load i64, i64* %buffersize.addr, align 8
  %cmp318 = icmp ult i64 %163, %164
  br i1 %cmp318, label %if.then320, label %if.end322

if.then320:                                       ; preds = %if.end314
  %165 = load i8*, i8** %buffer.addr, align 8
  %166 = load i64, i64* %len, align 8
  %arrayidx321 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8 92, i8* %arrayidx321, align 1
  br label %if.end322

if.end322:                                        ; preds = %if.then320, %if.end314
  %167 = load i64, i64* %len, align 8
  %inc323 = add i64 %167, 1
  store i64 %inc323, i64* %len, align 8
  %168 = load i64, i64* %len, align 8
  %169 = load i64, i64* %buffersize.addr, align 8
  %cmp326 = icmp ult i64 %168, %169
  br i1 %cmp326, label %if.then328, label %if.end330

if.then328:                                       ; preds = %if.end322
  %170 = load i8*, i8** %buffer.addr, align 8
  %171 = load i64, i64* %len, align 8
  %arrayidx329 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8 39, i8* %arrayidx329, align 1
  br label %if.end330

if.end330:                                        ; preds = %if.then328, %if.end322
  %172 = load i64, i64* %len, align 8
  %inc331 = add i64 %172, 1
  store i64 %inc331, i64* %len, align 8
  store i8 0, i8* %pending_shell_escape_end, align 1
  br label %sw.epilog564

sw.bb334:                                         ; preds = %NodeBlock170, %NodeBlock168, %NodeBlock166, %NodeBlock164, %NodeBlock162, %NodeBlock160, %NodeBlock158, %NodeBlock156, %NodeBlock154, %NodeBlock152, %NodeBlock150, %NodeBlock148, %NodeBlock146, %NodeBlock144, %NodeBlock142, %NodeBlock140, %NodeBlock138, %NodeBlock136, %NodeBlock134, %NodeBlock132, %NodeBlock130, %NodeBlock128, %NodeBlock126, %NodeBlock124, %NodeBlock122, %NodeBlock120, %NodeBlock118, %NodeBlock116, %NodeBlock114, %NodeBlock112, %NodeBlock110, %NodeBlock108, %NodeBlock106, %NodeBlock104, %NodeBlock102, %NodeBlock100, %NodeBlock98, %NodeBlock96, %NodeBlock94, %NodeBlock92, %NodeBlock90, %NodeBlock88, %NodeBlock86, %NodeBlock84, %NodeBlock82, %NodeBlock80, %NodeBlock78, %NodeBlock76, %NodeBlock74, %NodeBlock72, %NodeBlock70, %NodeBlock68, %NodeBlock66, %NodeBlock64, %NodeBlock62, %NodeBlock60, %NodeBlock58, %NodeBlock56, %NodeBlock54, %NodeBlock52, %NodeBlock50, %NodeBlock48, %NodeBlock46, %NodeBlock44, %NodeBlock42, %NodeBlock40, %NodeBlock38, %NodeBlock36, %NodeBlock34, %NodeBlock32, %NodeBlock30
  store i8 1, i8* %c_and_shell_quote_compat, align 1
  br label %sw.epilog564

newDefault29:                                     ; preds = %NodeBlock30
  br label %sw.default335

sw.default335:                                    ; preds = %newDefault29
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
  %178 = call i8* @memset(i8* %177, i32 0, i64 8)
  store i64 0, i64* %m, align 8
  store i8 1, i8* %printable, align 1
  %179 = load i64, i64* %argsize.addr, align 8
  %cmp347 = icmp eq i64 %179, -1
  br i1 %cmp347, label %if.then349, label %if.end351

if.then349:                                       ; preds = %if.else346
  %180 = load i8*, i8** %arg.addr, align 8
  %call350 = call i64 @strlen(i8* %180) #13
  store i64 %call350, i64* %argsize.addr, align 8
  br label %if.end351

if.end351:                                        ; preds = %if.then349, %if.else346
  br label %do.body352

do.body352:                                       ; preds = %if.end401, %if.end351
  %181 = load i8*, i8** %arg.addr, align 8
  %182 = load i64, i64* %i, align 8
  %183 = load i64, i64* %m, align 8
  %add353 = add i64 %182, %183
  %arrayidx354 = getelementptr inbounds i8, i8* %181, i64 %add353
  %184 = load i64, i64* %argsize.addr, align 8
  %185 = load i64, i64* %i, align 8
  %186 = load i64, i64* %m, align 8
  %add355 = add i64 %185, %186
  %sub = sub i64 %184, %add355
  %call356 = call i64 @rpl_mbrtowc(i32* %w, i8* %arrayidx354, i64 %sub, %struct.__mbstate_t* %mbstate)
  store i64 %call356, i64* %bytes, align 8
  %187 = load i64, i64* %bytes, align 8
  %cmp357 = icmp eq i64 %187, 0
  br i1 %cmp357, label %if.end410, label %if.else360

if.else360:                                       ; preds = %do.body352
  %188 = load i64, i64* %bytes, align 8
  %cmp361 = icmp eq i64 %188, -1
  br i1 %cmp361, label %if.then363, label %if.else364

if.then363:                                       ; preds = %if.else360
  store i8 0, i8* %printable, align 1
  br label %if.end410

if.else364:                                       ; preds = %if.else360
  %189 = load i64, i64* %bytes, align 8
  %cmp365 = icmp eq i64 %189, -2
  br i1 %cmp365, label %if.then367, label %if.else376

if.then367:                                       ; preds = %if.else364
  store i8 0, i8* %printable, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then367
  %190 = load i64, i64* %i, align 8
  %191 = load i64, i64* %m, align 8
  %add368 = add i64 %190, %191
  %192 = load i64, i64* %argsize.addr, align 8
  %cmp369 = icmp ult i64 %add368, %192
  br i1 %cmp369, label %land.rhs, label %if.end410

land.rhs:                                         ; preds = %while.cond
  %193 = load i8*, i8** %arg.addr, align 8
  %194 = load i64, i64* %i, align 8
  %195 = load i64, i64* %m, align 8
  %add371 = add i64 %194, %195
  %arrayidx372 = getelementptr inbounds i8, i8* %193, i64 %add371
  %196 = load i8, i8* %arrayidx372, align 1
  %conv373 = sext i8 %196 to i32
  %tobool374 = icmp ne i32 %conv373, 0
  br i1 %tobool374, label %while.body, label %if.end410

while.body:                                       ; preds = %land.rhs
  %197 = load i64, i64* %m, align 8
  %inc375 = add i64 %197, 1
  store i64 %inc375, i64* %m, align 8
  br label %while.cond

if.else376:                                       ; preds = %if.else364
  %198 = load i8, i8* %elide_outer_quotes, align 1
  %tobool377 = trunc i8 %198 to i1
  %199 = load i32, i32* %quoting_style.addr, align 4
  %cmp380 = icmp eq i32 %199, 2
  %or.cond5 = and i1 %tobool377, %cmp380
  br i1 %or.cond5, label %if.then382, label %if.end397

if.then382:                                       ; preds = %if.else376
  store i64 1, i64* %j, align 8
  br label %for.cond383

for.cond383:                                      ; preds = %for.inc394, %if.then382
  %200 = load i64, i64* %j, align 8
  %201 = load i64, i64* %bytes, align 8
  %cmp384 = icmp ult i64 %200, %201
  br i1 %cmp384, label %for.body386, label %if.end397

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
  br label %NodeBlock267

NodeBlock267:                                     ; preds = %for.body386
  %case.cmp268 = icmp eq i32 %conv390, 91
  br i1 %case.cmp268, label %force_outer_quoting_style, label %NodeBlock265

NodeBlock265:                                     ; preds = %NodeBlock267
  %case.cmp266 = icmp eq i32 %conv390, 92
  br i1 %case.cmp266, label %force_outer_quoting_style, label %NodeBlock263

NodeBlock263:                                     ; preds = %NodeBlock265
  %case.cmp264 = icmp eq i32 %conv390, 94
  br i1 %case.cmp264, label %force_outer_quoting_style, label %NodeBlock261

NodeBlock261:                                     ; preds = %NodeBlock263
  %case.cmp262 = icmp eq i32 %conv390, 96
  br i1 %case.cmp262, label %force_outer_quoting_style, label %NodeBlock259

NodeBlock259:                                     ; preds = %NodeBlock261
  %case.cmp260 = icmp eq i32 %conv390, 124
  br i1 %case.cmp260, label %force_outer_quoting_style, label %newDefault258

newDefault258:                                    ; preds = %NodeBlock259
  br label %for.inc394

for.inc394:                                       ; preds = %newDefault258
  %207 = load i64, i64* %j, align 8
  %inc395 = add i64 %207, 1
  store i64 %inc395, i64* %j, align 8
  br label %for.cond383

if.end397:                                        ; preds = %for.cond383, %if.else376
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
  %call406 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #13
  %tobool407 = icmp ne i32 %call406, 0
  %lnot408 = xor i1 %tobool407, true
  br i1 %lnot408, label %do.body352, label %if.end410

if.end410:                                        ; preds = %if.then363, %if.end401, %do.body352, %while.cond, %land.rhs, %if.then337
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
  br i1 %tobool415, label %land.lhs.true417, label %sw.epilog564

land.lhs.true417:                                 ; preds = %lor.lhs.false
  %214 = load i8, i8* %printable, align 1
  %tobool418 = trunc i8 %214 to i1
  br i1 %tobool418, label %sw.epilog564, label %if.then419

if.then419:                                       ; preds = %land.lhs.true417, %if.end410
  %215 = load i64, i64* %i, align 8
  %216 = load i64, i64* %m, align 8
  %add420 = add i64 %215, %216
  store i64 %add420, i64* %ilim, align 8
  br label %for.cond421

for.cond421:                                      ; preds = %if.end556, %if.then419
  %217 = load i8, i8* %backslash_escapes, align 1
  %tobool422 = trunc i8 %217 to i1
  br i1 %tobool422, label %land.lhs.true424, label %if.else505

land.lhs.true424:                                 ; preds = %for.cond421
  %218 = load i8, i8* %printable, align 1
  %tobool425 = trunc i8 %218 to i1
  br i1 %tobool425, label %if.else505, label %do.body427

do.body427:                                       ; preds = %land.lhs.true424
  %219 = load i8, i8* %elide_outer_quotes, align 1
  %tobool428 = trunc i8 %219 to i1
  br i1 %tobool428, label %force_outer_quoting_style, label %if.end430

if.end430:                                        ; preds = %do.body427
  store i8 1, i8* %escaping, align 1
  %220 = load i32, i32* %quoting_style.addr, align 4
  %cmp431 = icmp eq i32 %220, 2
  br i1 %cmp431, label %land.lhs.true433, label %do.body464

land.lhs.true433:                                 ; preds = %if.end430
  %221 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool434 = trunc i8 %221 to i1
  br i1 %tobool434, label %do.body464, label %do.body436

do.body436:                                       ; preds = %land.lhs.true433
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
  %227 = load i64, i64* %len, align 8
  %228 = load i64, i64* %buffersize.addr, align 8
  %cmp446 = icmp ult i64 %227, %228
  br i1 %cmp446, label %if.then448, label %if.end450

if.then448:                                       ; preds = %if.end441
  %229 = load i8*, i8** %buffer.addr, align 8
  %230 = load i64, i64* %len, align 8
  %arrayidx449 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 36, i8* %arrayidx449, align 1
  br label %if.end450

if.end450:                                        ; preds = %if.then448, %if.end441
  %231 = load i64, i64* %len, align 8
  %inc451 = add i64 %231, 1
  store i64 %inc451, i64* %len, align 8
  %232 = load i64, i64* %len, align 8
  %233 = load i64, i64* %buffersize.addr, align 8
  %cmp455 = icmp ult i64 %232, %233
  br i1 %cmp455, label %if.then457, label %if.end459

if.then457:                                       ; preds = %if.end450
  %234 = load i8*, i8** %buffer.addr, align 8
  %235 = load i64, i64* %len, align 8
  %arrayidx458 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8 39, i8* %arrayidx458, align 1
  br label %if.end459

if.end459:                                        ; preds = %if.then457, %if.end450
  %236 = load i64, i64* %len, align 8
  %inc460 = add i64 %236, 1
  store i64 %inc460, i64* %len, align 8
  store i8 1, i8* %pending_shell_escape_end, align 1
  br label %do.body464

do.body464:                                       ; preds = %if.end430, %land.lhs.true433, %if.end459
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
  %242 = load i64, i64* %len, align 8
  %243 = load i64, i64* %buffersize.addr, align 8
  %cmp476 = icmp ult i64 %242, %243
  br i1 %cmp476, label %if.then478, label %if.end483

if.then478:                                       ; preds = %if.end469
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

if.end483:                                        ; preds = %if.then478, %if.end469
  %247 = load i64, i64* %len, align 8
  %inc484 = add i64 %247, 1
  store i64 %inc484, i64* %len, align 8
  %248 = load i64, i64* %len, align 8
  %249 = load i64, i64* %buffersize.addr, align 8
  %cmp488 = icmp ult i64 %248, %249
  br i1 %cmp488, label %if.then490, label %if.end497

if.then490:                                       ; preds = %if.end483
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

if.end497:                                        ; preds = %if.then490, %if.end483
  %253 = load i64, i64* %len, align 8
  %inc498 = add i64 %253, 1
  store i64 %inc498, i64* %len, align 8
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
  br i1 %tobool506, label %do.body508, label %if.end518

do.body508:                                       ; preds = %if.else505
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
  store i8 0, i8* %is_right_quote, align 1
  br label %if.end518

if.end518:                                        ; preds = %if.else505, %if.end513, %if.end497
  %261 = load i64, i64* %ilim, align 8
  %262 = load i64, i64* %i, align 8
  %add519 = add i64 %262, 1
  %cmp520 = icmp ule i64 %261, %add519
  br i1 %cmp520, label %do.body634, label %do.body524

do.body524:                                       ; preds = %if.end518
  %263 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool525 = trunc i8 %263 to i1
  br i1 %tobool525, label %land.lhs.true527, label %do.body551

land.lhs.true527:                                 ; preds = %do.body524
  %264 = load i8, i8* %escaping, align 1
  %tobool528 = trunc i8 %264 to i1
  br i1 %tobool528, label %do.body551, label %do.body530

do.body530:                                       ; preds = %land.lhs.true527
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
  %270 = load i64, i64* %len, align 8
  %271 = load i64, i64* %buffersize.addr, align 8
  %cmp540 = icmp ult i64 %270, %271
  br i1 %cmp540, label %if.then542, label %if.end544

if.then542:                                       ; preds = %if.end535
  %272 = load i8*, i8** %buffer.addr, align 8
  %273 = load i64, i64* %len, align 8
  %arrayidx543 = getelementptr inbounds i8, i8* %272, i64 %273
  store i8 39, i8* %arrayidx543, align 1
  br label %if.end544

if.end544:                                        ; preds = %if.then542, %if.end535
  %274 = load i64, i64* %len, align 8
  %inc545 = add i64 %274, 1
  store i64 %inc545, i64* %len, align 8
  store i8 0, i8* %pending_shell_escape_end, align 1
  br label %do.body551

do.body551:                                       ; preds = %if.end544, %land.lhs.true527, %do.body524
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
  %281 = load i8*, i8** %arg.addr, align 8
  %282 = load i64, i64* %i, align 8
  %inc560 = add i64 %282, 1
  store i64 %inc560, i64* %i, align 8
  %arrayidx561 = getelementptr inbounds i8, i8* %281, i64 %inc560
  %283 = load i8, i8* %arrayidx561, align 1
  store i8 %283, i8* %c, align 1
  br label %for.cond421

newDefault234:                                    ; preds = %NodeBlock235
  br label %sw.epilog564

newDefault239:                                    ; preds = %NodeBlock240
  br label %sw.epilog564

sw.epilog564:                                     ; preds = %newDefault239, %newDefault234, %lor.lhs.false, %land.lhs.true417, %sw.bb297, %if.end330, %sw.bb289, %land.lhs.true292, %sw.bb283, %cond.true273, %cond.false278, %c_escape, %sw.bb171, %if.end228, %land.lhs.true182, %land.lhs.true178, %sw.bb175, %if.end164, %if.else, %sw.bb334
  %284 = load i8, i8* %backslash_escapes, align 1
  %tobool565 = trunc i8 %284 to i1
  %285 = load i32, i32* %quoting_style.addr, align 4
  %cmp568 = icmp ne i32 %285, 2
  %or.cond6 = and i1 %tobool565, %cmp568
  br i1 %or.cond6, label %land.lhs.true573, label %lor.lhs.false570

lor.lhs.false570:                                 ; preds = %sw.epilog564
  %286 = load i8, i8* %elide_outer_quotes, align 1
  %tobool571 = trunc i8 %286 to i1
  br i1 %tobool571, label %land.lhs.true573, label %land.lhs.true582

land.lhs.true573:                                 ; preds = %sw.epilog564, %lor.lhs.false570
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
  br i1 %tobool581, label %do.body586, label %land.lhs.true582

land.lhs.true582:                                 ; preds = %land.lhs.true575, %land.lhs.true573, %lor.lhs.false570
  %292 = load i8, i8* %is_right_quote, align 1
  %tobool583 = trunc i8 %292 to i1
  br i1 %tobool583, label %do.body586, label %do.body634

do.body586:                                       ; preds = %if.then268, %land.lhs.true582, %land.lhs.true575
  %293 = load i8, i8* %elide_outer_quotes, align 1
  %tobool587 = trunc i8 %293 to i1
  br i1 %tobool587, label %force_outer_quoting_style, label %if.end589

if.end589:                                        ; preds = %do.body586
  store i8 1, i8* %escaping, align 1
  %294 = load i32, i32* %quoting_style.addr, align 4
  %cmp590 = icmp eq i32 %294, 2
  br i1 %cmp590, label %land.lhs.true592, label %do.body623

land.lhs.true592:                                 ; preds = %if.end589
  %295 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool593 = trunc i8 %295 to i1
  br i1 %tobool593, label %do.body623, label %do.body595

do.body595:                                       ; preds = %land.lhs.true592
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
  %301 = load i64, i64* %len, align 8
  %302 = load i64, i64* %buffersize.addr, align 8
  %cmp605 = icmp ult i64 %301, %302
  br i1 %cmp605, label %if.then607, label %if.end609

if.then607:                                       ; preds = %if.end600
  %303 = load i8*, i8** %buffer.addr, align 8
  %304 = load i64, i64* %len, align 8
  %arrayidx608 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8 36, i8* %arrayidx608, align 1
  br label %if.end609

if.end609:                                        ; preds = %if.then607, %if.end600
  %305 = load i64, i64* %len, align 8
  %inc610 = add i64 %305, 1
  store i64 %inc610, i64* %len, align 8
  %306 = load i64, i64* %len, align 8
  %307 = load i64, i64* %buffersize.addr, align 8
  %cmp614 = icmp ult i64 %306, %307
  br i1 %cmp614, label %if.then616, label %if.end618

if.then616:                                       ; preds = %if.end609
  %308 = load i8*, i8** %buffer.addr, align 8
  %309 = load i64, i64* %len, align 8
  %arrayidx617 = getelementptr inbounds i8, i8* %308, i64 %309
  store i8 39, i8* %arrayidx617, align 1
  br label %if.end618

if.end618:                                        ; preds = %if.then616, %if.end609
  %310 = load i64, i64* %len, align 8
  %inc619 = add i64 %310, 1
  store i64 %inc619, i64* %len, align 8
  store i8 1, i8* %pending_shell_escape_end, align 1
  br label %do.body623

do.body623:                                       ; preds = %if.end589, %land.lhs.true592, %if.end618
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
  br label %do.body634

do.body634:                                       ; preds = %if.end628, %if.then246, %land.lhs.true253, %if.end518, %land.lhs.true582
  %316 = load i8, i8* %pending_shell_escape_end, align 1
  %tobool635 = trunc i8 %316 to i1
  br i1 %tobool635, label %land.lhs.true637, label %do.body661

land.lhs.true637:                                 ; preds = %do.body634
  %317 = load i8, i8* %escaping, align 1
  %tobool638 = trunc i8 %317 to i1
  br i1 %tobool638, label %do.body661, label %do.body640

do.body640:                                       ; preds = %land.lhs.true637
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
  %323 = load i64, i64* %len, align 8
  %324 = load i64, i64* %buffersize.addr, align 8
  %cmp650 = icmp ult i64 %323, %324
  br i1 %cmp650, label %if.then652, label %if.end654

if.then652:                                       ; preds = %if.end645
  %325 = load i8*, i8** %buffer.addr, align 8
  %326 = load i64, i64* %len, align 8
  %arrayidx653 = getelementptr inbounds i8, i8* %325, i64 %326
  store i8 39, i8* %arrayidx653, align 1
  br label %if.end654

if.end654:                                        ; preds = %if.then652, %if.end645
  %327 = load i64, i64* %len, align 8
  %inc655 = add i64 %327, 1
  store i64 %inc655, i64* %len, align 8
  store i8 0, i8* %pending_shell_escape_end, align 1
  br label %do.body661

do.body661:                                       ; preds = %if.end654, %land.lhs.true637, %do.body634
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
  %334 = load i8, i8* %c_and_shell_quote_compat, align 1
  %tobool670 = trunc i8 %334 to i1
  br i1 %tobool670, label %for.inc673, label %if.then671

if.then671:                                       ; preds = %if.end666
  store i8 0, i8* %all_c_and_shell_quote_compat, align 1
  br label %for.inc673

for.inc673:                                       ; preds = %if.end666, %if.then671, %if.else
  %335 = load i64, i64* %i, align 8
  %inc674 = add i64 %335, 1
  store i64 %inc674, i64* %i, align 8
  br label %for.cond44

for.end675:                                       ; preds = %cond.end
  %336 = load i64, i64* %len, align 8
  %cmp676 = icmp eq i64 %336, 0
  %337 = load i32, i32* %quoting_style.addr, align 4
  %cmp679 = icmp eq i32 %337, 2
  %or.cond7 = and i1 %cmp676, %cmp679
  br i1 %or.cond7, label %land.lhs.true681, label %if.end685

land.lhs.true681:                                 ; preds = %for.end675
  %338 = load i8, i8* %elide_outer_quotes, align 1
  %tobool682 = trunc i8 %338 to i1
  br i1 %tobool682, label %force_outer_quoting_style, label %if.end685

if.end685:                                        ; preds = %land.lhs.true681, %for.end675
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
  %tobool698 = icmp eq i64 %351, 0
  %352 = load i64, i64* %orig_buffersize, align 8
  %tobool700 = icmp ne i64 %352, 0
  %or.cond8 = and i1 %tobool698, %tobool700
  br i1 %or.cond8, label %if.then701, label %if.end704

if.then701:                                       ; preds = %if.else697
  %353 = load i64, i64* %orig_buffersize, align 8
  store i64 %353, i64* %buffersize.addr, align 8
  store i64 0, i64* %len, align 8
  br label %process_input

if.end704:                                        ; preds = %if.else697, %land.lhs.true690, %land.lhs.true688, %if.end685
  %354 = load i8*, i8** %quote_string, align 8
  %tobool705 = icmp ne i8* %354, null
  br i1 %tobool705, label %land.lhs.true706, label %if.end724

land.lhs.true706:                                 ; preds = %if.end704
  %355 = load i8, i8* %elide_outer_quotes, align 1
  %tobool707 = trunc i8 %355 to i1
  br i1 %tobool707, label %if.end724, label %for.cond709

for.cond709:                                      ; preds = %land.lhs.true706, %if.end717
  %356 = load i8*, i8** %quote_string, align 8
  %357 = load i8, i8* %356, align 1
  %tobool710 = icmp ne i8 %357, 0
  br i1 %tobool710, label %do.body712, label %if.end724

do.body712:                                       ; preds = %for.cond709
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
  %365 = load i8*, i8** %quote_string, align 8
  %incdec.ptr722 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %incdec.ptr722, i8** %quote_string, align 8
  br label %for.cond709

if.end724:                                        ; preds = %for.cond709, %land.lhs.true706, %if.end704
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

force_outer_quoting_style:                        ; preds = %NodeBlock267, %NodeBlock265, %NodeBlock263, %NodeBlock261, %NodeBlock259, %land.lhs.true681, %do.body586, %do.body427, %if.then300, %land.lhs.true292, %land.lhs.true262, %if.then246, %sw.bb192, %sw.bb171, %do.body86, %if.then76
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
  %call1 = call i32 @c_strcasecmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.65, i64 0, i64 0)) #13
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %5 = load i8*, i8** %msgid.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 96
  %7 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.66, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.67, i64 0, i64 0)
  store i8* %cond, i8** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load i8*, i8** %locale_code, align 8
  %call7 = call i32 @c_strcasecmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.68, i64 0, i64 0)) #13
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end6
  %9 = load i8*, i8** %msgid.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp eq i32 %conv12, 96
  %11 = zext i1 %cmp13 to i64
  %cond15 = select i1 %cmp13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.70, i64 0, i64 0)
  store i8* %cond15, i8** %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end6
  %12 = load i32, i32* %s.addr, align 4
  %cmp17 = icmp eq i32 %12, 9
  %13 = zext i1 %cmp17 to i64
  %cond19 = select i1 %cmp17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.64, i64 0, i64 0)
  store i8* %cond19, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then10, %if.then3, %if.then
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

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
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8
  %cond = select i1 %tobool, %struct.quoting_options* %1, %struct.quoting_options* @default_quoting_options
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

if.then:                                          ; preds = %entry
  %32 = load i64, i64* %bufsize, align 8
  %sub = sub i64 %32, 1
  %33 = load i64*, i64** %size.addr, align 8
  store i64 %sub, i64* %33, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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

for.cond:                                         ; preds = %for.body, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @nslots, align 4
  %cmp = icmp slt i32 %1, %2
  %3 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %3, i64 %idxprom
  %val = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 1
  %5 = load i8*, i8** %val, align 8
  call void @free(i8* %5) #11
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %3, i64 0
  %val2 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx1, i32 0, i32 1
  %7 = load i8*, i8** %val2, align 8
  %cmp3 = icmp ne i8* %7, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %arrayidx4 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %8, i64 0
  %val5 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx4, i32 0, i32 1
  %9 = load i8*, i8** %val5, align 8
  call void @free(i8* %9) #11
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %10 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %cmp6 = icmp ne %struct.slotvec* %10, @slotvec0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %11 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %12 = bitcast %struct.slotvec* %11 to i8*
  call void @free(i8* %12) #11
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 1, i32* @nslots, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

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
  %9 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %cond = select i1 %tobool, %struct.slotvec* null, %struct.slotvec* %9
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

if.then9:                                         ; preds = %if.end6
  %14 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %15 = bitcast %struct.slotvec* %14 to i8*
  %16 = call i8* @memcpy(i8* %15, i8* bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %17 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %18 = load i32, i32* @nslots, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds %struct.slotvec, %struct.slotvec* %17, i64 %idx.ext
  %19 = bitcast %struct.slotvec* %add.ptr to i8*
  %20 = load i32, i32* %n.addr, align 4
  %add11 = add nsw i32 %20, 1
  %21 = load i32, i32* @nslots, align 4
  %sub = sub nsw i32 %add11, %21
  %conv12 = sext i32 %sub to i64
  %mul13 = mul i64 %conv12, 16
  %22 = call i8* @memset(i8* %19, i32 0, i64 %mul13)
  %23 = load i32, i32* %n.addr, align 4
  %add14 = add nsw i32 %23, 1
  store i32 %add14, i32* @nslots, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end10, %if.end
  %24 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %25 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %idxprom
  %size16 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 0
  %26 = load i64, i64* %size16, align 8
  store i64 %26, i64* %size, align 8
  %27 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %28 = load i32, i32* %n.addr, align 4
  %idxprom17 = sext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %27, i64 %idxprom17
  %val19 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx18, i32 0, i32 1
  %29 = load i8*, i8** %val19, align 8
  store i8* %29, i8** %val, align 8
  %30 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %flags20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 1
  %31 = load i32, i32* %flags20, align 4
  %or = or i32 %31, 1
  store i32 %or, i32* %flags, align 4
  %32 = load i8*, i8** %val, align 8
  %33 = load i64, i64* %size, align 8
  %34 = load i8*, i8** %arg.addr, align 8
  %35 = load i64, i64* %argsize.addr, align 8
  %36 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %36, i32 0, i32 0
  %37 = load i32, i32* %style, align 8
  %38 = load i32, i32* %flags, align 4
  %39 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %40 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %40, i32 0, i32 3
  %41 = load i8*, i8** %left_quote, align 8
  %42 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %42, i32 0, i32 4
  %43 = load i8*, i8** %right_quote, align 8
  %call21 = call i64 @quotearg_buffer_restyled(i8* %32, i64 %33, i8* %34, i64 %35, i32 %37, i32 %38, i32* %arraydecay, i8* %41, i8* %43)
  store i64 %call21, i64* %qsize, align 8
  %44 = load i64, i64* %size, align 8
  %45 = load i64, i64* %qsize, align 8
  %cmp22 = icmp ule i64 %44, %45
  br i1 %cmp22, label %if.then24, label %if.end43

if.then24:                                        ; preds = %if.end15
  %46 = load i64, i64* %qsize, align 8
  %add25 = add i64 %46, 1
  store i64 %add25, i64* %size, align 8
  %47 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %48 = load i32, i32* %n.addr, align 4
  %idxprom26 = sext i32 %48 to i64
  %arrayidx27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %47, i64 %idxprom26
  %size28 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx27, i32 0, i32 0
  store i64 %add25, i64* %size28, align 8
  %49 = load i8*, i8** %val, align 8
  %cmp29 = icmp ne i8* %49, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then24
  %50 = load i8*, i8** %val, align 8
  call void @free(i8* %50) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then24
  %51 = load i64, i64* %size, align 8
  %call33 = call noalias i8* @xcharalloc(i64 %51)
  store i8* %call33, i8** %val, align 8
  %52 = load %struct.slotvec*, %struct.slotvec** %sv, align 8
  %53 = load i32, i32* %n.addr, align 4
  %idxprom34 = sext i32 %53 to i64
  %arrayidx35 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %52, i64 %idxprom34
  %val36 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx35, i32 0, i32 1
  store i8* %call33, i8** %val36, align 8
  %54 = load i8*, i8** %val, align 8
  %55 = load i64, i64* %size, align 8
  %56 = load i8*, i8** %arg.addr, align 8
  %57 = load i64, i64* %argsize.addr, align 8
  %58 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %style37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %58, i32 0, i32 0
  %59 = load i32, i32* %style37, align 8
  %60 = load i32, i32* %flags, align 4
  %61 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %quote_these_too38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %61, i32 0, i32 2
  %arraydecay39 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too38, i64 0, i64 0
  %62 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %left_quote40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %62, i32 0, i32 3
  %63 = load i8*, i8** %left_quote40, align 8
  %64 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8
  %right_quote41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %64, i32 0, i32 4
  %65 = load i8*, i8** %right_quote41, align 8
  %call42 = call i64 @quotearg_buffer_restyled(i8* %54, i64 %55, i8* %56, i64 %57, i32 %59, i32 %60, i32* %arraydecay39, i8* %63, i8* %65)
  br label %if.end43

if.end43:                                         ; preds = %if.end32, %if.end15
  %66 = load i32, i32* %e, align 4
  %call44 = call i32* @__errno_location() #15
  store i32 %66, i32* %call44, align 4
  %67 = load i8*, i8** %val, align 8
  ret i8* %67
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
  %1 = call i8* @memset(i8* %0, i32 0, i64 56)
  %2 = load i32, i32* %style.addr, align 4
  %cmp = icmp eq i32 %2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #12
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %style.addr, align 4
  %style1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %agg.result, i32 0, i32 0
  store i32 %3, i32* %style1, align 8
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
  %1 = call i8* @memcpy(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56)
  %2 = load i8, i8* %ch.addr, align 1
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %2, i32 1)
  %3 = load i8*, i8** %arg.addr, align 8
  %4 = load i64, i64* %argsize.addr, align 8
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %3, i64 %4, %struct.quoting_options* %options)
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
  %3 = call i8* @memcpy(i8* %1, i8* %2, i64 56)
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext 58, i32 1)
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i8*, i8** %arg.addr, align 8
  %call1 = call i8* @quotearg_n_options(i32 %4, i8* %5, i64 -1, %struct.quoting_options* %options)
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
  %1 = call i8* @memcpy(i8* %0, i8* bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56)
  %2 = load i8*, i8** %left_quote.addr, align 8
  %3 = load i8*, i8** %right_quote.addr, align 8
  call void @set_custom_quoting(%struct.quoting_options* %o, i8* %2, i8* %3)
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i8*, i8** %arg.addr, align 8
  %6 = load i64, i64* %argsize.addr, align 8
  %call = call i8* @quotearg_n_options(i32 %4, i8* %5, i64 %6, %struct.quoting_options* %o)
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
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %command_name.addr, align 8
  %3 = load i8*, i8** %package.addr, align 8
  %4 = load i8*, i8** %version.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* %2, i8* %3, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %package.addr, align 8
  %6 = load i8*, i8** %version.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 2020)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.77, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.78, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %10)
  %11 = load i64, i64* %n_authors.addr, align 8
  br label %NodeBlock17

NodeBlock17:                                      ; preds = %if.end
  %case.cmp18 = icmp eq i64 %11, 0
  br i1 %case.cmp18, label %sw.epilog, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %case.cmp16 = icmp eq i64 %11, 1
  br i1 %case.cmp16, label %sw.bb6, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %case.cmp14 = icmp eq i64 %11, 2
  br i1 %case.cmp14, label %sw.bb8, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %case.cmp12 = icmp eq i64 %11, 3
  br i1 %case.cmp12, label %sw.bb12, label %NodeBlock9

NodeBlock9:                                       ; preds = %NodeBlock11
  %case.cmp10 = icmp eq i64 %11, 4
  br i1 %case.cmp10, label %sw.bb17, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %case.cmp8 = icmp eq i64 %11, 5
  br i1 %case.cmp8, label %sw.bb23, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %case.cmp6 = icmp eq i64 %11, 6
  br i1 %case.cmp6, label %sw.bb30, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %case.cmp4 = icmp eq i64 %11, 7
  br i1 %case.cmp4, label %sw.bb38, label %NodeBlock1

NodeBlock1:                                       ; preds = %NodeBlock3
  %case.cmp2 = icmp eq i64 %11, 8
  br i1 %case.cmp2, label %sw.bb47, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock1
  %case.cmp = icmp eq i64 %11, 9
  br i1 %case.cmp, label %sw.bb57, label %newDefault

sw.bb6:                                           ; preds = %NodeBlock15
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %13 = load i8**, i8*** %authors.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.79, i64 0, i64 0), i8* %14)
  br label %sw.epilog

sw.bb8:                                           ; preds = %NodeBlock13
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %16 = load i8**, i8*** %authors.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx9, align 8
  %18 = load i8**, i8*** %authors.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.80, i64 0, i64 0), i8* %17, i8* %19)
  br label %sw.epilog

sw.bb12:                                          ; preds = %NodeBlock11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %21 = load i8**, i8*** %authors.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx13, align 8
  %23 = load i8**, i8*** %authors.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %23, i64 1
  %24 = load i8*, i8** %arrayidx14, align 8
  %25 = load i8**, i8*** %authors.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %25, i64 2
  %26 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.81, i64 0, i64 0), i8* %22, i8* %24, i8* %26)
  br label %sw.epilog

sw.bb17:                                          ; preds = %NodeBlock9
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %28 = load i8**, i8*** %authors.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx18, align 8
  %30 = load i8**, i8*** %authors.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %30, i64 1
  %31 = load i8*, i8** %arrayidx19, align 8
  %32 = load i8**, i8*** %authors.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %32, i64 2
  %33 = load i8*, i8** %arrayidx20, align 8
  %34 = load i8**, i8*** %authors.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %34, i64 3
  %35 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.82, i64 0, i64 0), i8* %29, i8* %31, i8* %33, i8* %35)
  br label %sw.epilog

sw.bb23:                                          ; preds = %NodeBlock7
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %37 = load i8**, i8*** %authors.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx24, align 8
  %39 = load i8**, i8*** %authors.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %39, i64 1
  %40 = load i8*, i8** %arrayidx25, align 8
  %41 = load i8**, i8*** %authors.addr, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %41, i64 2
  %42 = load i8*, i8** %arrayidx26, align 8
  %43 = load i8**, i8*** %authors.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %43, i64 3
  %44 = load i8*, i8** %arrayidx27, align 8
  %45 = load i8**, i8*** %authors.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %45, i64 4
  %46 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.83, i64 0, i64 0), i8* %38, i8* %40, i8* %42, i8* %44, i8* %46)
  br label %sw.epilog

sw.bb30:                                          ; preds = %NodeBlock5
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %48 = load i8**, i8*** %authors.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %48, i64 0
  %49 = load i8*, i8** %arrayidx31, align 8
  %50 = load i8**, i8*** %authors.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %50, i64 1
  %51 = load i8*, i8** %arrayidx32, align 8
  %52 = load i8**, i8*** %authors.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %52, i64 2
  %53 = load i8*, i8** %arrayidx33, align 8
  %54 = load i8**, i8*** %authors.addr, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %54, i64 3
  %55 = load i8*, i8** %arrayidx34, align 8
  %56 = load i8**, i8*** %authors.addr, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %56, i64 4
  %57 = load i8*, i8** %arrayidx35, align 8
  %58 = load i8**, i8*** %authors.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %58, i64 5
  %59 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.84, i64 0, i64 0), i8* %49, i8* %51, i8* %53, i8* %55, i8* %57, i8* %59)
  br label %sw.epilog

sw.bb38:                                          ; preds = %NodeBlock3
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %61 = load i8**, i8*** %authors.addr, align 8
  %arrayidx39 = getelementptr inbounds i8*, i8** %61, i64 0
  %62 = load i8*, i8** %arrayidx39, align 8
  %63 = load i8**, i8*** %authors.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %63, i64 1
  %64 = load i8*, i8** %arrayidx40, align 8
  %65 = load i8**, i8*** %authors.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %65, i64 2
  %66 = load i8*, i8** %arrayidx41, align 8
  %67 = load i8**, i8*** %authors.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %67, i64 3
  %68 = load i8*, i8** %arrayidx42, align 8
  %69 = load i8**, i8*** %authors.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %69, i64 4
  %70 = load i8*, i8** %arrayidx43, align 8
  %71 = load i8**, i8*** %authors.addr, align 8
  %arrayidx44 = getelementptr inbounds i8*, i8** %71, i64 5
  %72 = load i8*, i8** %arrayidx44, align 8
  %73 = load i8**, i8*** %authors.addr, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %73, i64 6
  %74 = load i8*, i8** %arrayidx45, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.85, i64 0, i64 0), i8* %62, i8* %64, i8* %66, i8* %68, i8* %70, i8* %72, i8* %74)
  br label %sw.epilog

sw.bb47:                                          ; preds = %NodeBlock1
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %76 = load i8**, i8*** %authors.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %76, i64 0
  %77 = load i8*, i8** %arrayidx48, align 8
  %78 = load i8**, i8*** %authors.addr, align 8
  %arrayidx49 = getelementptr inbounds i8*, i8** %78, i64 1
  %79 = load i8*, i8** %arrayidx49, align 8
  %80 = load i8**, i8*** %authors.addr, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %80, i64 2
  %81 = load i8*, i8** %arrayidx50, align 8
  %82 = load i8**, i8*** %authors.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %82, i64 3
  %83 = load i8*, i8** %arrayidx51, align 8
  %84 = load i8**, i8*** %authors.addr, align 8
  %arrayidx52 = getelementptr inbounds i8*, i8** %84, i64 4
  %85 = load i8*, i8** %arrayidx52, align 8
  %86 = load i8**, i8*** %authors.addr, align 8
  %arrayidx53 = getelementptr inbounds i8*, i8** %86, i64 5
  %87 = load i8*, i8** %arrayidx53, align 8
  %88 = load i8**, i8*** %authors.addr, align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %88, i64 6
  %89 = load i8*, i8** %arrayidx54, align 8
  %90 = load i8**, i8*** %authors.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %90, i64 7
  %91 = load i8*, i8** %arrayidx55, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.86, i64 0, i64 0), i8* %77, i8* %79, i8* %81, i8* %83, i8* %85, i8* %87, i8* %89, i8* %91)
  br label %sw.epilog

sw.bb57:                                          ; preds = %NodeBlock
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %93 = load i8**, i8*** %authors.addr, align 8
  %arrayidx58 = getelementptr inbounds i8*, i8** %93, i64 0
  %94 = load i8*, i8** %arrayidx58, align 8
  %95 = load i8**, i8*** %authors.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %95, i64 1
  %96 = load i8*, i8** %arrayidx59, align 8
  %97 = load i8**, i8*** %authors.addr, align 8
  %arrayidx60 = getelementptr inbounds i8*, i8** %97, i64 2
  %98 = load i8*, i8** %arrayidx60, align 8
  %99 = load i8**, i8*** %authors.addr, align 8
  %arrayidx61 = getelementptr inbounds i8*, i8** %99, i64 3
  %100 = load i8*, i8** %arrayidx61, align 8
  %101 = load i8**, i8*** %authors.addr, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %101, i64 4
  %102 = load i8*, i8** %arrayidx62, align 8
  %103 = load i8**, i8*** %authors.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %103, i64 5
  %104 = load i8*, i8** %arrayidx63, align 8
  %105 = load i8**, i8*** %authors.addr, align 8
  %arrayidx64 = getelementptr inbounds i8*, i8** %105, i64 6
  %106 = load i8*, i8** %arrayidx64, align 8
  %107 = load i8**, i8*** %authors.addr, align 8
  %arrayidx65 = getelementptr inbounds i8*, i8** %107, i64 7
  %108 = load i8*, i8** %arrayidx65, align 8
  %109 = load i8**, i8*** %authors.addr, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %109, i64 8
  %110 = load i8*, i8** %arrayidx66, align 8
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.87, i64 0, i64 0), i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104, i8* %106, i8* %108, i8* %110)
  br label %sw.epilog

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %112 = load i8**, i8*** %authors.addr, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %112, i64 0
  %113 = load i8*, i8** %arrayidx68, align 8
  %114 = load i8**, i8*** %authors.addr, align 8
  %arrayidx69 = getelementptr inbounds i8*, i8** %114, i64 1
  %115 = load i8*, i8** %arrayidx69, align 8
  %116 = load i8**, i8*** %authors.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %116, i64 2
  %117 = load i8*, i8** %arrayidx70, align 8
  %118 = load i8**, i8*** %authors.addr, align 8
  %arrayidx71 = getelementptr inbounds i8*, i8** %118, i64 3
  %119 = load i8*, i8** %arrayidx71, align 8
  %120 = load i8**, i8*** %authors.addr, align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %120, i64 4
  %121 = load i8*, i8** %arrayidx72, align 8
  %122 = load i8**, i8*** %authors.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %122, i64 5
  %123 = load i8*, i8** %arrayidx73, align 8
  %124 = load i8**, i8*** %authors.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %124, i64 6
  %125 = load i8*, i8** %arrayidx74, align 8
  %126 = load i8**, i8*** %authors.addr, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %126, i64 7
  %127 = load i8*, i8** %arrayidx75, align 8
  %128 = load i8**, i8*** %authors.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %128, i64 8
  %129 = load i8*, i8** %arrayidx76, align 8
  %call77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.88, i64 0, i64 0), i8* %113, i8* %115, i8* %117, i8* %119, i8* %121, i8* %123, i8* %125, i8* %127, i8* %129)
  br label %sw.epilog

sw.epilog:                                        ; preds = %NodeBlock17, %sw.default, %sw.bb57, %sw.bb47, %sw.bb38, %sw.bb30, %sw.bb23, %sw.bb17, %sw.bb12, %sw.bb8, %sw.bb6
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
  br i1 %tobool, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
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
  br i1 %cmp, label %land.rhs, label %for.end

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
  br i1 %cmp1, label %for.inc, label %for.end

for.inc:                                          ; preds = %vaarg.end
  %9 = load i64, i64* %n_authors, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %n_authors, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond, %vaarg.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %11 = load i8*, i8** %command_name.addr, align 8
  %12 = load i8*, i8** %package.addr, align 8
  %13 = load i8*, i8** %version.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i64 0, i64 0
  %14 = load i64, i64* %n_authors, align 8
  call void @version_etc_arn(%struct._IO_FILE* %10, i8* %11, i8* %12, i8* %13, i8** %arraydecay, i64 %14)
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
  %call = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.76, i64 0, i64 0), %struct._IO_FILE* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.91, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.92, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.93, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.94, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.95, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.96, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.97, i64 0, i64 0))
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
  %tobool = icmp eq i8* %1, null
  %2 = load i64, i64* %n.addr, align 8
  %cmp = icmp ne i64 %2, 0
  %or.cond = and i1 %tobool, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @xalloc_die() #14
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %p, align 8
  ret i8* %3
}

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
  %tobool = icmp eq i64 %0, 0
  %1 = load i8*, i8** %p.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  %or.cond = and i1 %tobool, %tobool1
  %2 = load i8*, i8** %p.addr, align 8
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @free(i8* %2) #11
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %n.addr, align 8
  %call = call i8* @realloc(i8* %2, i64 %3) #11
  store i8* %call, i8** %p.addr, align 8
  %4 = load i8*, i8** %p.addr, align 8
  %tobool2 = icmp eq i8* %4, null
  %5 = load i64, i64* %n.addr, align 8
  %tobool4 = icmp ne i64 %5, 0
  %or.cond1 = and i1 %tobool2, %tobool4
  br i1 %or.cond1, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @xalloc_die() #14
  unreachable

if.end6:                                          ; preds = %if.end
  %6 = load i8*, i8** %p.addr, align 8
  store i8* %6, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %7 = load i8*, i8** %retval, align 8
  ret i8* %7
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
  br i1 %cmp, label %if.then6, label %if.end16

if.then6:                                         ; preds = %if.end
  call void @xalloc_die() #14
  unreachable

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

if.end16:                                         ; preds = %if.end, %if.end12
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
  %3 = call i8* @memcpy(i8* %call, i8* %1, i64 %2)
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
  call void (i32, i32, i8*, ...) @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.109, i64 0, i64 0))
  call void @abort() #12
  unreachable
}

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
  %6 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ne i64 %6, 0
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %land.lhs.true2, label %if.end5

land.lhs.true2:                                   ; preds = %if.end
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

if.end5:                                          ; preds = %land.lhs.true2, %if.end
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
define dso_local i32 @c_strcasecmp(i8* %s1, i8* %s2) #9 {
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
  br i1 %cmp, label %if.then, label %do.body

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

do.body:                                          ; preds = %entry, %if.end9
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
  br i1 %cmp6, label %do.end, label %if.end9

if.end9:                                          ; preds = %do.body
  %9 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %10 = load i8*, i8** %p2, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr10, i8** %p2, align 8
  %11 = load i8, i8* %c1, align 1
  %conv11 = zext i8 %11 to i32
  %12 = load i8, i8* %c2, align 1
  %conv12 = zext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv11, %conv12
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.body, %if.end9
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

; Function Attrs: nounwind
declare dso_local i32 @ferror_unlocked(%struct._IO_FILE*) #6

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
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0)) #13
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [257 x i8], [257 x i8]* %locale, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.119, i64 0, i64 0)) #13
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
define dso_local i8* @locale_charset() #2 {
entry:
  %codeset = alloca i8*, align 8
  %call = call i8* @nl_langinfo(i32 14) #11
  store i8* %call, i8** %codeset, align 8
  %0 = load i8*, i8** %codeset, align 8
  %cmp = icmp eq i8* %0, null
  %spec.store.select = select i1 %cmp, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.122, i64 0, i64 0), i8* %call
  store i8* %spec.store.select, i8** %codeset, align 8
  %1 = load i8*, i8** %codeset, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  %spec.store.select1 = select i1 %cmp1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.123, i64 0, i64 0), i8* %spec.store.select
  store i8* %spec.store.select1, i8** %codeset, align 8
  %3 = load i8*, i8** %codeset, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare dso_local i8* @nl_langinfo(i32) #6

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
  %10 = call i8* @memcpy(i8* %7, i8* %8, i64 %add)
  store i32 0, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  %11 = load i64, i64* %bufsize.addr, align 8
  %cmp7 = icmp ugt i64 %11, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.else6
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i8*, i8** %result, align 8
  %14 = load i64, i64* %bufsize.addr, align 8
  %sub = sub i64 %14, 1
  %15 = call i8* @memcpy(i8* %12, i8* %13, i64 %sub)
  %16 = load i8*, i8** %buf.addr, align 8
  %17 = load i64, i64* %bufsize.addr, align 8
  %sub9 = sub i64 %17, 1
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %sub9
  store i8 0, i8* %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else6
  store i32 34, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then5, %if.end
  %18 = load i32, i32* %retval, align 4
  ret i32 %18
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
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @fclose(%struct._IO_FILE* %2)
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @__freading(%struct._IO_FILE* %2) #11
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fileno(%struct._IO_FILE* %3) #11
  %call5 = call i64 @lseek(i32 %call4, i64 0, i32 1) #11
  %cmp6 = icmp ne i64 %call5, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @rpl_fflush(%struct._IO_FILE* %4)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call i32* @__errno_location() #15
  %5 = load i32, i32* %call9, align 4
  store i32 %5, i32* %saved_errno, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %lor.lhs.false
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* %6)
  store i32 %call11, i32* %result, align 4
  %7 = load i32, i32* %saved_errno, align 4
  %cmp12 = icmp ne i32 %7, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %8 = load i32, i32* %saved_errno, align 4
  %call14 = call i32* @__errno_location() #15
  store i32 %8, i32* %call14, align 4
  store i32 -1, i32* %result, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %9 = load i32, i32* %result, align 4
  store i32 %9, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #6

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @__freading(%struct._IO_FILE*) #6

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #6

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
define dso_local zeroext i1 @c_isalnum(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  br label %NodeBlock121

NodeBlock121:                                     ; preds = %entry
  %case.cmp122 = icmp eq i32 %0, 48
  br i1 %case.cmp122, label %sw.bb, label %NodeBlock119

NodeBlock119:                                     ; preds = %NodeBlock121
  %case.cmp120 = icmp eq i32 %0, 49
  br i1 %case.cmp120, label %sw.bb, label %NodeBlock117

NodeBlock117:                                     ; preds = %NodeBlock119
  %case.cmp118 = icmp eq i32 %0, 50
  br i1 %case.cmp118, label %sw.bb, label %NodeBlock115

NodeBlock115:                                     ; preds = %NodeBlock117
  %case.cmp116 = icmp eq i32 %0, 51
  br i1 %case.cmp116, label %sw.bb, label %NodeBlock113

NodeBlock113:                                     ; preds = %NodeBlock115
  %case.cmp114 = icmp eq i32 %0, 52
  br i1 %case.cmp114, label %sw.bb, label %NodeBlock111

NodeBlock111:                                     ; preds = %NodeBlock113
  %case.cmp112 = icmp eq i32 %0, 53
  br i1 %case.cmp112, label %sw.bb, label %NodeBlock109

NodeBlock109:                                     ; preds = %NodeBlock111
  %case.cmp110 = icmp eq i32 %0, 54
  br i1 %case.cmp110, label %sw.bb, label %NodeBlock107

NodeBlock107:                                     ; preds = %NodeBlock109
  %case.cmp108 = icmp eq i32 %0, 55
  br i1 %case.cmp108, label %sw.bb, label %NodeBlock105

NodeBlock105:                                     ; preds = %NodeBlock107
  %case.cmp106 = icmp eq i32 %0, 56
  br i1 %case.cmp106, label %sw.bb, label %NodeBlock103

NodeBlock103:                                     ; preds = %NodeBlock105
  %case.cmp104 = icmp eq i32 %0, 57
  br i1 %case.cmp104, label %sw.bb, label %NodeBlock101

NodeBlock101:                                     ; preds = %NodeBlock103
  %case.cmp102 = icmp eq i32 %0, 97
  br i1 %case.cmp102, label %sw.bb, label %NodeBlock99

NodeBlock99:                                      ; preds = %NodeBlock101
  %case.cmp100 = icmp eq i32 %0, 98
  br i1 %case.cmp100, label %sw.bb, label %NodeBlock97

NodeBlock97:                                      ; preds = %NodeBlock99
  %case.cmp98 = icmp eq i32 %0, 99
  br i1 %case.cmp98, label %sw.bb, label %NodeBlock95

NodeBlock95:                                      ; preds = %NodeBlock97
  %case.cmp96 = icmp eq i32 %0, 100
  br i1 %case.cmp96, label %sw.bb, label %NodeBlock93

NodeBlock93:                                      ; preds = %NodeBlock95
  %case.cmp94 = icmp eq i32 %0, 101
  br i1 %case.cmp94, label %sw.bb, label %NodeBlock91

NodeBlock91:                                      ; preds = %NodeBlock93
  %case.cmp92 = icmp eq i32 %0, 102
  br i1 %case.cmp92, label %sw.bb, label %NodeBlock89

NodeBlock89:                                      ; preds = %NodeBlock91
  %case.cmp90 = icmp eq i32 %0, 103
  br i1 %case.cmp90, label %sw.bb, label %NodeBlock87

NodeBlock87:                                      ; preds = %NodeBlock89
  %case.cmp88 = icmp eq i32 %0, 104
  br i1 %case.cmp88, label %sw.bb, label %NodeBlock85

NodeBlock85:                                      ; preds = %NodeBlock87
  %case.cmp86 = icmp eq i32 %0, 105
  br i1 %case.cmp86, label %sw.bb, label %NodeBlock83

NodeBlock83:                                      ; preds = %NodeBlock85
  %case.cmp84 = icmp eq i32 %0, 106
  br i1 %case.cmp84, label %sw.bb, label %NodeBlock81

NodeBlock81:                                      ; preds = %NodeBlock83
  %case.cmp82 = icmp eq i32 %0, 107
  br i1 %case.cmp82, label %sw.bb, label %NodeBlock79

NodeBlock79:                                      ; preds = %NodeBlock81
  %case.cmp80 = icmp eq i32 %0, 108
  br i1 %case.cmp80, label %sw.bb, label %NodeBlock77

NodeBlock77:                                      ; preds = %NodeBlock79
  %case.cmp78 = icmp eq i32 %0, 109
  br i1 %case.cmp78, label %sw.bb, label %NodeBlock75

NodeBlock75:                                      ; preds = %NodeBlock77
  %case.cmp76 = icmp eq i32 %0, 110
  br i1 %case.cmp76, label %sw.bb, label %NodeBlock73

NodeBlock73:                                      ; preds = %NodeBlock75
  %case.cmp74 = icmp eq i32 %0, 111
  br i1 %case.cmp74, label %sw.bb, label %NodeBlock71

NodeBlock71:                                      ; preds = %NodeBlock73
  %case.cmp72 = icmp eq i32 %0, 112
  br i1 %case.cmp72, label %sw.bb, label %NodeBlock69

NodeBlock69:                                      ; preds = %NodeBlock71
  %case.cmp70 = icmp eq i32 %0, 113
  br i1 %case.cmp70, label %sw.bb, label %NodeBlock67

NodeBlock67:                                      ; preds = %NodeBlock69
  %case.cmp68 = icmp eq i32 %0, 114
  br i1 %case.cmp68, label %sw.bb, label %NodeBlock65

NodeBlock65:                                      ; preds = %NodeBlock67
  %case.cmp66 = icmp eq i32 %0, 115
  br i1 %case.cmp66, label %sw.bb, label %NodeBlock63

NodeBlock63:                                      ; preds = %NodeBlock65
  %case.cmp64 = icmp eq i32 %0, 116
  br i1 %case.cmp64, label %sw.bb, label %NodeBlock61

NodeBlock61:                                      ; preds = %NodeBlock63
  %case.cmp62 = icmp eq i32 %0, 117
  br i1 %case.cmp62, label %sw.bb, label %NodeBlock59

NodeBlock59:                                      ; preds = %NodeBlock61
  %case.cmp60 = icmp eq i32 %0, 118
  br i1 %case.cmp60, label %sw.bb, label %NodeBlock57

NodeBlock57:                                      ; preds = %NodeBlock59
  %case.cmp58 = icmp eq i32 %0, 119
  br i1 %case.cmp58, label %sw.bb, label %NodeBlock55

NodeBlock55:                                      ; preds = %NodeBlock57
  %case.cmp56 = icmp eq i32 %0, 120
  br i1 %case.cmp56, label %sw.bb, label %NodeBlock53

NodeBlock53:                                      ; preds = %NodeBlock55
  %case.cmp54 = icmp eq i32 %0, 121
  br i1 %case.cmp54, label %sw.bb, label %NodeBlock51

NodeBlock51:                                      ; preds = %NodeBlock53
  %case.cmp52 = icmp eq i32 %0, 122
  br i1 %case.cmp52, label %sw.bb, label %NodeBlock49

NodeBlock49:                                      ; preds = %NodeBlock51
  %case.cmp50 = icmp eq i32 %0, 65
  br i1 %case.cmp50, label %sw.bb, label %NodeBlock47

NodeBlock47:                                      ; preds = %NodeBlock49
  %case.cmp48 = icmp eq i32 %0, 66
  br i1 %case.cmp48, label %sw.bb, label %NodeBlock45

NodeBlock45:                                      ; preds = %NodeBlock47
  %case.cmp46 = icmp eq i32 %0, 67
  br i1 %case.cmp46, label %sw.bb, label %NodeBlock43

NodeBlock43:                                      ; preds = %NodeBlock45
  %case.cmp44 = icmp eq i32 %0, 68
  br i1 %case.cmp44, label %sw.bb, label %NodeBlock41

NodeBlock41:                                      ; preds = %NodeBlock43
  %case.cmp42 = icmp eq i32 %0, 69
  br i1 %case.cmp42, label %sw.bb, label %NodeBlock39

NodeBlock39:                                      ; preds = %NodeBlock41
  %case.cmp40 = icmp eq i32 %0, 70
  br i1 %case.cmp40, label %sw.bb, label %NodeBlock37

NodeBlock37:                                      ; preds = %NodeBlock39
  %case.cmp38 = icmp eq i32 %0, 71
  br i1 %case.cmp38, label %sw.bb, label %NodeBlock35

NodeBlock35:                                      ; preds = %NodeBlock37
  %case.cmp36 = icmp eq i32 %0, 72
  br i1 %case.cmp36, label %sw.bb, label %NodeBlock33

NodeBlock33:                                      ; preds = %NodeBlock35
  %case.cmp34 = icmp eq i32 %0, 73
  br i1 %case.cmp34, label %sw.bb, label %NodeBlock31

NodeBlock31:                                      ; preds = %NodeBlock33
  %case.cmp32 = icmp eq i32 %0, 74
  br i1 %case.cmp32, label %sw.bb, label %NodeBlock29

NodeBlock29:                                      ; preds = %NodeBlock31
  %case.cmp30 = icmp eq i32 %0, 75
  br i1 %case.cmp30, label %sw.bb, label %NodeBlock27

NodeBlock27:                                      ; preds = %NodeBlock29
  %case.cmp28 = icmp eq i32 %0, 76
  br i1 %case.cmp28, label %sw.bb, label %NodeBlock25

NodeBlock25:                                      ; preds = %NodeBlock27
  %case.cmp26 = icmp eq i32 %0, 77
  br i1 %case.cmp26, label %sw.bb, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %case.cmp24 = icmp eq i32 %0, 78
  br i1 %case.cmp24, label %sw.bb, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %case.cmp22 = icmp eq i32 %0, 79
  br i1 %case.cmp22, label %sw.bb, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %case.cmp20 = icmp eq i32 %0, 80
  br i1 %case.cmp20, label %sw.bb, label %NodeBlock17

NodeBlock17:                                      ; preds = %NodeBlock19
  %case.cmp18 = icmp eq i32 %0, 81
  br i1 %case.cmp18, label %sw.bb, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %case.cmp16 = icmp eq i32 %0, 82
  br i1 %case.cmp16, label %sw.bb, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %case.cmp14 = icmp eq i32 %0, 83
  br i1 %case.cmp14, label %sw.bb, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %case.cmp12 = icmp eq i32 %0, 84
  br i1 %case.cmp12, label %sw.bb, label %NodeBlock9

NodeBlock9:                                       ; preds = %NodeBlock11
  %case.cmp10 = icmp eq i32 %0, 85
  br i1 %case.cmp10, label %sw.bb, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %case.cmp8 = icmp eq i32 %0, 86
  br i1 %case.cmp8, label %sw.bb, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %case.cmp6 = icmp eq i32 %0, 87
  br i1 %case.cmp6, label %sw.bb, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %case.cmp4 = icmp eq i32 %0, 88
  br i1 %case.cmp4, label %sw.bb, label %NodeBlock1

NodeBlock1:                                       ; preds = %NodeBlock3
  %case.cmp2 = icmp eq i32 %0, 89
  br i1 %case.cmp2, label %sw.bb, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock1
  %case.cmp = icmp eq i32 %0, 90
  br i1 %case.cmp, label %sw.bb, label %newDefault

sw.bb:                                            ; preds = %NodeBlock121, %NodeBlock119, %NodeBlock117, %NodeBlock115, %NodeBlock113, %NodeBlock111, %NodeBlock109, %NodeBlock107, %NodeBlock105, %NodeBlock103, %NodeBlock101, %NodeBlock99, %NodeBlock97, %NodeBlock95, %NodeBlock93, %NodeBlock91, %NodeBlock89, %NodeBlock87, %NodeBlock85, %NodeBlock83, %NodeBlock81, %NodeBlock79, %NodeBlock77, %NodeBlock75, %NodeBlock73, %NodeBlock71, %NodeBlock69, %NodeBlock67, %NodeBlock65, %NodeBlock63, %NodeBlock61, %NodeBlock59, %NodeBlock57, %NodeBlock55, %NodeBlock53, %NodeBlock51, %NodeBlock49, %NodeBlock47, %NodeBlock45, %NodeBlock43, %NodeBlock41, %NodeBlock39, %NodeBlock37, %NodeBlock35, %NodeBlock33, %NodeBlock31, %NodeBlock29, %NodeBlock27, %NodeBlock25, %NodeBlock23, %NodeBlock21, %NodeBlock19, %NodeBlock17, %NodeBlock15, %NodeBlock13, %NodeBlock11, %NodeBlock9, %NodeBlock7, %NodeBlock5, %NodeBlock3, %NodeBlock1, %NodeBlock
  store i1 true, i1* %retval, align 1
  br label %return

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isalpha(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  br label %NodeBlock101

NodeBlock101:                                     ; preds = %entry
  %case.cmp102 = icmp eq i32 %0, 97
  br i1 %case.cmp102, label %sw.bb, label %NodeBlock99

NodeBlock99:                                      ; preds = %NodeBlock101
  %case.cmp100 = icmp eq i32 %0, 98
  br i1 %case.cmp100, label %sw.bb, label %NodeBlock97

NodeBlock97:                                      ; preds = %NodeBlock99
  %case.cmp98 = icmp eq i32 %0, 99
  br i1 %case.cmp98, label %sw.bb, label %NodeBlock95

NodeBlock95:                                      ; preds = %NodeBlock97
  %case.cmp96 = icmp eq i32 %0, 100
  br i1 %case.cmp96, label %sw.bb, label %NodeBlock93

NodeBlock93:                                      ; preds = %NodeBlock95
  %case.cmp94 = icmp eq i32 %0, 101
  br i1 %case.cmp94, label %sw.bb, label %NodeBlock91

NodeBlock91:                                      ; preds = %NodeBlock93
  %case.cmp92 = icmp eq i32 %0, 102
  br i1 %case.cmp92, label %sw.bb, label %NodeBlock89

NodeBlock89:                                      ; preds = %NodeBlock91
  %case.cmp90 = icmp eq i32 %0, 103
  br i1 %case.cmp90, label %sw.bb, label %NodeBlock87

NodeBlock87:                                      ; preds = %NodeBlock89
  %case.cmp88 = icmp eq i32 %0, 104
  br i1 %case.cmp88, label %sw.bb, label %NodeBlock85

NodeBlock85:                                      ; preds = %NodeBlock87
  %case.cmp86 = icmp eq i32 %0, 105
  br i1 %case.cmp86, label %sw.bb, label %NodeBlock83

NodeBlock83:                                      ; preds = %NodeBlock85
  %case.cmp84 = icmp eq i32 %0, 106
  br i1 %case.cmp84, label %sw.bb, label %NodeBlock81

NodeBlock81:                                      ; preds = %NodeBlock83
  %case.cmp82 = icmp eq i32 %0, 107
  br i1 %case.cmp82, label %sw.bb, label %NodeBlock79

NodeBlock79:                                      ; preds = %NodeBlock81
  %case.cmp80 = icmp eq i32 %0, 108
  br i1 %case.cmp80, label %sw.bb, label %NodeBlock77

NodeBlock77:                                      ; preds = %NodeBlock79
  %case.cmp78 = icmp eq i32 %0, 109
  br i1 %case.cmp78, label %sw.bb, label %NodeBlock75

NodeBlock75:                                      ; preds = %NodeBlock77
  %case.cmp76 = icmp eq i32 %0, 110
  br i1 %case.cmp76, label %sw.bb, label %NodeBlock73

NodeBlock73:                                      ; preds = %NodeBlock75
  %case.cmp74 = icmp eq i32 %0, 111
  br i1 %case.cmp74, label %sw.bb, label %NodeBlock71

NodeBlock71:                                      ; preds = %NodeBlock73
  %case.cmp72 = icmp eq i32 %0, 112
  br i1 %case.cmp72, label %sw.bb, label %NodeBlock69

NodeBlock69:                                      ; preds = %NodeBlock71
  %case.cmp70 = icmp eq i32 %0, 113
  br i1 %case.cmp70, label %sw.bb, label %NodeBlock67

NodeBlock67:                                      ; preds = %NodeBlock69
  %case.cmp68 = icmp eq i32 %0, 114
  br i1 %case.cmp68, label %sw.bb, label %NodeBlock65

NodeBlock65:                                      ; preds = %NodeBlock67
  %case.cmp66 = icmp eq i32 %0, 115
  br i1 %case.cmp66, label %sw.bb, label %NodeBlock63

NodeBlock63:                                      ; preds = %NodeBlock65
  %case.cmp64 = icmp eq i32 %0, 116
  br i1 %case.cmp64, label %sw.bb, label %NodeBlock61

NodeBlock61:                                      ; preds = %NodeBlock63
  %case.cmp62 = icmp eq i32 %0, 117
  br i1 %case.cmp62, label %sw.bb, label %NodeBlock59

NodeBlock59:                                      ; preds = %NodeBlock61
  %case.cmp60 = icmp eq i32 %0, 118
  br i1 %case.cmp60, label %sw.bb, label %NodeBlock57

NodeBlock57:                                      ; preds = %NodeBlock59
  %case.cmp58 = icmp eq i32 %0, 119
  br i1 %case.cmp58, label %sw.bb, label %NodeBlock55

NodeBlock55:                                      ; preds = %NodeBlock57
  %case.cmp56 = icmp eq i32 %0, 120
  br i1 %case.cmp56, label %sw.bb, label %NodeBlock53

NodeBlock53:                                      ; preds = %NodeBlock55
  %case.cmp54 = icmp eq i32 %0, 121
  br i1 %case.cmp54, label %sw.bb, label %NodeBlock51

NodeBlock51:                                      ; preds = %NodeBlock53
  %case.cmp52 = icmp eq i32 %0, 122
  br i1 %case.cmp52, label %sw.bb, label %NodeBlock49

NodeBlock49:                                      ; preds = %NodeBlock51
  %case.cmp50 = icmp eq i32 %0, 65
  br i1 %case.cmp50, label %sw.bb, label %NodeBlock47

NodeBlock47:                                      ; preds = %NodeBlock49
  %case.cmp48 = icmp eq i32 %0, 66
  br i1 %case.cmp48, label %sw.bb, label %NodeBlock45

NodeBlock45:                                      ; preds = %NodeBlock47
  %case.cmp46 = icmp eq i32 %0, 67
  br i1 %case.cmp46, label %sw.bb, label %NodeBlock43

NodeBlock43:                                      ; preds = %NodeBlock45
  %case.cmp44 = icmp eq i32 %0, 68
  br i1 %case.cmp44, label %sw.bb, label %NodeBlock41

NodeBlock41:                                      ; preds = %NodeBlock43
  %case.cmp42 = icmp eq i32 %0, 69
  br i1 %case.cmp42, label %sw.bb, label %NodeBlock39

NodeBlock39:                                      ; preds = %NodeBlock41
  %case.cmp40 = icmp eq i32 %0, 70
  br i1 %case.cmp40, label %sw.bb, label %NodeBlock37

NodeBlock37:                                      ; preds = %NodeBlock39
  %case.cmp38 = icmp eq i32 %0, 71
  br i1 %case.cmp38, label %sw.bb, label %NodeBlock35

NodeBlock35:                                      ; preds = %NodeBlock37
  %case.cmp36 = icmp eq i32 %0, 72
  br i1 %case.cmp36, label %sw.bb, label %NodeBlock33

NodeBlock33:                                      ; preds = %NodeBlock35
  %case.cmp34 = icmp eq i32 %0, 73
  br i1 %case.cmp34, label %sw.bb, label %NodeBlock31

NodeBlock31:                                      ; preds = %NodeBlock33
  %case.cmp32 = icmp eq i32 %0, 74
  br i1 %case.cmp32, label %sw.bb, label %NodeBlock29

NodeBlock29:                                      ; preds = %NodeBlock31
  %case.cmp30 = icmp eq i32 %0, 75
  br i1 %case.cmp30, label %sw.bb, label %NodeBlock27

NodeBlock27:                                      ; preds = %NodeBlock29
  %case.cmp28 = icmp eq i32 %0, 76
  br i1 %case.cmp28, label %sw.bb, label %NodeBlock25

NodeBlock25:                                      ; preds = %NodeBlock27
  %case.cmp26 = icmp eq i32 %0, 77
  br i1 %case.cmp26, label %sw.bb, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %case.cmp24 = icmp eq i32 %0, 78
  br i1 %case.cmp24, label %sw.bb, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %case.cmp22 = icmp eq i32 %0, 79
  br i1 %case.cmp22, label %sw.bb, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %case.cmp20 = icmp eq i32 %0, 80
  br i1 %case.cmp20, label %sw.bb, label %NodeBlock17

NodeBlock17:                                      ; preds = %NodeBlock19
  %case.cmp18 = icmp eq i32 %0, 81
  br i1 %case.cmp18, label %sw.bb, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %case.cmp16 = icmp eq i32 %0, 82
  br i1 %case.cmp16, label %sw.bb, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %case.cmp14 = icmp eq i32 %0, 83
  br i1 %case.cmp14, label %sw.bb, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %case.cmp12 = icmp eq i32 %0, 84
  br i1 %case.cmp12, label %sw.bb, label %NodeBlock9

NodeBlock9:                                       ; preds = %NodeBlock11
  %case.cmp10 = icmp eq i32 %0, 85
  br i1 %case.cmp10, label %sw.bb, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %case.cmp8 = icmp eq i32 %0, 86
  br i1 %case.cmp8, label %sw.bb, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %case.cmp6 = icmp eq i32 %0, 87
  br i1 %case.cmp6, label %sw.bb, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %case.cmp4 = icmp eq i32 %0, 88
  br i1 %case.cmp4, label %sw.bb, label %NodeBlock1

NodeBlock1:                                       ; preds = %NodeBlock3
  %case.cmp2 = icmp eq i32 %0, 89
  br i1 %case.cmp2, label %sw.bb, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock1
  %case.cmp = icmp eq i32 %0, 90
  br i1 %case.cmp, label %sw.bb, label %newDefault

sw.bb:                                            ; preds = %NodeBlock101, %NodeBlock99, %NodeBlock97, %NodeBlock95, %NodeBlock93, %NodeBlock91, %NodeBlock89, %NodeBlock87, %NodeBlock85, %NodeBlock83, %NodeBlock81, %NodeBlock79, %NodeBlock77, %NodeBlock75, %NodeBlock73, %NodeBlock71, %NodeBlock69, %NodeBlock67, %NodeBlock65, %NodeBlock63, %NodeBlock61, %NodeBlock59, %NodeBlock57, %NodeBlock55, %NodeBlock53, %NodeBlock51, %NodeBlock49, %NodeBlock47, %NodeBlock45, %NodeBlock43, %NodeBlock41, %NodeBlock39, %NodeBlock37, %NodeBlock35, %NodeBlock33, %NodeBlock31, %NodeBlock29, %NodeBlock27, %NodeBlock25, %NodeBlock23, %NodeBlock21, %NodeBlock19, %NodeBlock17, %NodeBlock15, %NodeBlock13, %NodeBlock11, %NodeBlock9, %NodeBlock7, %NodeBlock5, %NodeBlock3, %NodeBlock1, %NodeBlock
  store i1 true, i1* %retval, align 1
  br label %return

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isascii(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %switch = icmp ult i32 %0, 128
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isblank(i32 %c) #2 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 32
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp eq i32 %1, 9
  %2 = select i1 %cmp, i1 true, i1 %cmp1
  ret i1 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_iscntrl(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  br label %NodeBlock63

NodeBlock63:                                      ; preds = %entry
  %case.cmp64 = icmp eq i32 %0, 7
  br i1 %case.cmp64, label %sw.bb, label %NodeBlock61

NodeBlock61:                                      ; preds = %NodeBlock63
  %case.cmp62 = icmp eq i32 %0, 8
  br i1 %case.cmp62, label %sw.bb, label %NodeBlock59

NodeBlock59:                                      ; preds = %NodeBlock61
  %case.cmp60 = icmp eq i32 %0, 12
  br i1 %case.cmp60, label %sw.bb, label %NodeBlock57

NodeBlock57:                                      ; preds = %NodeBlock59
  %case.cmp58 = icmp eq i32 %0, 10
  br i1 %case.cmp58, label %sw.bb, label %NodeBlock55

NodeBlock55:                                      ; preds = %NodeBlock57
  %case.cmp56 = icmp eq i32 %0, 13
  br i1 %case.cmp56, label %sw.bb, label %NodeBlock53

NodeBlock53:                                      ; preds = %NodeBlock55
  %case.cmp54 = icmp eq i32 %0, 9
  br i1 %case.cmp54, label %sw.bb, label %NodeBlock51

NodeBlock51:                                      ; preds = %NodeBlock53
  %case.cmp52 = icmp eq i32 %0, 11
  br i1 %case.cmp52, label %sw.bb, label %NodeBlock49

NodeBlock49:                                      ; preds = %NodeBlock51
  %case.cmp50 = icmp eq i32 %0, 0
  br i1 %case.cmp50, label %sw.bb, label %NodeBlock47

NodeBlock47:                                      ; preds = %NodeBlock49
  %case.cmp48 = icmp eq i32 %0, 1
  br i1 %case.cmp48, label %sw.bb, label %NodeBlock45

NodeBlock45:                                      ; preds = %NodeBlock47
  %case.cmp46 = icmp eq i32 %0, 2
  br i1 %case.cmp46, label %sw.bb, label %NodeBlock43

NodeBlock43:                                      ; preds = %NodeBlock45
  %case.cmp44 = icmp eq i32 %0, 3
  br i1 %case.cmp44, label %sw.bb, label %NodeBlock41

NodeBlock41:                                      ; preds = %NodeBlock43
  %case.cmp42 = icmp eq i32 %0, 4
  br i1 %case.cmp42, label %sw.bb, label %NodeBlock39

NodeBlock39:                                      ; preds = %NodeBlock41
  %case.cmp40 = icmp eq i32 %0, 5
  br i1 %case.cmp40, label %sw.bb, label %NodeBlock37

NodeBlock37:                                      ; preds = %NodeBlock39
  %case.cmp38 = icmp eq i32 %0, 6
  br i1 %case.cmp38, label %sw.bb, label %NodeBlock35

NodeBlock35:                                      ; preds = %NodeBlock37
  %case.cmp36 = icmp eq i32 %0, 14
  br i1 %case.cmp36, label %sw.bb, label %NodeBlock33

NodeBlock33:                                      ; preds = %NodeBlock35
  %case.cmp34 = icmp eq i32 %0, 15
  br i1 %case.cmp34, label %sw.bb, label %NodeBlock31

NodeBlock31:                                      ; preds = %NodeBlock33
  %case.cmp32 = icmp eq i32 %0, 16
  br i1 %case.cmp32, label %sw.bb, label %NodeBlock29

NodeBlock29:                                      ; preds = %NodeBlock31
  %case.cmp30 = icmp eq i32 %0, 17
  br i1 %case.cmp30, label %sw.bb, label %NodeBlock27

NodeBlock27:                                      ; preds = %NodeBlock29
  %case.cmp28 = icmp eq i32 %0, 18
  br i1 %case.cmp28, label %sw.bb, label %NodeBlock25

NodeBlock25:                                      ; preds = %NodeBlock27
  %case.cmp26 = icmp eq i32 %0, 19
  br i1 %case.cmp26, label %sw.bb, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %case.cmp24 = icmp eq i32 %0, 20
  br i1 %case.cmp24, label %sw.bb, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %case.cmp22 = icmp eq i32 %0, 21
  br i1 %case.cmp22, label %sw.bb, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %case.cmp20 = icmp eq i32 %0, 22
  br i1 %case.cmp20, label %sw.bb, label %NodeBlock17

NodeBlock17:                                      ; preds = %NodeBlock19
  %case.cmp18 = icmp eq i32 %0, 23
  br i1 %case.cmp18, label %sw.bb, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %case.cmp16 = icmp eq i32 %0, 24
  br i1 %case.cmp16, label %sw.bb, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %case.cmp14 = icmp eq i32 %0, 25
  br i1 %case.cmp14, label %sw.bb, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %case.cmp12 = icmp eq i32 %0, 26
  br i1 %case.cmp12, label %sw.bb, label %NodeBlock9

NodeBlock9:                                       ; preds = %NodeBlock11
  %case.cmp10 = icmp eq i32 %0, 27
  br i1 %case.cmp10, label %sw.bb, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %case.cmp8 = icmp eq i32 %0, 28
  br i1 %case.cmp8, label %sw.bb, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %case.cmp6 = icmp eq i32 %0, 29
  br i1 %case.cmp6, label %sw.bb, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %case.cmp4 = icmp eq i32 %0, 30
  br i1 %case.cmp4, label %sw.bb, label %NodeBlock1

NodeBlock1:                                       ; preds = %NodeBlock3
  %case.cmp2 = icmp eq i32 %0, 31
  br i1 %case.cmp2, label %sw.bb, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock1
  %case.cmp = icmp eq i32 %0, 127
  br i1 %case.cmp, label %sw.bb, label %newDefault

sw.bb:                                            ; preds = %NodeBlock63, %NodeBlock61, %NodeBlock59, %NodeBlock57, %NodeBlock55, %NodeBlock53, %NodeBlock51, %NodeBlock49, %NodeBlock47, %NodeBlock45, %NodeBlock43, %NodeBlock41, %NodeBlock39, %NodeBlock37, %NodeBlock35, %NodeBlock33, %NodeBlock31, %NodeBlock29, %NodeBlock27, %NodeBlock25, %NodeBlock23, %NodeBlock21, %NodeBlock19, %NodeBlock17, %NodeBlock15, %NodeBlock13, %NodeBlock11, %NodeBlock9, %NodeBlock7, %NodeBlock5, %NodeBlock3, %NodeBlock1, %NodeBlock
  store i1 true, i1* %retval, align 1
  br label %return

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isdigit(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %.off = add i32 %0, -48
  %switch = icmp ult i32 %.off, 10
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isgraph(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %.off = add i32 %0, -33
  %switch = icmp ult i32 %.off, 94
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_islower(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %.off = add i32 %0, -97
  %switch = icmp ult i32 %.off, 26
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isprint(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %.off = add i32 %0, -32
  %switch = icmp ult i32 %.off, 95
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_ispunct(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  br label %NodeBlock61

NodeBlock61:                                      ; preds = %entry
  %case.cmp62 = icmp eq i32 %0, 33
  br i1 %case.cmp62, label %sw.bb, label %NodeBlock59

NodeBlock59:                                      ; preds = %NodeBlock61
  %case.cmp60 = icmp eq i32 %0, 34
  br i1 %case.cmp60, label %sw.bb, label %NodeBlock57

NodeBlock57:                                      ; preds = %NodeBlock59
  %case.cmp58 = icmp eq i32 %0, 35
  br i1 %case.cmp58, label %sw.bb, label %NodeBlock55

NodeBlock55:                                      ; preds = %NodeBlock57
  %case.cmp56 = icmp eq i32 %0, 36
  br i1 %case.cmp56, label %sw.bb, label %NodeBlock53

NodeBlock53:                                      ; preds = %NodeBlock55
  %case.cmp54 = icmp eq i32 %0, 37
  br i1 %case.cmp54, label %sw.bb, label %NodeBlock51

NodeBlock51:                                      ; preds = %NodeBlock53
  %case.cmp52 = icmp eq i32 %0, 38
  br i1 %case.cmp52, label %sw.bb, label %NodeBlock49

NodeBlock49:                                      ; preds = %NodeBlock51
  %case.cmp50 = icmp eq i32 %0, 39
  br i1 %case.cmp50, label %sw.bb, label %NodeBlock47

NodeBlock47:                                      ; preds = %NodeBlock49
  %case.cmp48 = icmp eq i32 %0, 40
  br i1 %case.cmp48, label %sw.bb, label %NodeBlock45

NodeBlock45:                                      ; preds = %NodeBlock47
  %case.cmp46 = icmp eq i32 %0, 41
  br i1 %case.cmp46, label %sw.bb, label %NodeBlock43

NodeBlock43:                                      ; preds = %NodeBlock45
  %case.cmp44 = icmp eq i32 %0, 42
  br i1 %case.cmp44, label %sw.bb, label %NodeBlock41

NodeBlock41:                                      ; preds = %NodeBlock43
  %case.cmp42 = icmp eq i32 %0, 43
  br i1 %case.cmp42, label %sw.bb, label %NodeBlock39

NodeBlock39:                                      ; preds = %NodeBlock41
  %case.cmp40 = icmp eq i32 %0, 44
  br i1 %case.cmp40, label %sw.bb, label %NodeBlock37

NodeBlock37:                                      ; preds = %NodeBlock39
  %case.cmp38 = icmp eq i32 %0, 45
  br i1 %case.cmp38, label %sw.bb, label %NodeBlock35

NodeBlock35:                                      ; preds = %NodeBlock37
  %case.cmp36 = icmp eq i32 %0, 46
  br i1 %case.cmp36, label %sw.bb, label %NodeBlock33

NodeBlock33:                                      ; preds = %NodeBlock35
  %case.cmp34 = icmp eq i32 %0, 47
  br i1 %case.cmp34, label %sw.bb, label %NodeBlock31

NodeBlock31:                                      ; preds = %NodeBlock33
  %case.cmp32 = icmp eq i32 %0, 58
  br i1 %case.cmp32, label %sw.bb, label %NodeBlock29

NodeBlock29:                                      ; preds = %NodeBlock31
  %case.cmp30 = icmp eq i32 %0, 59
  br i1 %case.cmp30, label %sw.bb, label %NodeBlock27

NodeBlock27:                                      ; preds = %NodeBlock29
  %case.cmp28 = icmp eq i32 %0, 60
  br i1 %case.cmp28, label %sw.bb, label %NodeBlock25

NodeBlock25:                                      ; preds = %NodeBlock27
  %case.cmp26 = icmp eq i32 %0, 61
  br i1 %case.cmp26, label %sw.bb, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %case.cmp24 = icmp eq i32 %0, 62
  br i1 %case.cmp24, label %sw.bb, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %case.cmp22 = icmp eq i32 %0, 63
  br i1 %case.cmp22, label %sw.bb, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %case.cmp20 = icmp eq i32 %0, 64
  br i1 %case.cmp20, label %sw.bb, label %NodeBlock17

NodeBlock17:                                      ; preds = %NodeBlock19
  %case.cmp18 = icmp eq i32 %0, 91
  br i1 %case.cmp18, label %sw.bb, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %case.cmp16 = icmp eq i32 %0, 92
  br i1 %case.cmp16, label %sw.bb, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %case.cmp14 = icmp eq i32 %0, 93
  br i1 %case.cmp14, label %sw.bb, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %case.cmp12 = icmp eq i32 %0, 94
  br i1 %case.cmp12, label %sw.bb, label %NodeBlock9

NodeBlock9:                                       ; preds = %NodeBlock11
  %case.cmp10 = icmp eq i32 %0, 95
  br i1 %case.cmp10, label %sw.bb, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %case.cmp8 = icmp eq i32 %0, 96
  br i1 %case.cmp8, label %sw.bb, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %case.cmp6 = icmp eq i32 %0, 123
  br i1 %case.cmp6, label %sw.bb, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %case.cmp4 = icmp eq i32 %0, 124
  br i1 %case.cmp4, label %sw.bb, label %NodeBlock1

NodeBlock1:                                       ; preds = %NodeBlock3
  %case.cmp2 = icmp eq i32 %0, 125
  br i1 %case.cmp2, label %sw.bb, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock1
  %case.cmp = icmp eq i32 %0, 126
  br i1 %case.cmp, label %sw.bb, label %newDefault

sw.bb:                                            ; preds = %NodeBlock61, %NodeBlock59, %NodeBlock57, %NodeBlock55, %NodeBlock53, %NodeBlock51, %NodeBlock49, %NodeBlock47, %NodeBlock45, %NodeBlock43, %NodeBlock41, %NodeBlock39, %NodeBlock37, %NodeBlock35, %NodeBlock33, %NodeBlock31, %NodeBlock29, %NodeBlock27, %NodeBlock25, %NodeBlock23, %NodeBlock21, %NodeBlock19, %NodeBlock17, %NodeBlock15, %NodeBlock13, %NodeBlock11, %NodeBlock9, %NodeBlock7, %NodeBlock5, %NodeBlock3, %NodeBlock1, %NodeBlock
  store i1 true, i1* %retval, align 1
  br label %return

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isspace(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  br label %NodeBlock9

NodeBlock9:                                       ; preds = %entry
  %case.cmp10 = icmp eq i32 %0, 32
  br i1 %case.cmp10, label %sw.bb, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %case.cmp8 = icmp eq i32 %0, 9
  br i1 %case.cmp8, label %sw.bb, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %case.cmp6 = icmp eq i32 %0, 10
  br i1 %case.cmp6, label %sw.bb, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %case.cmp4 = icmp eq i32 %0, 11
  br i1 %case.cmp4, label %sw.bb, label %NodeBlock1

NodeBlock1:                                       ; preds = %NodeBlock3
  %case.cmp2 = icmp eq i32 %0, 12
  br i1 %case.cmp2, label %sw.bb, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock1
  %case.cmp = icmp eq i32 %0, 13
  br i1 %case.cmp, label %sw.bb, label %newDefault

sw.bb:                                            ; preds = %NodeBlock9, %NodeBlock7, %NodeBlock5, %NodeBlock3, %NodeBlock1, %NodeBlock
  store i1 true, i1* %retval, align 1
  br label %return

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isupper(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %.off = add i32 %0, -65
  %switch = icmp ult i32 %.off, 26
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @c_isxdigit(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  br label %NodeBlock41

NodeBlock41:                                      ; preds = %entry
  %case.cmp42 = icmp eq i32 %0, 48
  br i1 %case.cmp42, label %sw.bb, label %NodeBlock39

NodeBlock39:                                      ; preds = %NodeBlock41
  %case.cmp40 = icmp eq i32 %0, 49
  br i1 %case.cmp40, label %sw.bb, label %NodeBlock37

NodeBlock37:                                      ; preds = %NodeBlock39
  %case.cmp38 = icmp eq i32 %0, 50
  br i1 %case.cmp38, label %sw.bb, label %NodeBlock35

NodeBlock35:                                      ; preds = %NodeBlock37
  %case.cmp36 = icmp eq i32 %0, 51
  br i1 %case.cmp36, label %sw.bb, label %NodeBlock33

NodeBlock33:                                      ; preds = %NodeBlock35
  %case.cmp34 = icmp eq i32 %0, 52
  br i1 %case.cmp34, label %sw.bb, label %NodeBlock31

NodeBlock31:                                      ; preds = %NodeBlock33
  %case.cmp32 = icmp eq i32 %0, 53
  br i1 %case.cmp32, label %sw.bb, label %NodeBlock29

NodeBlock29:                                      ; preds = %NodeBlock31
  %case.cmp30 = icmp eq i32 %0, 54
  br i1 %case.cmp30, label %sw.bb, label %NodeBlock27

NodeBlock27:                                      ; preds = %NodeBlock29
  %case.cmp28 = icmp eq i32 %0, 55
  br i1 %case.cmp28, label %sw.bb, label %NodeBlock25

NodeBlock25:                                      ; preds = %NodeBlock27
  %case.cmp26 = icmp eq i32 %0, 56
  br i1 %case.cmp26, label %sw.bb, label %NodeBlock23

NodeBlock23:                                      ; preds = %NodeBlock25
  %case.cmp24 = icmp eq i32 %0, 57
  br i1 %case.cmp24, label %sw.bb, label %NodeBlock21

NodeBlock21:                                      ; preds = %NodeBlock23
  %case.cmp22 = icmp eq i32 %0, 97
  br i1 %case.cmp22, label %sw.bb, label %NodeBlock19

NodeBlock19:                                      ; preds = %NodeBlock21
  %case.cmp20 = icmp eq i32 %0, 98
  br i1 %case.cmp20, label %sw.bb, label %NodeBlock17

NodeBlock17:                                      ; preds = %NodeBlock19
  %case.cmp18 = icmp eq i32 %0, 99
  br i1 %case.cmp18, label %sw.bb, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %case.cmp16 = icmp eq i32 %0, 100
  br i1 %case.cmp16, label %sw.bb, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %case.cmp14 = icmp eq i32 %0, 101
  br i1 %case.cmp14, label %sw.bb, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %case.cmp12 = icmp eq i32 %0, 102
  br i1 %case.cmp12, label %sw.bb, label %NodeBlock9

NodeBlock9:                                       ; preds = %NodeBlock11
  %case.cmp10 = icmp eq i32 %0, 65
  br i1 %case.cmp10, label %sw.bb, label %NodeBlock7

NodeBlock7:                                       ; preds = %NodeBlock9
  %case.cmp8 = icmp eq i32 %0, 66
  br i1 %case.cmp8, label %sw.bb, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %case.cmp6 = icmp eq i32 %0, 67
  br i1 %case.cmp6, label %sw.bb, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %case.cmp4 = icmp eq i32 %0, 68
  br i1 %case.cmp4, label %sw.bb, label %NodeBlock1

NodeBlock1:                                       ; preds = %NodeBlock3
  %case.cmp2 = icmp eq i32 %0, 69
  br i1 %case.cmp2, label %sw.bb, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock1
  %case.cmp = icmp eq i32 %0, 70
  br i1 %case.cmp, label %sw.bb, label %newDefault

sw.bb:                                            ; preds = %NodeBlock41, %NodeBlock39, %NodeBlock37, %NodeBlock35, %NodeBlock33, %NodeBlock31, %NodeBlock29, %NodeBlock27, %NodeBlock25, %NodeBlock23, %NodeBlock21, %NodeBlock19, %NodeBlock17, %NodeBlock15, %NodeBlock13, %NodeBlock11, %NodeBlock9, %NodeBlock7, %NodeBlock5, %NodeBlock3, %NodeBlock1, %NodeBlock
  store i1 true, i1* %retval, align 1
  br label %return

newDefault:                                       ; preds = %NodeBlock
  br label %sw.default

sw.default:                                       ; preds = %newDefault
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @c_tolower(i32 %c) #2 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %.off = add i32 %0, -65
  %switch = icmp ult i32 %.off, 26
  %1 = load i32, i32* %c.addr, align 4
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %sub = sub nsw i32 %1, 65
  %add = add nsw i32 %sub, 97
  store i32 %add, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 %1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @c_toupper(i32 %c) #2 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %.off = add i32 %0, -97
  %switch = icmp ult i32 %.off, 26
  %1 = load i32, i32* %c.addr, align 4
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %sub = sub nsw i32 %1, 97
  %add = add nsw i32 %sub, 65
  store i32 %add, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 %1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

declare i8* @memcpy(i8*, i8*, i64)

declare i8* @memset(i8*, i32, i64)

attributes #0 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { noreturn }
attributes #15 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
!1 = !{i32 1, !"wchar_size", i32 4}
