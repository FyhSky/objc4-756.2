; ModuleID = 'main.m'
source_filename = "main.m"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%0 = type opaque
%1 = type opaque
%struct._class_t = type { %struct._class_t*, %struct._class_t*, %struct._objc_cache*, i8* (i8*, i8*)**, %struct._class_ro_t* }
%struct._objc_cache = type opaque
%struct._class_ro_t = type { i32, i32, i32, i8*, i8*, %struct.__method_list_t*, %struct._objc_protocol_list*, %struct._ivar_list_t*, i8*, %struct._prop_list_t* }
%struct.__method_list_t = type { i32, i32, [0 x %struct._objc_method] }
%struct._objc_method = type { i8*, i8*, i8* }
%struct._objc_protocol_list = type { i64, [0 x %struct._protocol_t*] }
%struct._protocol_t = type { i8*, i8*, %struct._objc_protocol_list*, %struct.__method_list_t*, %struct.__method_list_t*, %struct.__method_list_t*, %struct.__method_list_t*, %struct._prop_list_t*, i32, i32, i8**, i8*, %struct._prop_list_t* }
%struct._ivar_list_t = type { i32, i32, [0 x %struct._ivar_t] }
%struct._ivar_t = type { i64*, i8*, i8*, i32, i32 }
%struct._prop_list_t = type { i32, i32, [0 x %struct._prop_t] }
%struct._prop_t = type { i8*, i8* }
%struct.__NSConstantString_tag = type { i32*, i32, i8*, i64 }

