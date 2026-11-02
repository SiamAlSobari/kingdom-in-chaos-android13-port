.class final Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1ShutdownRunnable;
.super Ljava/lang/Object;
.source "TrustDefenderMobile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->tidyUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ShutdownRunnable"
.end annotation


# instance fields
.field final t:Landroid/net/http/AndroidHttpClient;

.field final synthetic this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Landroid/net/http/AndroidHttpClient;)V
    .locals 0
    .param p2, "t"    # Landroid/net/http/AndroidHttpClient;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1ShutdownRunnable;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1ShutdownRunnable;->t:Landroid/net/http/AndroidHttpClient;

    .line 604
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 609
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1ShutdownRunnable;->t:Landroid/net/http/AndroidHttpClient;

    if-nez v1, :cond_0

    .line 622
    :goto_0
    return-void

    .line 615
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1ShutdownRunnable;->t:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 616
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1ShutdownRunnable;->t:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Swallowing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
