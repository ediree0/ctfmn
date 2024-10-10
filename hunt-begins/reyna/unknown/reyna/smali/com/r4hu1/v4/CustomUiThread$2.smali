.class Lcom/r4hu1/snakefinals/CustomUiThread$2;
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

    .line 47
    iput-object p1, p0, Lcom/r4hu1/snakefinals/CustomUiThread$2;->this$0:Lcom/r4hu1/snakefinals/CustomUiThread;

    iput-object p2, p0, Lcom/r4hu1/snakefinals/CustomUiThread$2;->val$deleteDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/r4hu1/snakefinals/CustomUiThread$2;->val$deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 51
    iget-object p1, p0, Lcom/r4hu1/snakefinals/CustomUiThread$2;->this$0:Lcom/r4hu1/snakefinals/CustomUiThread;

    invoke-virtual {p1}, Lcom/r4hu1/snakefinals/CustomUiThread;->spawnActivity()V

    return-void
.end method
