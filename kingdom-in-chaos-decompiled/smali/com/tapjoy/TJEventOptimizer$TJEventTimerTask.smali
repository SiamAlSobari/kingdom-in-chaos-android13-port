.class Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;
.super Ljava/util/TimerTask;
.source "TJEventOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJEventOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TJEventTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJEventOptimizer;

.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJEventOptimizer;Ljava/lang/String;)V
    .locals 0
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->this$0:Lcom/tapjoy/TJEventOptimizer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->token:Ljava/lang/String;

    .line 201
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->this$0:Lcom/tapjoy/TJEventOptimizer;

    invoke-static {v1}, Lcom/tapjoy/TJEventOptimizer;->access$600(Lcom/tapjoy/TJEventOptimizer;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJEvent;

    .line 206
    .local v0, "evt":Lcom/tapjoy/TJEvent;
    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/tapjoy/TJEventOptimizer;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event optimization call timed out for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tapjoy/TJEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fall through to full event call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->this$0:Lcom/tapjoy/TJEventOptimizer;

    iget-object v2, p0, Lcom/tapjoy/TJEventOptimizer$TJEventTimerTask;->token:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TJEventOptimizer;->eventOptimizationCallback(Ljava/lang/String;Z)V

    .line 211
    :cond_0
    return-void
.end method
