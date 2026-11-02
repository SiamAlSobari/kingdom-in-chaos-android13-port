.class final Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;
.super Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;
.source "BrowserInfoGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->getBrowserInfoHelper()V
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
    .line 261
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;->this$0:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-direct {p0, p2, p3}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;-><init>(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 267
    :try_start_0
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$000()Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;->m_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$500(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;->m_latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBrowserInfo countdown using latch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;->m_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;->m_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 278
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$2;->m_latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 280
    :cond_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;->access$000()Ljava/lang/String;

    goto :goto_0
.end method
