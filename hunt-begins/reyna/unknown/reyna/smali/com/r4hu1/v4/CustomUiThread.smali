.class public Lcom/r4hu1/snakefinals/CustomUiThread;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CustomUiThread.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001d

    .line 17
    invoke-virtual {p0, p1}, Lcom/r4hu1/snakefinals/CustomUiThread;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/CustomUiThread;->popUp()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/r4hu1/snakefinals/CustomUiThread;->popUp()V

    const/4 p1, 0x1

    return p1
.end method

.method popUp()V
    .locals 4

    .line 35
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090025

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v2, 0x7f07005b

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/r4hu1/snakefinals/CustomUiThread$1;

    invoke-direct {v3, p0, v1}, Lcom/r4hu1/snakefinals/CustomUiThread$1;-><init>(Lcom/r4hu1/snakefinals/CustomUiThread;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f070052

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/r4hu1/snakefinals/CustomUiThread$2;

    invoke-direct {v2, p0, v1}, Lcom/r4hu1/snakefinals/CustomUiThread$2;-><init>(Lcom/r4hu1/snakefinals/CustomUiThread;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method spawnActivity()V
    .locals 2

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/r4hu1/snakefinals/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/r4hu1/snakefinals/CustomUiThread;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
