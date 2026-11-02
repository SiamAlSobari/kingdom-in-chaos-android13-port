.class Lcom/wwcd/util/ProgressableTask$1;
.super Ljava/lang/Thread;
.source "ProgressableTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/ProgressableTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wwcd/util/ProgressableTask;


# direct methods
.method constructor <init>(Lcom/wwcd/util/ProgressableTask;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wwcd/util/ProgressableTask$1;->this$0:Lcom/wwcd/util/ProgressableTask;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask$1;->this$0:Lcom/wwcd/util/ProgressableTask;

    invoke-static {v0}, Lcom/wwcd/util/ProgressableTask;->access$000(Lcom/wwcd/util/ProgressableTask;)Lcom/wwcd/util/ProgressableRunnable;

    move-result-object v0

    invoke-interface {v0}, Lcom/wwcd/util/ProgressableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask$1;->this$0:Lcom/wwcd/util/ProgressableTask;

    invoke-static {v0}, Lcom/wwcd/util/ProgressableTask;->access$100(Lcom/wwcd/util/ProgressableTask;)V

    .line 49
    return-void

    .line 47
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/wwcd/util/ProgressableTask$1;->this$0:Lcom/wwcd/util/ProgressableTask;

    invoke-static {v1}, Lcom/wwcd/util/ProgressableTask;->access$100(Lcom/wwcd/util/ProgressableTask;)V

    throw v0
.end method
