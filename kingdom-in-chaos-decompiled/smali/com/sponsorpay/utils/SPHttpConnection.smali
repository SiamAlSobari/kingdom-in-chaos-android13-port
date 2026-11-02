.class public Lcom/sponsorpay/utils/SPHttpConnection;
.super Ljava/lang/Object;
.source "SPHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sponsorpay/utils/SPHttpConnection$Header;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SPHttpConnection"

.field private static final USER_SEGMENTATION_HEADER_NAME:Ljava/lang/String; = "X-User-Data"


# instance fields
.field private mBody:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHeadersToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sponsorpay/utils/SPHttpConnection$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mOpen:Z

.field private mResponseCode:I

.field private mUrl:Ljava/net/URL;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mOpen:Z

    .line 46
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mUrl:Ljava/net/URL;

    .line 47
    return-void
.end method

.method public static createUserSegmentationMapForHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "X-User-Data"

    invoke-static {}, Lcom/sponsorpay/user/SPUser;->mapToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-object v0
.end method

.method public static getConnection(Lcom/sponsorpay/utils/UrlBuilder;)Lcom/sponsorpay/utils/SPHttpConnection;
    .locals 2
    .param p0, "builder"    # Lcom/sponsorpay/utils/UrlBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/sponsorpay/utils/SPHttpConnection;

    invoke-virtual {p0}, Lcom/sponsorpay/utils/UrlBuilder;->buildUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sponsorpay/utils/SPHttpConnection;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getConnection(Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/sponsorpay/utils/SPHttpConnection;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/SPHttpConnection;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v1, "into":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 99
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "n":I
    if-gtz v2, :cond_0

    .line 102
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 103
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 100
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/utils/SPHttpConnection;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mHeadersToAdd:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mHeadersToAdd:Ljava/util/List;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mHeadersToAdd:Ljava/util/List;

    new-instance v1, Lcom/sponsorpay/utils/SPHttpConnection$Header;

    invoke-direct {v1, p0, p1, p2}, Lcom/sponsorpay/utils/SPHttpConnection$Header;-><init>(Lcom/sponsorpay/utils/SPHttpConnection;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-object p0
.end method

.method public getBodyContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mOpen:Z

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The connection has not been opened yet."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget v0, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mResponseCode:I

    return v0
.end method

.method public open()Lcom/sponsorpay/utils/SPHttpConnection;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 58
    const/4 v5, 0x0

    .line 60
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v7, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mUrl:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 61
    iget-object v7, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mHeadersToAdd:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 62
    iget-object v7, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mHeadersToAdd:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 69
    :cond_0
    invoke-static {}, Lcom/sponsorpay/user/SPUser;->mapToString()Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "userSegmentationData":Ljava/lang/String;
    invoke-static {v6}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 71
    const-string v7, "X-User-Data"

    invoke-virtual {v5, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    const/4 v4, 0x0

    .line 76
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 80
    :goto_1
    :try_start_2
    invoke-direct {p0, v4}, Lcom/sponsorpay/utils/SPHttpConnection;->readStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mBody:Ljava/lang/String;

    .line 81
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    iput v7, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mResponseCode:I

    .line 83
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    .line 82
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mHeaders:Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v5, :cond_2

    .line 88
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_2
    iput-boolean v10, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mOpen:Z

    .line 92
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "userSegmentationData":Ljava/lang/String;
    :goto_2
    return-object p0

    .line 62
    :cond_3
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sponsorpay/utils/SPHttpConnection$Header;

    .line 63
    .local v3, "header":Lcom/sponsorpay/utils/SPHttpConnection$Header;
    iget-object v8, v3, Lcom/sponsorpay/utils/SPHttpConnection$Header;->key:Ljava/lang/String;

    iget-object v9, v3, Lcom/sponsorpay/utils/SPHttpConnection$Header;->value:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 84
    .end local v3    # "header":Lcom/sponsorpay/utils/SPHttpConnection$Header;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "SPHttpConnection"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    if-eqz v5, :cond_4

    .line 88
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_4
    iput-boolean v10, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mOpen:Z

    goto :goto_2

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "userSegmentationData":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 78
    .local v2, "exception":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    goto :goto_1

    .line 86
    .end local v2    # "exception":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "userSegmentationData":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 87
    if-eqz v5, :cond_5

    .line 88
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 90
    :cond_5
    iput-boolean v10, p0, Lcom/sponsorpay/utils/SPHttpConnection;->mOpen:Z

    .line 91
    throw v7
.end method