@"OBJC_CLASS_$_NSObject" = external global %struct._class_t
@"OBJC_CLASSLIST_REFERENCES_$_" = private global %struct._class_t* @"OBJC_CLASS_$_NSObject", section "__DATA,__objc_classrefs,regular,no_dead_strip", align 8
@OBJC_METH_VAR_NAME_ = private unnamed_addr constant [5 x i8] c"init\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@OBJC_SELECTOR_REFERENCES_ = private externally_initialized global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @OBJC_METH_VAR_NAME_, i32 0, i32 0), section "__DATA,__objc_selrefs,literal_pointers,no_dead_strip", align 8
@"OBJC_CLASS_$_NSString" = external global %struct._class_t
@"OBJC_CLASSLIST_REFERENCES_$_.1" = private global %struct._class_t* @"OBJC_CLASS_$_NSString", section "__DATA,__objc_classrefs,regular,no_dead_strip", align 8
@__CFConstantStringClassReference = external global [0 x i32]
@.str = private unnamed_addr constant [3 x i8] c"%@\00", section "__TEXT,__cstring,cstring_literals", align 1
@_unnamed_cfstring_ = private global %struct.__NSConstantString_tag { i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), i32 1992, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 2 }, section "__DATA,__cfstring", align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"fsfasddddddddddddddddddddd\00", section "__TEXT,__cstring,cstring_literals", align 1
@_unnamed_cfstring_.3 = private global %struct.__NSConstantString_tag { i32* getelementptr inbounds ([0 x i32], [0 x i32]* @__CFConstantStringClassReference, i32 0, i32 0), i32 1992, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i64 26 }, section "__DATA,__cfstring", align 8
@OBJC_METH_VAR_NAME_.4 = private unnamed_addr constant [18 x i8] c"stringWithFormat:\00", section "__TEXT,__objc_methname,cstring_literals", align 1
@OBJC_SELECTOR_REFERENCES_.5 = private externally_initialized global i8* getelementptr inbounds ([18 x i8], [18 x i8]* @OBJC_METH_VAR_NAME_.4, i32 0, i32 0), section "__DATA,__objc_selrefs,literal_pointers,no_dead_strip", align 8
@llvm.compiler.used = appending global [6 x i8*] [i8* bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_" to i8*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @OBJC_METH_VAR_NAME_, i32 0, i32 0), i8* bitcast (i8** @OBJC_SELECTOR_REFERENCES_ to i8*), i8* bitcast (%struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_.1" to i8*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @OBJC_METH_VAR_NAME_.4, i32 0, i32 0), i8* bitcast (i8** @OBJC_SELECTOR_REFERENCES_.5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline optnone ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %0*, align 8
  %7 = alloca %1*, align 8
  %8 = alloca %1*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %0* null, %0** %6, align 8
  store %1* null, %1** %7, align 8
  %9 = call i8* @llvm.objc.autoreleasePoolPush() #1
  %10 = load %struct._class_t*, %struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_", align 8
  %11 = bitcast %struct._class_t* %10 to i8*
  %12 = call i8* @objc_alloc(i8* %11)
  %13 = bitcast i8* %12 to %1*
  %14 = load i8*, i8** @OBJC_SELECTOR_REFERENCES_, align 8, !invariant.load !9
  %15 = bitcast %1* %13 to i8*
  %16 = call i8* bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*)*)(i8* %15, i8* %14)
  %17 = bitcast i8* %16 to %1*
  store %1* %17, %1** %8, align 8
  %18 = load %1*, %1** %8, align 8
  %19 = bitcast %1** %7 to i8**
  %20 = bitcast %1* %18 to i8*
  call void @llvm.objc.storeStrong(i8** %19, i8* %20) #1
  %21 = load %struct._class_t*, %struct._class_t** @"OBJC_CLASSLIST_REFERENCES_$_.1", align 8
  %22 = load i8*, i8** @OBJC_SELECTOR_REFERENCES_.5, align 8, !invariant.load !9
  %23 = bitcast %struct._class_t* %21 to i8*
  %24 = call i8* (i8*, i8*, %0*, ...) bitcast (i8* (i8*, i8*, ...)* @objc_msgSend to i8* (i8*, i8*, %0*, ...)*)(i8* %23, i8* %22, %0* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_ to %0*), %0* bitcast (%struct.__NSConstantString_tag* @_unnamed_cfstring_.3 to %0*))
  %25 = notail call i8* @llvm.objc.retainAutoreleasedReturnValue(i8* %24) #1
  %26 = bitcast i8* %25 to %0*
  %27 = load %0*, %0** %6, align 8
  store %0* %26, %0** %6, align 8
  %28 = bitcast %0* %27 to i8*
  call void @llvm.objc.release(i8* %28) #1, !clang.imprecise_release !9
  %29 = bitcast %1** %8 to i8**
  call void @llvm.objc.storeStrong(i8** %29, i8* null) #1
  call void @llvm.objc.autoreleasePoolPop(i8* %9)
  store i32 0, i32* %3, align 4
  %30 = bitcast %1** %7 to i8**
  call void @llvm.objc.storeStrong(i8** %30, i8* null) #1
  %31 = bitcast %0** %6 to i8**
  call void @llvm.objc.storeStrong(i8** %31, i8* null) #1
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.objc.autoreleasePoolPush() #1

declare i8* @objc_alloc(i8*)

; Function Attrs: nonlazybind
declare i8* @objc_msgSend(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.objc.storeStrong(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.objc.retainAutoreleasedReturnValue(i8*) #1

; Function Attrs: nounwind
declare void @llvm.objc.release(i8*) #1

; Function Attrs: nounwind
declare void @llvm.objc.autoreleasePoolPop(i8*) #1

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nonlazybind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!1 = !{i32 1, !"Objective-C Version", i32 2}
!2 = !{i32 1, !"Objective-C Image Info Version", i32 0}
!3 = !{i32 1, !"Objective-C Image Info Section", !"__DATA,__objc_imageinfo,regular,no_dead_strip"}
!4 = !{i32 4, !"Objective-C Garbage Collection", i32 0}
!5 = !{i32 1, !"Objective-C Class Properties", i32 64}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.8)"}
!9 = !{}
