.class Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;
.super Ljava/lang/Object;
.source "SimpleHttpThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

.field final synthetic val$data:[B

.field final synthetic val$finalSucceed:Z

.field final synthetic val$finalTask:Lcom/droidhang/crosspromotion/util/net/HttpTask;


# direct methods
.method constructor <init>(Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;Lcom/droidhang/crosspromotion/util/net/HttpTask;Z[B)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;->this$0:Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread;

    iput-object p2, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;->val$finalTask:Lcom/droidhang/crosspromotion/util/net/HttpTask;

    iput-boolean p3, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;->val$finalSucceed:Z

    iput-object p4, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;->val$finalTask:Lcom/droidhang/crosspromotion/util/net/HttpTask;

    invoke-virtual {v0}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->getObserver()Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;->val$finalTask:Lcom/droidhang/crosspromotion/util/net/HttpTask;

    invoke-virtual {v0}, Lcom/droidhang/crosspromotion/util/net/HttpTask;->getObserver()Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;

    move-result-object v0

    iget-boolean v1, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;->val$finalSucceed:Z

    iget-object v2, p0, Lcom/droidhang/crosspromotion/util/net/SimpleHttpThread$1;->val$data:[B

    invoke-interface {v0, v1, v2}, Lcom/droidhang/crosspromotion/util/net/SimpleHttpObserver;->onAsyncHttpComplete(Z[B)V

    .line 125
    :cond_0
    return-void
.end method
