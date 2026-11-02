.class final Lcom/tapjoy/TJEventOptimizer$1;
.super Ljava/lang/Object;
.source "TJEventOptimizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJEventOptimizer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/tapjoy/TJEventOptimizer;

    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$1;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TJEventOptimizer;-><init>(Landroid/content/Context;Lcom/tapjoy/TJEventOptimizer$1;)V

    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->access$202(Lcom/tapjoy/TJEventOptimizer;)Lcom/tapjoy/TJEventOptimizer;

    .line 66
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->access$400()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 67
    return-void
.end method
