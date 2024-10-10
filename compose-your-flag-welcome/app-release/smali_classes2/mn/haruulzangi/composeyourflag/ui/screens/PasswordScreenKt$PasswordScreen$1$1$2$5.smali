.class final Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$2$5;
.super Lkotlin/jvm/internal/Lambda;
.source "PasswordScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/animation/AnimatedVisibilityScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPasswordScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordScreen.kt\nmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$2$5\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,77:1\n155#2:78\n*S KotlinDebug\n*F\n+ 1 PasswordScreen.kt\nmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$2$5\n*L\n62#1:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $state:Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;


# direct methods
.method constructor <init>(Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;)V
    .locals 0

    iput-object p1, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$2$5;->$state:Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$2$5;->invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/runtime/Composer;I)V
    .locals 15

    const-string v0, "$this$AnimatedVisibility"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v0, Landroidx/compose/ui/Modifier;

    const/16 v1, 0x10

    int-to-float v1, v1

    .line 78
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 62
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    new-instance v0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$2$5$1;

    move-object v1, p0

    iget-object v3, v1, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$2$5;->$state:Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;

    invoke-direct {v0, v3}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$2$5$1;-><init>(Lmn/haruulzangi/composeyourflag/ui/screens/PasswordState;)V

    const v3, -0x30de93e4

    const/4 v4, 0x1

    move-object/from16 v12, p2

    invoke-static {v12, v3, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const v13, 0xc00006

    const/16 v14, 0x7e

    invoke-static/range {v2 .. v14}, Landroidx/compose/material/SnackbarKt;->Snackbar-7zSek6w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
