.class Lcom/droidhang/util/net/DHSimpleHttpThread$1;
.super Ljava/lang/Object;
.source "DHSimpleHttpThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/util/net/DHSimpleHttpThread;->httpComplete(Lcom/droidhang/util/net/DHHttpTask;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/util/net/DHSimpleHttpThread;

.field final synthetic val$result:Ljava/lang/String;

.field final synthetic val$succeed:Z

.field final synthetic val$task:Lcom/droidhang/util/net/DHHttpTask;


# direct methods
.method constructor <init>(Lcom/droidhang/util/net/DHSimpleHttpThread;Lcom/droidhang/util/net/DHHttpTask;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->this$0:Lcom/droidhang/util/net/DHSimpleHttpThread;

    iput-object p2, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$task:Lcom/droidhang/util/net/DHHttpTask;

    iput-boolean p3, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$succeed:Z

    iput-object p4, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$task:Lcom/droidhang/util/net/DHHttpTask;

    invoke-virtual {v0}, Lcom/droidhang/util/net/DHHttpTask;->getObserver()Lcom/droidhang/util/net/DHSimpleHttpObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$task:Lcom/droidhang/util/net/DHHttpTask;

    invoke-virtual {v0}, Lcom/droidhang/util/net/DHHttpTask;->getObserver()Lcom/droidhang/util/net/DHSimpleHttpObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$task:Lcom/droidhang/util/net/DHHttpTask;

    invoke-virtual {v1}, Lcom/droidhang/util/net/DHHttpTask;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$succeed:Z

    iget-object v3, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$result:Ljava/lang/String;

    iget-object v4, p0, Lcom/droidhang/util/net/DHSimpleHttpThread$1;->val$task:Lcom/droidhang/util/net/DHHttpTask;

    invoke-virtual {v4}, Lcom/droidhang/util/net/DHHttpTask;->getPurchase()Lcom/droidhang/pay/util/Purchase;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/droidhang/util/net/DHSimpleHttpObserver;->onAsyncHttpComplete(Ljava/lang/String;ZLjava/lang/String;Lcom/droidhang/pay/util/Purchase;)V

    .line 128
    :cond_0
    return-void
.end method
