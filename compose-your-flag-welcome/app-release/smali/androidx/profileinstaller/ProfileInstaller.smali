.class public Landroidx/profileinstaller/ProfileInstaller;
.super Ljava/lang/Object;
.source "ProfileInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileInstaller$ResultCode;,
        Landroidx/profileinstaller/ProfileInstaller$DiagnosticCode;,
        Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
    }
.end annotation


# static fields
.field public static final DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST:I = 0x2

.field public static final DIAGNOSTIC_CURRENT_PROFILE_EXISTS:I = 0x1

.field public static final DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST:I = 0x4

.field public static final DIAGNOSTIC_REF_PROFILE_EXISTS:I = 0x3

.field private static final EMPTY_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field static final LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field private static final MIN_MEANINGFUL_LENGTH:I = 0xa

.field private static final PROFILE_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/cur/0"

.field private static final PROFILE_FILE:Ljava/lang/String; = "primary.prof"

.field private static final PROFILE_REF_BASE_DIR:Ljava/lang/String; = "/data/misc/profiles/ref"

.field private static final PROFILE_SOURCE_LOCATION:Ljava/lang/String; = "dexopt/baseline.prof"

.field public static final RESULT_ALREADY_INSTALLED:I = 0x2

.field public static final RESULT_BASELINE_PROFILE_NOT_FOUND:I = 0x6

.field public static final RESULT_DESIRED_FORMAT_UNSUPPORTED:I = 0x5

.field public static final RESULT_INSTALL_SUCCESS:I = 0x1

.field public static final RESULT_IO_EXCEPTION:I = 0x7

.field public static final RESULT_NOT_WRITABLE:I = 0x4

.field public static final RESULT_PARSE_EXCEPTION:I = 0x8

