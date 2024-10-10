.class Lcom/r4hu1/snakefinals/SnakeEngine$1;
.super Ljava/lang/Object;
.source "SnakeEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/r4hu1/snakefinals/SnakeEngine;->popUpWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/r4hu1/snakefinals/SnakeEngine;


# direct methods
.method constructor <init>(Lcom/r4hu1/snakefinals/SnakeEngine;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/r4hu1/snakefinals/SnakeEngine$1;->this$0:Lcom/r4hu1/snakefinals/SnakeEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine$1;->this$0:Lcom/r4hu1/snakefinals/SnakeEngine;

    invoke-static {v1}, Lcom/r4hu1/snakefinals/SnakeEngine;->access$000(Lcom/r4hu1/snakefinals/SnakeEngine;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/r4hu1/snakefinals/CustomUiThread;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    iget-object v1, p0, Lcom/r4hu1/snakefinals/SnakeEngine$1;->this$0:Lcom/r4hu1/snakefinals/SnakeEngine;

    invoke-static {v1}, Lcom/r4hu1/snakefinals/SnakeEngine;->access$000(Lcom/r4hu1/snakefinals/SnakeEngine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
