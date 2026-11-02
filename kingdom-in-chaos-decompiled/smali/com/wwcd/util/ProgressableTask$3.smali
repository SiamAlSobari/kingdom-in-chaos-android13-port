.class Lcom/wwcd/util/ProgressableTask$3;
.super Ljava/lang/Object;
.source "ProgressableTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/ProgressableTask;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wwcd/util/ProgressableTask;


# direct methods
.method constructor <init>(Lcom/wwcd/util/ProgressableTask;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wwcd/util/ProgressableTask$3;->this$0:Lcom/wwcd/util/ProgressableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask$3;->this$0:Lcom/wwcd/util/ProgressableTask;

    invoke-virtual {v0}, Lcom/wwcd/util/ProgressableTask;->cancel()V

    .line 80
    return-void
.end method
