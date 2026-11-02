.class public Lcom/vungle/publisher/net/http/HttpTransport;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 35
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/vungle/publisher/net/http/HttpRequest;)Lcom/vungle/publisher/cf;
    .locals 16

    .prologue
    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v3, -0x1

    .line 45
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/publisher/net/http/HttpRequest;->a()Lcom/vungle/publisher/net/http/HttpRequest$a;

    move-result-object v1

    .line 48
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vungle/publisher/net/http/HttpRequest;->b:Ljava/lang/String;

    .line 49
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 50
    const-string v3, "VungleNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 54
    const/16 v3, 0x2710

    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 56
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 57
    const/16 v3, 0x2710

    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/vungle/publisher/net/http/HttpRequest$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vungle/publisher/net/http/HttpRequest;->c:Landroid/os/Bundle;

    .line 63
    if-eqz v5, :cond_4

    .line 64
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    if-nez v4, :cond_2

    .line 68
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v11, :cond_1

    aget-object v12, v10, v4

    .line 69
    const-string v13, "VungleNetwork"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "request header: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v8, v3, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 75
    :cond_2
    const-string v10, "VungleNetwork"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "request header: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v8, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    .line 110
    const-string v2, "VungleNetwork"

    invoke-static {v1}, Lcom/vungle/publisher/cq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/16 v3, 0x259

    .line 125
    :cond_3
    :goto_3
    new-instance v1, Lcom/vungle/publisher/cf;

    invoke-direct {v1, v8, v3, v9}, Lcom/vungle/publisher/cf;-><init>(Ljava/net/HttpURLConnection;ILjava/util/List;)V

    return-object v1

    .line 80
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vungle/publisher/net/http/HttpRequest;->d:Ljava/lang/String;

    .line 81
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 82
    const-string v4, "VungleNetwork"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "request body: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 84
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 85
    array-length v4, v3

    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 87
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 91
    :cond_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 92
    invoke-static {v2, v3}, Lcom/vungle/publisher/net/http/HttpTransport;->a(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 93
    const-string v4, "Location"

    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    const-string v10, "VungleNetwork"

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vungle/publisher/net/http/HttpRequest;->b:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/vungle/publisher/net/http/HttpTransport;->a(Lcom/vungle/publisher/net/http/HttpRequest$a;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v4, "Date"

    const-wide/16 v10, -0x1

    invoke-virtual {v8, v4, v10, v11}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_6

    const/4 v4, 0x0

    .line 96
    :goto_4
    new-instance v5, Lcom/vungle/publisher/ce;

    invoke-direct {v5, v6, v3, v7, v4}, Lcom/vungle/publisher/ce;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v2, v2, 0x1

    move-object v6, v7

    goto/16 :goto_0

    .line 95
    :cond_6
    const-string v4, "Date"

    const-wide/16 v10, -0x1

    invoke-virtual {v8, v4, v10, v11}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    .line 99
    :cond_7
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_8

    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_9

    .line 100
    const-string v10, "VungleNetwork"

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vungle/publisher/net/http/HttpRequest;->b:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vungle/publisher/net/http/HttpTransport;->a(Lcom/vungle/publisher/net/http/HttpRequest$a;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_3

    .line 113
    :catch_1
    move-exception v1

    .line 114
    const-string v2, "VungleNetwork"

    invoke-static {v1}, Lcom/vungle/publisher/cq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/16 v3, 0x25a

    .line 124
    goto/16 :goto_3

    .line 99
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 104
    :cond_9
    :try_start_2
    const-string v10, "VungleNetwork"

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vungle/publisher/net/http/HttpRequest;->b:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vungle/publisher/net/http/HttpTransport;->a(Lcom/vungle/publisher/net/http/HttpRequest$a;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    .line 117
    :catch_2
    move-exception v1

    .line 118
    const-string v2, "VungleNetwork"

    invoke-static {v1}, Lcom/vungle/publisher/cq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/16 v3, 0x25b

    .line 124
    goto/16 :goto_3

    .line 121
    :catch_3
    move-exception v1

    .line 122
    const-string v2, "VungleNetwork"

    invoke-static {v1}, Lcom/vungle/publisher/cq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/16 v3, 0x258

    goto/16 :goto_3
.end method

.method private static a(Lcom/vungle/publisher/net/http/HttpRequest$a;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {p1, p2}, Lcom/vungle/publisher/net/http/HttpTransport;->a(II)Z

    move-result v1

    .line 144
    if-eqz v1, :cond_0

    .line 145
    const-string v2, " redirect count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    :cond_0
    const-string v2, " response code "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", content-type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    if-lez p1, :cond_1

    .line 157
    const-string v2, " original URL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :cond_1
    const-string v2, " requested URL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    if-eqz v1, :cond_2

    .line 164
    const-string v1, ", next URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(II)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    if-gtz p0, :cond_1

    const/16 v2, 0x12d

    if-eq p1, v2, :cond_0

    const/16 v2, 0x12e

    if-ne p1, v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method
