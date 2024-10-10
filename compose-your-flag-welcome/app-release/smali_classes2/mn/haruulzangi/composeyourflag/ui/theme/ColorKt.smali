.class public final Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;
.super Ljava/lang/Object;
.source "Color.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\"\u0016\u0010\u0000\u001a\u00020\u0001\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0005\u001a\u00020\u0001\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0006\u0010\u0003\"\u0016\u0010\u0007\u001a\u00020\u0001\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0003\"\u0016\u0010\t\u001a\u00020\u0001\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0004\u001a\u0004\u0008\n\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Purple200",
        "Landroidx/compose/ui/graphics/Color;",
        "getPurple200",
        "()J",
        "J",
        "Purple500",
        "getPurple500",
        "Purple700",
        "getPurple700",
        "Teal200",
        "getTeal200",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Purple200:J

.field private static final Purple500:J

.field private static final Purple700:J

.field private static final Teal200:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0xffbb86fcL

    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->Purple200:J

    const-wide v0, 0xff6200eeL

    .line 6
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->Purple500:J

    const-wide v0, 0xff3700b3L

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->Purple700:J

    const-wide v0, 0xff03dac5L

    .line 8
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v0

    sput-wide v0, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->Teal200:J

    return-void
.end method

.method public static final getPurple200()J
    .locals 2

    .line 5
    sget-wide v0, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->Purple200:J

    return-wide v0
.end method

.method public static final getPurple500()J
    .locals 2

    .line 6
    sget-wide v0, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->Purple500:J

    return-wide v0
.end method

.method public static final getPurple700()J
    .locals 2

    .line 7
    sget-wide v0, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->Purple700:J

    return-wide v0
.end method

.method public static final getTeal200()J
    .locals 2

    .line 8
    sget-wide v0, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->Teal200:J

    return-wide v0
.end method
