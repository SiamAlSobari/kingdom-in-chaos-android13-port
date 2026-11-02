.class Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;
.super Ljava/lang/Object;
.source "BrowserInfoGatherer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompleteBrowserInfoRequest"
.end annotation


# instance fields
.field m_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

.field m_latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "info"    # Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;->m_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    .line 26
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;->m_latch:Ljava/util/concurrent/CountDownLatch;

    .line 31
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;->m_info:Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer;

    .line 32
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/BrowserInfoGatherer$CompleteBrowserInfoRequest;->m_latch:Ljava/util/concurrent/CountDownLatch;

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
