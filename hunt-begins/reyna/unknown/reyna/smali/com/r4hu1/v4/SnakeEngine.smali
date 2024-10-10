.class public Lcom/r4hu1/snakefinals/SnakeEngine;
.super Landroid/view/SurfaceView;
.source "SnakeEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/r4hu1/snakefinals/SnakeEngine$Heading;
    }
.end annotation


# instance fields
.field private final MILLIS_PER_SECOND:J

.field private final NUM_BLOCKS_WIDE:I

.field public final TAG:Ljava/lang/String;

.field private blockSize:I

.field private canvas:Landroid/graphics/Canvas;

.field private context:Landroid/content/Context;

.field private heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

.field private volatile isPlaying:Z

.field private mouseX:I

.field private mouseY:I

.field private nextFrameTime:J

.field private numBlocksHigh:I

.field private paint:Landroid/graphics/Paint;

.field private score:I

.field private screenX:I

.field private screenY:I

.field private snakeLength:I

.field private snakeXs:[I

.field private snakeYs:[I

.field private final speed:J

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 3

    .line 52
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 24
    const-class v0, Lcom/r4hu1/snakefinals/SnakeEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->thread:Ljava/lang/Thread;

    .line 31
    sget-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->RIGHT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    const/16 v0, 0x12

    .line 38
    iput v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->NUM_BLOCKS_WIDE:I

    const-wide/16 v1, 0x8

    .line 41
    iput-wide v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->speed:J

    const-wide/16 v1, 0x3e8

    .line 42
    iput-wide v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->MILLIS_PER_SECOND:J

    .line 53
    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->context:Landroid/content/Context;

    .line 54
    iget p1, p2, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->screenX:I

    .line 55
    iget p1, p2, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->screenY:I

    .line 56
    iget p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->screenX:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->blockSize:I

    .line 57
    iget p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->screenY:I

    iget p2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->blockSize:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->numBlocksHigh:I

    .line 58
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->paint:Landroid/graphics/Paint;

    const/16 p1, 0xc8

    new-array p2, p1, [I

    .line 60
    iput-object p2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    new-array p1, p1, [I

    .line 61
    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    .line 62
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->newGame()V

    return-void
.end method

.method private Check(II)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->integerFromJNI()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, -0x5

    if-ne p2, v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->integerFromJNI()I

    move-result p2

    add-int/lit8 p2, p2, 0x6

    if-ne p1, p2, :cond_0

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->stringFromJNI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "String from JNI! "

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/r4hu1/snakefinals/SnakeEngine;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->context:Landroid/content/Context;

    return-object p0
.end method

.method private detectDeath()Z
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    iget-object v4, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    aget v4, v4, v1

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    const/4 v0, 0x1

    .line 157
    :cond_1
    iget-object v4, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    aget v4, v4, v1

    if-ne v4, v2, :cond_2

    const/4 v0, 0x1

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    aget v2, v2, v1

    iget v4, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->numBlocksHigh:I

    if-ne v2, v4, :cond_3

    const/4 v0, 0x1

    .line 160
    :cond_3
    iget v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeLength:I

    sub-int/2addr v2, v3

    :goto_1
    if-lez v2, :cond_5

    const/4 v4, 0x4

    if-le v2, v4, :cond_4

    .line 161
    iget-object v4, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    aget v5, v4, v1

    aget v4, v4, v2

    if-ne v5, v4, :cond_4

    iget-object v4, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    aget v5, v4, v1

    aget v4, v4, v2

    if-ne v5, v4, :cond_4

    const/4 v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method private eatMouse()V
    .locals 1

    .line 111
    iget v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeLength:I

    .line 112
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->spawnMouse()V

    .line 113
    iget v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->score:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->score:I

    return-void
.end method

.method private moveSnake()V
    .locals 4

    .line 129
    iget v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeLength:I

    :goto_0
    if-lez v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    add-int/lit8 v2, v0, -0x1

    aget v3, v1, v2

    aput v3, v1, v0

    .line 131
    iget-object v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    aget v2, v1, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lcom/r4hu1/snakefinals/SnakeEngine$2;->$SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I

    iget-object v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-virtual {v1}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    aget v3, v0, v1

    sub-int/2addr v3, v2

    aput v3, v0, v1

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    aget v3, v0, v1

    add-int/2addr v3, v2

    aput v3, v0, v1

    goto :goto_1

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    aget v3, v0, v1

    add-int/2addr v3, v2

    aput v3, v0, v1

    goto :goto_1

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    aget v3, v0, v1

    sub-int/2addr v3, v2

    aput v3, v0, v1

    :goto_1
    return-void
.end method

.method private popUpWindow()V
    .locals 2

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    new-instance v1, Lcom/r4hu1/snakefinals/SnakeEngine$1;

    invoke-direct {v1, p0}, Lcom/r4hu1/snakefinals/SnakeEngine$1;-><init>(Lcom/r4hu1/snakefinals/SnakeEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 11

    .line 209
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->canvas:Landroid/graphics/Canvas;

    .line 211
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->canvas:Landroid/graphics/Canvas;

    const/16 v1, 0x1a

    const/16 v2, 0x80

    const/16 v3, 0xb6

    const/16 v4, 0xff

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 212
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->paint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Score:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x428c0000    # 70.0f

    iget-object v5, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 216
    :goto_0
    iget v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeLength:I

    if-ge v1, v2, :cond_0

    .line 217
    iget-object v5, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    aget v3, v2, v1

    iget v6, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->blockSize:I

    mul-int v3, v3, v6

    int-to-float v3, v3

    iget-object v7, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    aget v8, v7, v1

    mul-int v8, v8, v6

    int-to-float v8, v8

    aget v2, v2, v1

    mul-int v2, v2, v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v7, v7, v1

    mul-int v7, v7, v6

    add-int/2addr v7, v6

    int-to-float v9, v7

    iget-object v10, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->paint:Landroid/graphics/Paint;

    move v6, v3

    move v7, v8

    move v8, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->paint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->canvas:Landroid/graphics/Canvas;

    iget v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->mouseX:I

    iget v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->blockSize:I

    mul-int v3, v0, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->mouseY:I

    mul-int v5, v4, v1

    int-to-float v5, v5

    mul-int v0, v0, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-int v4, v4, v1

    add-int/2addr v4, v1

    int-to-float v6, v4

    iget-object v7, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->paint:Landroid/graphics/Paint;

    move v4, v5

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public native integerFromJNI()I
.end method

.method public newGame()V
    .locals 3

    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeLength:I

    .line 96
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    iget v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->numBlocksHigh:I

    div-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 99
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->spawnMouse()V

    .line 100
    iput v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->score:I

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->nextFrameTime:J

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->screenX:I

    const/4 v2, 0x2

    div-int/2addr v0, v2

    int-to-float v0, v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    .line 249
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$2;->$SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I

    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-virtual {v0}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->UP:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    goto :goto_0

    .line 257
    :cond_2
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->LEFT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    goto :goto_0

    .line 254
    :cond_3
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->DOWN:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    goto :goto_0

    .line 251
    :cond_4
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->RIGHT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    goto :goto_0

    .line 264
    :cond_5
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$2;->$SwitchMap$com$r4hu1$snakefinals$SnakeEngine$Heading:[I

    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    invoke-virtual {v0}, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v1, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    goto :goto_0

    .line 269
    :cond_6
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->DOWN:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    goto :goto_0

    .line 272
    :cond_7
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->RIGHT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    goto :goto_0

    .line 275
    :cond_8
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->UP:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    goto :goto_0

    .line 266
    :cond_9
    sget-object p1, Lcom/r4hu1/snakefinals/SnakeEngine$Heading;->LEFT:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->heading:Lcom/r4hu1/snakefinals/SnakeEngine$Heading;

    :goto_0
    return v1
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->isPlaying:Z

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->isPlaying:Z

    .line 90
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->thread:Ljava/lang/Thread;

    .line 91
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 68
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->isPlaying:Z

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->updateRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->update()V

    .line 72
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->draw()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public spawnMouse()V
    .locals 2

    .line 105
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x11

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->mouseX:I

    .line 107
    iget v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->numBlocksHigh:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->mouseY:I

    return-void
.end method

.method public native stringFromJNI()Ljava/lang/String;
.end method

.method public trialCheck()Z
    .locals 3

    .line 236
    iget v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->score:I

    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->integerFromJNI()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 237
    iput v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->score:I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public update()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeXs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->mouseX:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeYs:[I

    aget v0, v0, v1

    iget v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->mouseY:I

    if-ne v0, v1, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->eatMouse()V

    .line 172
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->trialCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->popUpWindow()V

    const/4 v0, 0x1

    .line 174
    iput v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeLength:I

    .line 176
    :cond_0
    iget v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->snakeLength:I

    iget v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->score:I

    invoke-direct {p0, v0, v1}, Lcom/r4hu1/snakefinals/SnakeEngine;->Check(II)V

    .line 179
    :cond_1
    invoke-direct {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->moveSnake()V

    .line 181
    invoke-direct {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->detectDeath()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/SnakeEngine;->newGame()V

    :cond_2
    return-void
.end method

.method public updateRequired()Z
    .locals 5

    .line 200
    iget-wide v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->nextFrameTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/r4hu1/snakefinals/SnakeEngine;->nextFrameTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
