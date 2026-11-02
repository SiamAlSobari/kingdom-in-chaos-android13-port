.class Lcom/threatmetrix/TrustDefenderMobile/URLConnection;
.super Ljava/lang/Object;
.source "URLConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final m_httpClient:Landroid/net/http/AndroidHttpClient;

.field private m_request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private m_response:Lorg/apache/http/HttpResponse;

.field private m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/http/AndroidHttpClient;)V
    .locals 1
    .param p1, "httpClient"    # Landroid/net/http/AndroidHttpClient;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_headers:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    .line 49
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 51
    return-void
.end method

.method private addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_headers:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method private static getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 320
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    .line 322
    .local v2, "values":[Lorg/apache/http/HeaderElement;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 324
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "charset"

    invoke-interface {v3, v4}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v1

    .line 326
    .local v1, "param":Lorg/apache/http/NameValuePair;
    if-eqz v1, :cond_0

    .line 328
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 333
    .end local v1    # "param":Lorg/apache/http/NameValuePair;
    .end local v2    # "values":[Lorg/apache/http/HeaderElement;
    :cond_0
    return-object v0
.end method

.method private getResponseBody()Ljava/lang/String;
    .locals 14

    .prologue
    .line 250
    iget-object v10, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    if-nez v10, :cond_0

    const-string v10, ""

    .line 307
    :goto_0
    return-object v10

    .line 252
    :cond_0
    const/4 v7, 0x0

    .line 253
    .local v7, "reader":Ljava/io/Reader;
    iget-object v10, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 255
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    const/4 v0, 0x0

    .line 259
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 261
    .local v5, "in":Ljava/io/InputStream;
    if-nez v5, :cond_1

    const-string v10, ""

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    .line 265
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "HTTP entity too large to be buffered in memory"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v5    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 287
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_1
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    const-string v11, "Failed to fetch"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    if-eqz v7, :cond_2

    .line 297
    :try_start_2
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 298
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 307
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-nez v0, :cond_8

    const-string v10, ""

    goto :goto_0

    .line 268
    .restart local v5    # "in":Ljava/io/InputStream;
    :cond_3
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v10

    array-length v11, v10

    if-lez v11, :cond_4

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "charset"

    invoke-interface {v10, v11}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "charset":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 271
    const-string v2, "ISO-8859-1"

    .line 274
    :cond_5
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    .end local v7    # "reader":Ljava/io/Reader;
    .local v8, "reader":Ljava/io/Reader;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 277
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/16 v10, 0x400

    :try_start_5
    new-array v9, v10, [C

    .line 280
    .local v9, "tmp":[C
    :goto_3
    invoke-virtual {v8, v9}, Ljava/io/Reader;->read([C)I

    move-result v6

    .local v6, "l":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_6

    .line 282
    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 285
    .end local v6    # "l":I
    .end local v9    # "tmp":[C
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    goto :goto_1

    .line 293
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v6    # "l":I
    .restart local v8    # "reader":Ljava/io/Reader;
    .restart local v9    # "tmp":[C
    :cond_6
    :try_start_6
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 298
    invoke-virtual {v8}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v0, v1

    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    move-object v7, v8

    .line 303
    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    goto :goto_2

    .line 302
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v8    # "reader":Ljava/io/Reader;
    :catch_2
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    move-object v0, v1

    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    move-object v7, v8

    .line 303
    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    goto :goto_2

    .line 302
    .end local v2    # "charset":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "l":I
    .end local v9    # "tmp":[C
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    goto :goto_2

    .line 293
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v7, :cond_7

    .line 297
    :try_start_7
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 298
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 303
    :cond_7
    :goto_5
    throw v10

    .line 302
    :catch_4
    move-exception v11

    sget-object v11, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    goto :goto_5

    .line 307
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 293
    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v2    # "charset":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v8    # "reader":Ljava/io/Reader;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    goto :goto_4

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v8    # "reader":Ljava/io/Reader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    goto :goto_4

    .line 285
    .end local v7    # "reader":Ljava/io/Reader;
    .restart local v8    # "reader":Ljava/io/Reader;
    :catch_5
    move-exception v3

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/Reader;
    .restart local v7    # "reader":Ljava/io/Reader;
    goto/16 :goto_1
.end method

.method private go(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 8
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 127
    monitor-enter p0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_headers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHeader;

    .line 134
    .local v1, "header":Lorg/apache/http/message/BasicHeader;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 130
    .end local v1    # "header":Lorg/apache/http/message/BasicHeader;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 137
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 139
    new-instance v4, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;

    invoke-direct {v4}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;-><init>()V

    .line 141
    .local v4, "proxyWrapper":Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;
    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->getPort()I

    move-result v6

    invoke-direct {v3, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 144
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 153
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v5, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    .line 154
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :goto_2
    return-void

    .line 148
    :cond_1
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_httpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/security/cert/CertificateException;

    if-eqz v5, :cond_2

    .line 160
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 182
    :goto_3
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    const-string v6, "Failed to retrieve URI"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 161
    :cond_2
    instance-of v5, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v5, :cond_3

    .line 163
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_3

    .line 164
    :cond_3
    instance-of v5, v0, Ljava/net/UnknownHostException;

    if-eqz v5, :cond_4

    .line 166
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_3

    .line 167
    :cond_4
    instance-of v5, v0, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_5

    .line 169
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_3

    .line 172
    :cond_5
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-ne v5, v6, :cond_6

    .line 174
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_3

    .line 177
    :cond_6
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    goto :goto_3

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    const-string v6, "Caught runtime exception:"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_2
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    .line 63
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 64
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setSSLSocketFactory(Landroid/content/Context;Lorg/apache/http/client/HttpClient;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "timeout_ms"    # I

    .prologue
    const/16 v4, 0x1bb

    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 354
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-direct {v0, p0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;

    invoke-direct {v0, p2, p0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;-><init>(ILandroid/content/Context;)V

    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0
.end method

.method private static setSSLTimeout(Landroid/content/Context;Lorg/apache/http/client/HttpClient;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "timeout_ms"    # I

    .prologue
    .line 361
    new-instance v1, Landroid/net/SSLSessionCache;

    invoke-direct {v1, p0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Landroid/net/SSLCertificateSocketFactory;->getHttpSocketFactory(ILandroid/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    .line 362
    .local v0, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 363
    return-void
.end method

.method private static workAroundReverseDnsBugInHoneycombAndEarlier(Landroid/content/Context;Lorg/apache/http/client/HttpClient;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;
    .param p2, "timeout_ms"    # I

    .prologue
    .line 369
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;

    invoke-direct {v0, p2, p0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection$1;-><init>(ILandroid/content/Context;)V

    .line 404
    .local v0, "socketFactory":Lorg/apache/http/conn/scheme/SocketFactory;
    invoke-interface {p1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 406
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    .line 230
    monitor-enter p0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 234
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 237
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final addHeaders(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 82
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_headers:Ljava/util/ArrayList;

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v4, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final consumeContent()V
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 343
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 344
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method final get(Ljava/lang/String;)J
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->go(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 95
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-eq v1, v2, :cond_1

    .line 96
    :cond_0
    const-wide/16 v1, -0x1

    .line 98
    :goto_0
    return-wide v1

    :cond_1
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public final getStatus()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    return-object v0
.end method

.method public final getURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method final post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)J
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 109
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "request":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->go(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 115
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-eq v1, v2, :cond_1

    .line 116
    :cond_0
    const-wide/16 v1, -0x1

    .line 118
    :goto_0
    return-wide v1

    :cond_1
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->m_response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method
