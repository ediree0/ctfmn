.class public final Lmn/haruulzangi/composeyourflag/ui/theme/ThemeKt;
.super Ljava/lang/Object;
.source "Theme.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a*\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0011\u0010\u0007\u001a\r\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0008\tH\u0007\u00a2\u0006\u0002\u0010\n\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "DarkColorPalette",
        "Landroidx/compose/material/Colors;",
        "LightColorPalette",
        "ComposeYourFlagTheme",
        "",
        "darkTheme",
        "",
        "content",
        "Lkotlin/Function0;",
        "Landroidx/compose/runtime/Composable;",
        "(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V",
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
.field private static final DarkColorPalette:Landroidx/compose/material/Colors;

.field private static final LightColorPalette:Landroidx/compose/material/Colors;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 10
    invoke-static {}, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->getPurple200()J

    move-result-wide v0

    .line 11
    invoke-static {}, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->getPurple700()J

    move-result-wide v2

    .line 12
    invoke-static {}, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->getTeal200()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0xff8

    const/16 v25, 0x0

    .line 9
    invoke-static/range {v0 .. v25}, Landroidx/compose/material/ColorsKt;->darkColors-2qZNXz8$default(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/Colors;

    move-result-object v0

    sput-object v0, Lmn/haruulzangi/composeyourflag/ui/theme/ThemeKt;->DarkColorPalette:Landroidx/compose/material/Colors;

    .line 16
    invoke-static {}, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->getPurple500()J

    move-result-wide v1

    .line 17
    invoke-static {}, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->getPurple700()J

    move-result-wide v3

    .line 18
    invoke-static {}, Lmn/haruulzangi/composeyourflag/ui/theme/ColorKt;->getTeal200()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0xff8

    const/16 v26, 0x0

    .line 15
    invoke-static/range {v1 .. v26}, Landroidx/compose/material/ColorsKt;->lightColors-2qZNXz8$default(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/Colors;

    move-result-object v0

    sput-object v0, Lmn/haruulzangi/composeyourflag/ui/theme/ThemeKt;->LightColorPalette:Landroidx/compose/material/Colors;

    return-void
.end method

.method public static final ComposeYourFlagTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x6223a66f

    .line 31
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v0, "C(ComposeYourFlagTheme)P(1)"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_1

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_2
    and-int/lit8 v1, p3, 0x70

    if-nez v1, :cond_4

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    goto :goto_2

    :cond_3
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_4
    :goto_3
    and-int/lit8 v1, v0, 0x5b

    xor-int/lit8 v1, v1, 0x12

    if-nez v1, :cond_6

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 44
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_8

    :cond_6
    :goto_4
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_8

    .line 31
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipCurrentGroup()V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a

    and-int/lit8 v0, v0, -0xf

    goto :goto_6

    :cond_8
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_9

    const/4 p0, 0x0

    invoke-static {p2, p0}, Landroidx/compose/foundation/DarkThemeKt;->isSystemInDarkTheme(Landroidx/compose/runtime/Composer;I)Z

    move-result p0

    and-int/lit8 v0, v0, -0xf

    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    :cond_a
    :goto_6
    if-eqz p0, :cond_b

    .line 33
    sget-object v1, Lmn/haruulzangi/composeyourflag/ui/theme/ThemeKt;->DarkColorPalette:Landroidx/compose/material/Colors;

    goto :goto_7

    .line 35
    :cond_b
    sget-object v1, Lmn/haruulzangi/composeyourflag/ui/theme/ThemeKt;->LightColorPalette:Landroidx/compose/material/Colors;

    .line 40
    :goto_7
    invoke-static {}, Lmn/haruulzangi/composeyourflag/ui/theme/TypeKt;->getTypography()Landroidx/compose/material/Typography;

    move-result-object v2

    .line 41
    invoke-static {}, Lmn/haruulzangi/composeyourflag/ui/theme/ShapeKt;->getShapes()Landroidx/compose/material/Shapes;

    move-result-object v3

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit16 v6, v0, 0x1b0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    .line 38
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/MaterialThemeKt;->MaterialTheme(Landroidx/compose/material/Colors;Landroidx/compose/material/Typography;Landroidx/compose/material/Shapes;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 44
    :goto_8
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_c

    goto :goto_9

    :cond_c
    new-instance v0, Lmn/haruulzangi/composeyourflag/ui/theme/ThemeKt$ComposeYourFlagTheme$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lmn/haruulzangi/composeyourflag/ui/theme/ThemeKt$ComposeYourFlagTheme$1;-><init>(ZLkotlin/jvm/functions/Function2;II)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_9
    return-void
.end method
