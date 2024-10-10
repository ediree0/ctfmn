.class synthetic Lcom/r4hu1/snakefinals/SnakeEngine$2;
.super Ljava/lang/Object;
.source "SnakeEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/r4hu1/snakefinals/SnakeEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    invoke-static {}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->values()[Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$2;->$SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I

    :try_start_0
    sget-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$2;->$SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I

    sget-object v1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->UP:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-virtual {v1}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$2;->$SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I

    sget-object v1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->RIGHT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-virtual {v1}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$2;->$SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I

    sget-object v1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->DOWN:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-virtual {v1}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$2;->$SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I

    sget-object v1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->LEFT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-virtual {v1}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
