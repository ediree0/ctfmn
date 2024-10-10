.class public final enum Lcom/r4hu1/snakefinals/SnakeEngine$Heading;
.super Ljava/lang/Enum;
.source "SnakeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/r4hu1/snakefinals/SnakeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Heading"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/r4hu1/snakefinals/SnakeEngine$Heading;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

.field public static final enum DOWN:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

.field public static final enum LEFT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

.field public static final enum RIGHT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

.field public static final enum UP:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    const/4 v1, 0x0

    const-string v2, "UP"

    invoke-direct {v0, v2, v1}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->UP:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    new-instance v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    const/4 v2, 0x1

    const-string v3, "RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->RIGHT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    new-instance v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    const/4 v3, 0x2

    const-string v4, "DOWN"

    invoke-direct {v0, v4, v3}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->DOWN:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    new-instance v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    const/4 v4, 0x3

    const-string v5, "LEFT"

    invoke-direct {v0, v5, v4}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->LEFT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    sget-object v5, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->UP:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    aput-object v5, v0, v1

    sget-object v1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->RIGHT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    aput-object v1, v0, v2

    sget-object v1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->DOWN:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    aput-object v1, v0, v3

    sget-object v1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->LEFT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    aput-object v1, v0, v4

    sput-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->$VALUES:[Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/r4hu1/snakefinals/SnakeEngine$Heading;
    .locals 1

    .line 30
    const-class v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    return-object p0
.end method

.method public static values()[Lcom/r4hu1/snakefinals/SnakeEngine$Heading;
    .locals 1

    .line 30
    sget-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->$VALUES:[Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-virtual {v0}, [Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    return-object v0
.end method
