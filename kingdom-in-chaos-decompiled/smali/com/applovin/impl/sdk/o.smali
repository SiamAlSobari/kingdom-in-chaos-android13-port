.class Lcom/applovin/impl/sdk/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)I
    .locals 2

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    const/16 v0, -0x66

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authentication challenge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x191

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_3

    const/16 v0, -0x68

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-gez p3, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/br;->t:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-gez p3, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/br;->v:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :cond_0
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0

    :cond_1
    move v1, p3

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/sdk/p;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received from from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-lt p2, v0, :cond_1

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0xcc

    if-eq p2, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p4, v0, p2}, Lcom/applovin/impl/sdk/p;->a(Lorg/json/JSONObject;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error received from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, p2}, Lcom/applovin/impl/sdk/p;->a(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successful "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p4

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v3}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p4

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v3}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p6}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;ILcom/applovin/impl/sdk/p;)V
    .locals 7

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method a(Ljava/lang/String;IZLcom/applovin/impl/sdk/p;)V
    .locals 7

    const-string v2, "GET"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V
    .locals 11

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No endpoint specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No method specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p6, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No callback specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v4, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "ConnectionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " request to \""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\"..."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    if-eqz p4, :cond_3

    :try_start_1
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "ConnectionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Request to \""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\" is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v10, "UTF8"

    invoke-direct {v3, v7, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    if-lez v4, :cond_5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;IJ)V

    if-eqz p5, :cond_4

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Lcom/applovin/impl/sdk/q;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    move-object/from16 v0, p6

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;ILjava/lang/String;Lcom/applovin/impl/sdk/p;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    invoke-static {v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/InputStream;)V

    invoke-static {v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/net/HttpURLConnection;)V

    :goto_1
    return-void

    :cond_4
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p6

    invoke-interface {v0, v1, v4}, Lcom/applovin/impl/sdk/p;->a(Lorg/json/JSONObject;I)V

    move-object v1, v8

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/applovin/impl/sdk/p;->a(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v8

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v9, v1

    :goto_2
    if-nez v4, :cond_6

    :try_start_4
    invoke-direct {p0, v7}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/Throwable;)I

    move-result v4

    :cond_6
    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/Throwable;)V

    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/applovin/impl/sdk/p;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v8}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/InputStream;)V

    invoke-static {v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v9, v1

    move-object v1, v2

    :goto_3
    invoke-static {v8}, Lcom/applovin/impl/sdk/o;->a(Ljava/io/InputStream;)V

    invoke-static {v9}, Lcom/applovin/impl/sdk/o;->a(Ljava/net/HttpURLConnection;)V

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    move-object v8, v1

    goto :goto_2
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/p;)V
    .locals 7

    const-string v2, "POST"

    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;ZLcom/applovin/impl/sdk/p;)V

    return-void
.end method
