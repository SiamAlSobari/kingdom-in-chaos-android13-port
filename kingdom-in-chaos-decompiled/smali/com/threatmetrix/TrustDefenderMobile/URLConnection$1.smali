.class final Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;
.super Ljava/lang/Object;
.source "URLConnection.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->workAroundReverseDnsBugInHoneycombAndEarlier(Landroid/content/Context;Lorg/apache/http/client/HttpClient;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final delegate:Lorg/apache/http/conn/ssl/SSLSocketFactory;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$timeout_ms:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 3

    .prologue
    .line 369
    iput p1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->val$timeout_ms:I

    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->val$timeout_ms:I

    new-instance v1, Landroid/net/SSLSessionCache;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->delegate:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-void
.end method

.method private static injectHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 395
    :try_start_0
    const-class v1, Ljava/net/InetAddress;

    const-string v2, "hostName"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 396
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 397
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 7
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->delegate:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->delegate:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    :try_start_0
    const-class v0, Ljava/net/InetAddress;

    const-string v1, "hostName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->delegate:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    .line 388
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;->delegate:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
