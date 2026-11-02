.class final Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;
.super Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;
.source "BrowserInfoGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->initJSExecutor(Landroid/content/Context;ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;
    .param p3, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-direct {p0, p2, p3}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;-><init>(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 146
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$000()Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->m_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$200(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$300(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$400(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;-><init>(Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;Z)V

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$102(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;)Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->m_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$100(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->init()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$000()Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->m_latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "js exec init countdown using latch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->m_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->m_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 163
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$1;->m_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 165
    :cond_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted initing js engine"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
