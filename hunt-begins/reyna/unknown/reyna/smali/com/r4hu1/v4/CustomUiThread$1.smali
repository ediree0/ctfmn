.class Lcom/r4hu1/snakefinals/CustomUiThread$1;
.super Ljava/lang/Object;
.source "CustomUiThread.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/r4hu1/snakefinals/CustomUiThread;->popUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/r4hu1/snakefinals/CustomUiThread;

.field final synthetic val$deleteDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/r4hu1/snakefinals/CustomUiThread;Landroid/app/AlertDialog;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/r4hu1/snakefinals/CustomUiThread$1;->this$0:Lcom/r4hu1/snakefinals/CustomUiThread;

    iput-object p2, p0, Lcom/r4hu1/snakefinals/CustomUiThread$1;->val$deleteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/r4hu1/snakefinals/CustomUiThread$1;->val$deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 43
    iget-object p1, p0, Lcom/r4hu1/snakefinals/CustomUiThread$1;->this$0:Lcom/r4hu1/snakefinals/CustomUiThread;

    const v0, 0x7f090024

    invoke-virtual {p1, v0}, Lcom/r4hu1/snakefinals/CustomUiThread;->setContentView(I)V

    return-void
.end method
