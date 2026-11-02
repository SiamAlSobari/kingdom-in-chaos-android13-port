.class final Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;
.super Ljava/lang/Thread;
.source "NetworkThread.java"


# instance fields
.field private m_runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->m_runnable:Ljava/lang/Runnable;

    .line 9
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->m_runnable:Ljava/lang/Runnable;

    .line 10
    return-void
.end method


# virtual methods
.method public final getHttpRunner()Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->m_runnable:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->m_runnable:Ljava/lang/Runnable;

    check-cast v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    .line 19
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final interrupt()V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->m_runnable:Ljava/lang/Runnable;

    instance-of v1, v1, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    if-eqz v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->m_runnable:Ljava/lang/Runnable;

    check-cast v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    .line 35
    .local v0, "runner":Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;
    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->abort()V

    .line 38
    .end local v0    # "runner":Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 39
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/NetworkThread;->m_runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 26
    return-void
.end method