.field public static final RESULT_UNSUPPORTED_ART_VERSION:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$1;

    invoke-direct {v0}, Landroidx/profileinstaller/ProfileInstaller$1;-><init>()V

    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->EMPTY_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 118
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$2;

    invoke-direct {v0}, Landroidx/profileinstaller/ProfileInstaller$2;-><init>()V

    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->LOG_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static diagnostic(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executor",
            "diagnostics",
            "code",
            "data"
        }
    .end annotation

    .line 102
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda1;-><init>(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$diagnostic$1(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V
    .locals 0

    .line 102
    invoke-interface {p0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onDiagnosticReceived(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$result$0(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V
    .locals 0

    .line 92
    invoke-interface {p0, p1, p2}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->onResultReceived(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$transcodeAndWrite$2(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;JLandroidx/profileinstaller/DeviceProfileWriter$ExistingProfileState;)Z
    .locals 10

    .line 377
    invoke-virtual {p4}, Landroidx/profileinstaller/DeviceProfileWriter$ExistingProfileState;->hasCurFile()Z

    move-result v4

    .line 378
    invoke-virtual {p4}, Landroidx/profileinstaller/DeviceProfileWriter$ExistingProfileState;->getCurLength()J

    move-result-wide v5

    .line 379
    invoke-virtual {p4}, Landroidx/profileinstaller/DeviceProfileWriter$ExistingProfileState;->hasRefFile()Z

    move-result v7

    .line 380
    invoke-virtual {p4}, Landroidx/profileinstaller/DeviceProfileWriter$ExistingProfileState;->getRefLength()J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 373
    invoke-static/range {v0 .. v9}, Landroidx/profileinstaller/ProfileInstaller;->shouldSkipInstall(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;JZJZJ)Z

    move-result p0

    return p0
.end method

.method static result(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executor",
            "diagnostics",
            "code",
            "data"
        }
    .end annotation

    .line 92
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda2;-><init>(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static shouldSkipInstall(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;JZJZJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executor",
            "diagnostics",
            "baselineLength",
            "curExists",
            "curLength",
            "refExists",
            "refLength"
        }
    .end annotation

    const-wide/16 v0, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    cmp-long p4, p5, v0

    if-lez p4, :cond_0

    .line 292
    invoke-static {p0, p1, v2, v4}, Landroidx/profileinstaller/ProfileInstaller;->diagnostic(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-static {p0, p1, v3, v4}, Landroidx/profileinstaller/ProfileInstaller;->diagnostic(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    :goto_0
    if-eqz p7, :cond_1

    cmp-long p4, p8, v0

    if-lez p4, :cond_1

    const/4 p4, 0x3

    .line 298
    invoke-static {p0, p1, p4, v4}, Landroidx/profileinstaller/ProfileInstaller;->diagnostic(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p4, 0x4

    .line 300
    invoke-static {p0, p1, p4, v4}, Landroidx/profileinstaller/ProfileInstaller;->diagnostic(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-lez p4, :cond_2

    cmp-long p7, p2, p5

    if-nez p7, :cond_2

    .line 307
    invoke-static {p0, p1, v3, v4}, Landroidx/profileinstaller/ProfileInstaller;->result(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return v2

    :cond_2
    if-lez p4, :cond_3

    cmp-long p7, p2, p8

    if-nez p7, :cond_3

    .line 315
    invoke-static {p0, p1, v3, v4}, Landroidx/profileinstaller/ProfileInstaller;->result(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return v2

    :cond_3
    if-lez p4, :cond_5

    cmp-long p4, p2, p5

    if-ltz p4, :cond_4

    cmp-long p2, p2, p8

    if-gez p2, :cond_5

    .line 330
    :cond_4
    invoke-static {p0, p1, v3, v4}, Landroidx/profileinstaller/ProfileInstaller;->result(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private static transcodeAndWrite(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "assets",
            "packageName",
            "apkName",
            "executor",
            "diagnostics"
        }
    .end annotation

    .line 352
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 p0, 0x3

    const/4 p1, 0x0

    .line 353
    invoke-static {p3, p4, p0, p1}, Landroidx/profileinstaller/ProfileInstaller;->result(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return-void

    .line 356
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/profiles/cur/0"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "primary.prof"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/profiles/ref"

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    new-instance p1, Landroidx/profileinstaller/DeviceProfileWriter;

    const-string v5, "dexopt/baseline.prof"

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Landroidx/profileinstaller/DeviceProfileWriter;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 368
    invoke-virtual {p1}, Landroidx/profileinstaller/DeviceProfileWriter;->deviceAllowsProfileInstallerAotWrites()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 372
    :cond_1
    new-instance p0, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;

    invoke-direct {p0, p3, p4}, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V

    .line 383
    invoke-virtual {p1, p0}, Landroidx/profileinstaller/DeviceProfileWriter;->copyProfileOrRead(Landroidx/profileinstaller/DeviceProfileWriter$SkipStrategy;)Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p1

    .line 384
    invoke-virtual {p1}, Landroidx/profileinstaller/DeviceProfileWriter;->transcodeIfNeeded()Landroidx/profileinstaller/DeviceProfileWriter;

    move-result-object p1

    .line 385
    invoke-virtual {p1, p0}, Landroidx/profileinstaller/DeviceProfileWriter;->writeIfNeeded(Landroidx/profileinstaller/DeviceProfileWriter$SkipStrategy;)V

    return-void
.end method

.method public static writeProfile(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 413
    sget-object v0, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;->INSTANCE:Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    sget-object v1, Landroidx/profileinstaller/ProfileInstaller;->EMPTY_DIAGNOSTICS:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    invoke-static {p0, v0, v1}, Landroidx/profileinstaller/ProfileInstaller;->writeProfile(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V

    return-void
.end method

.method public static writeProfile(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "executor",
            "diagnostics"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 452
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 453
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-static {p0, v0, v1, p1, p2}, Landroidx/profileinstaller/ProfileInstaller;->transcodeAndWrite(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;)V

    return-void
.end method
