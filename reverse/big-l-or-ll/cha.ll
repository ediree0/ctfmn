; ModuleID = 'chall.c'
source_filename = "chall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fl4g = dso_local global [37 x i8] c"4202ZH{OOODDIK-yrt_ecin_3k4f_s!_g4lF}", align 16
@RealOrFakeFlag = dso_local global [37 x i8] c"|h\02\02h|\00=|9w6:\22C\1E-\183\13\0E6_,l-\15\054\1AO8/\00>\02\00", align 16
@.str = private unnamed_addr constant [17 x i8] c"Enter the flag: \00", align 1
@stdin = external global ptr, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"NOOOOOB!\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"WOW\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [50 x i8], align 16
  %3 = alloca [37 x i8], align 16
  %4 = alloca i64, align 8
  store i32 0, ptr %1, align 4
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %6 = getelementptr inbounds [50 x i8], ptr %2, i64 0, i64 0
  %7 = load ptr, ptr @stdin, align 8
  %8 = call ptr @fgets(ptr noundef %6, i32 noundef 50, ptr noundef %7)
  %9 = getelementptr inbounds [50 x i8], ptr %2, i64 0, i64 0
  %10 = call i64 @strcspn(ptr noundef %9, ptr noundef @.str.1) #3
  %11 = getelementptr inbounds [50 x i8], ptr %2, i64 0, i64 %10
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds [50 x i8], ptr %2, i64 0, i64 0
  %13 = call i64 @strlen(ptr noundef %12) #3
  %14 = icmp ne i64 %13, 37
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 1, ptr %1, align 4
  br label %46

17:                                               ; preds = %0
  store i64 0, ptr %4, align 8
  br label %18

18:                                               ; preds = %34, %17
  %19 = load i64, ptr %4, align 8
  %20 = icmp ult i64 %19, 37
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i64, ptr %4, align 8
  %23 = getelementptr inbounds [50 x i8], ptr %2, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i64, ptr %4, align 8
  %27 = getelementptr inbounds [37 x i8], ptr @fl4g, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = xor i32 %25, %29
  %31 = trunc i32 %30 to i8
  %32 = load i64, ptr %4, align 8
  %33 = getelementptr inbounds [37 x i8], ptr %3, i64 0, i64 %32
  store i8 %31, ptr %33, align 1
  br label %34

34:                                               ; preds = %21
  %35 = load i64, ptr %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, ptr %4, align 8
  br label %18, !llvm.loop !6

37:                                               ; preds = %18
  %38 = getelementptr inbounds [37 x i8], ptr %3, i64 0, i64 0
  %39 = call i32 @memcmp(ptr noundef %38, ptr noundef @RealOrFakeFlag, i64 noundef 37) #3
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %45

43:                                               ; preds = %37
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %45

45:                                               ; preds = %43, %41
  store i32 0, ptr %1, align 4
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, ptr %1, align 4
  ret i32 %47
}

declare i32 @printf(ptr noundef, ...) #1

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strcspn(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Debian clang version 16.0.6 (20)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
