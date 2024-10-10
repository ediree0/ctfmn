.class public final Lmn/haruulzangi/composeyourflag/ui/theme/ShapeKt;
.super Ljava/lang/Object;
.source "Shape.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shape.kt\nmn/haruulzangi/composeyourflag/ui/theme/ShapeKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,11:1\n155#2:12\n155#2:13\n155#2:14\n*S KotlinDebug\n*F\n+ 1 Shape.kt\nmn/haruulzangi/composeyourflag/ui/theme/ShapeKt\n*L\n8#1:12\n9#1:13\n10#1:14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Shapes",
        "Landroidx/compose/material/Shapes;",
        "getShapes",
        "()Landroidx/compose/material/Shapes;",
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
.field private static final Shapes:Landroidx/compose/material/Shapes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Landroidx/compose/material/Shapes;

    const/4 v1, 0x4

    int-to-float v1, v1

    .line 12
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 8
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 13
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 9
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/shape/CornerBasedShape;

    const/4 v3, 0x0

    int-to-float v3, v3

    .line 14
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 10
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 7
    invoke-direct {v0, v2, v1, v3}, Landroidx/compose/material/Shapes;-><init>(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;)V

    sput-object v0, Lmn/haruulzangi/composeyourflag/ui/theme/ShapeKt;->Shapes:Landroidx/compose/material/Shapes;

    return-void
.end method

.method public static final getShapes()Landroidx/compose/material/Shapes;
    .locals 1

    .line 7
    sget-object v0, Lmn/haruulzangi/composeyourflag/ui/theme/ShapeKt;->Shapes:Landroidx/compose/material/Shapes;

    return-object v0
.end method
