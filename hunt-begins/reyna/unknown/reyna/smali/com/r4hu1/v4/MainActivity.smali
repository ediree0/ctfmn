.class public Lcom/r4hu1/snakefinals/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field snakeEngine:Lcom/r4hu1/snakefinals/SnakeEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 19
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 21
    new-instance p1, Lcom/r4hu1/snakefinals/SnakeEngine;

    invoke-direct {p1, p0, v0}, Lcom/r4hu1/snakefinals/SnakeEngine;-><init>(Landroid/content/Context;Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/r4hu1/snakefinals/MainActivity;->snakeEngine:Lcom/r4hu1/snakefinals/SnakeEngine;

    .line 22
    iget-object p1, p0, Lcom/r4hu1/snakefinals/MainActivity;->snakeEngine:Lcom/r4hu1/snakefinals/SnakeEngine;

    invoke-virtual {p0, p1}, Lcom/r4hu1/snakefinals/MainActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 34
    iget-object v0, p0, Lcom/r4hu1/snakefinals/MainActivity;->snakeEngine:Lcom/r4hu1/snakefinals/SnakeEngine;

    invoke-virtual {v0}, Lcom/r4hu1/snakefinals/SnakeEngine;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    iget-object v0, p0, Lcom/r4hu1/snakefinals/MainActivity;->snakeEngine:Lcom/r4hu1/snakefinals/SnakeEngine;

    invoke-virtual {v0}, Lcom/r4hu1/snakefinals/SnakeEngine;->resume()V

    return-void
.end method
