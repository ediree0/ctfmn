.class final Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PasswordScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
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
.field final synthetic $keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field final synthetic $onSubmitPassword:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $password$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/SoftwareKeyboardController;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$1$2$1;->$keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iput-object p2, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$1$2$1;->$onSubmitPassword:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$1$2$1;->$password$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$1$2$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 41
    iget-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$1$2$1;->$keyboardController:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/platform/SoftwareKeyboardController;->hide()V

    .line 42
    :goto_0
    iget-object v0, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$1$2$1;->$onSubmitPassword:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1$1$1$2$1;->$password$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lmn/haruulzangi/composeyourflag/ui/screens/PasswordScreenKt$PasswordScreen$1;->access$invoke$lambda-7$lambda-5$lambda-1(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
