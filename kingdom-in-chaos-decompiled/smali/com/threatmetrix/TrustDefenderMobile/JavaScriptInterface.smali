.class Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
.super Ljava/lang/Object;
.source "JavaScriptInterface.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field latch:Ljava/util/concurrent/CountDownLatch;

.field public returnedValue:Ljava/lang/String;

.field public final returnedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    .line 18
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 24
    return-void
.end method

.method private callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    .local v3, "l":Ljava/util/concurrent/CountDownLatch;
    move-object v4, p1

    .local v4, "log_message":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 47
    const-string v4, "null"

    .line 49
    :cond_0
    const-wide/16 v0, 0x0

    .line 50
    .local v0, "count":J
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    .line 52
    :cond_1
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    .line 55
    if-nez p1, :cond_3

    .line 56
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_0
    if-eqz v3, :cond_6

    .line 62
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "countdown latch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 66
    if-nez p2, :cond_2

    .line 68
    const-string p2, "null"

    .line 70
    :cond_2
    if-nez v3, :cond_4

    .line 72
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "() with null latch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .end local v0    # "count":J
    .end local v3    # "l":Ljava/util/concurrent/CountDownLatch;
    .end local v4    # "log_message":Ljava/lang/String;
    :goto_1
    return-void

    .line 58
    .restart local v0    # "count":J
    .restart local v3    # "l":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "log_message":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v0    # "count":J
    .end local v3    # "l":Ljava/util/concurrent/CountDownLatch;
    .end local v4    # "log_message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    goto :goto_1

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "count":J
    .restart local v3    # "l":Ljava/util/concurrent/CountDownLatch;
    .restart local v4    # "log_message":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "() count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-ne v3, v5, :cond_5

    const-string v5, "latch constant"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string v5, "latch changed"

    goto :goto_2

    .line 82
    :cond_6
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "() latch == null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private onReceiveValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 102
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    const-string p1, ""

    .line 113
    :cond_0
    :goto_0
    const-string v0, "onReceiveValue"

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public final getString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 94
    const-string v0, "getString"

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 13
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    :cond_0
    :goto_0
    const-string v0, "onReceiveValue"

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final setLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "existing latch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 34
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new latch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    :cond_1
    return-void
.end method
