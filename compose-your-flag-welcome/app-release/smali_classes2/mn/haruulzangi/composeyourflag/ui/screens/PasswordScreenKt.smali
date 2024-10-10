.class public final Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt;
.super Ljava/lang/Object;
.source "PasswordScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u001a)\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0007\u001a\r\u0010\u0008\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "PasswordScreen",
        "",
        "state",
        "Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;",
        "onSubmitPassword",
        "Lkotlin/Function1;",
        "",
        "(Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "PasswordScreenPreview",
        "(Landroidx/compose/runtime/Composer;I)V",
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


# direct methods
.method public static final PasswordScreen(Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "state"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "onSubmitPassword"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x199fbb32

    move-object/from16 v4, p2

    .line 21
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    const-string v4, "C(PasswordScreen)P(1)"

    invoke-static {v3, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0xe

    if-nez v4, :cond_1

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v2

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v5, v2, 0x70

    if-nez v5, :cond_3

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_3
    move v15, v4

    and-int/lit8 v4, v15, 0x5b

    xor-int/lit8 v4, v4, 0x12

    if-nez v4, :cond_5

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    .line 69
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move v4, v15

    move/from16 v15, v16

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const v5, -0x30de9aa6

    const/4 v6, 0x1

    .line 22
    new-instance v7, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1;

    invoke-direct {v7, v1, v4, v0}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1;-><init>(Lkotlin/jvm/functions/Function1;ILmn/haruulzangi/composeyourflag/ui/screens/PasswordState;)V

    invoke-static {v3, v5, v6, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Lkotlin/jvm/functions/Function3;

    const/high16 v28, 0x200000

    const/high16 v29, 0xc00000

    const v30, 0x1ffff

    move-object/from16 v27, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v30}, Landroidx/compose/material/ScaffoldKt;->Scaffold-27mzLpw(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ScaffoldState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;IZLkotlin/jvm/functions/Function3;ZLandroidx/compose/ui/graphics/Shape;FJJJJJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    .line 69
    :goto_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    new-instance v4, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$2;

    invoke-direct {v4, v0, v1, v2}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$2;-><init>(Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;Lkotlin/jvm/functions/Function1;I)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public static final PasswordScreenPreview(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const v0, -0x31e2f854

    .line 73
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    const-string v0, "C(PasswordScreenPreview)"

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lmn/haruulzangi/composeyourflag/ui/screens/ComposableSingletons$PasswordScreenKt;->INSTANCE:Lmn/haruulzangi/composeyourflag/ui/screens/ComposableSingletons$PasswordScreenKt;

    invoke-virtual {v0}, Lmn/haruulzangi/composeyourflag/ui/screens/ComposableSingletons$PasswordScreenKt;->getLambda-4$app_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-static {v2, v0, p0, v2, v1}, Lmn/haruulzangi/composeyourflag/ui/theme/ThemeKt;->ComposeYourFlagTheme(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 77
    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreenPreview$1;

    invoke-direct {v0, p1}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreenPreview$1;-><init>(I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2
    return-void
.end method
