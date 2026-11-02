.class public final Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/net/http/DownloadHttpGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/au;

.field final synthetic b:Lcom/vungle/publisher/net/http/DownloadHttpGateway;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/net/http/DownloadHttpGateway;Lcom/vungle/publisher/au;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->b:Lcom/vungle/publisher/net/http/DownloadHttpGateway;

    iput-object p2, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->b:Lcom/vungle/publisher/net/http/DownloadHttpGateway;

    iget-object v0, v0, Lcom/vungle/publisher/net/http/DownloadHttpGateway;->a:Lcom/vungle/publisher/net/http/DownloadHttpTransactionFactory;

    iget-object v1, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/au;

    invoke-interface {v1}, Lcom/vungle/publisher/au;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/au;

    invoke-interface {v2}, Lcom/vungle/publisher/au;->f()Lcom/vungle/publisher/at$b;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/au;

    invoke-interface {v3}, Lcom/vungle/publisher/au;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/net/http/DownloadHttpGateway$1;->a:Lcom/vungle/publisher/au;

    invoke-interface {v4}, Lcom/vungle/publisher/au;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/net/http/DownloadHttpTransactionFactory;->a(Ljava/lang/String;Lcom/vungle/publisher/at$b;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/net/http/HttpTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/net/http/HttpTransaction;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "VungleNetwork"

    const-string v2, "error requesting streaming ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
