.class public abstract Lcom/vungle/publisher/cg;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field public f:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "\\bcharset=([\\w\\-]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/cg;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 104
    .line 106
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 107
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v2, Lcom/vungle/publisher/cg;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    const-string v2, "VungleNetwork"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response character set: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v2, Ljava/io/InputStreamReader;

    div-int/lit8 v5, v5, 0x64

    const/4 v6, 0x3

    if-gt v5, v6, :cond_3

    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "ISO-8859-1"

    :cond_0
    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const/16 v1, 0x2000

    new-array v1, v1, [C

    .line 115
    :goto_3
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_5

    .line 116
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 123
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 124
    :goto_4
    if-eqz v1, :cond_1

    .line 125
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    :cond_1
    :goto_5
    if-eqz p0, :cond_2

    .line 132
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    :cond_3
    move v3, v4

    .line 109
    goto :goto_1

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    goto :goto_2

    .line 118
    :cond_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response body: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 131
    :goto_6
    if-eqz p0, :cond_6

    .line 132
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object v0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error closing input stream "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 128
    :catch_1
    move-exception v1

    .line 129
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error closing input stream "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 123
    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 66
    const-string v0, "VungleNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error handling response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/cg;->b(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V

    .line 68
    return-void
.end method

.method public b(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V
    .locals 3

    .prologue
    .line 71
    const-string v0, "VungleNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/vungle/publisher/net/http/HttpTransaction;->a:Lcom/vungle/publisher/net/http/HttpRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed permanently with response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/vungle/publisher/cf;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public c(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V
    .locals 2

    .prologue
    .line 34
    :try_start_0
    iget v0, p2, Lcom/vungle/publisher/cf;->b:I

    invoke-static {v0}, Lcom/vungle/publisher/cg;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/cg;->a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    :try_start_2
    const-string v1, "VungleNetwork"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    const/16 v0, 0x25b

    iput v0, p2, Lcom/vungle/publisher/cf;->b:I

    .line 52
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/cg;->d(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/cg;->a(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;Ljava/lang/Exception;)V

    goto :goto_0

    .line 43
    :catch_2
    move-exception v0

    .line 44
    :try_start_3
    const-string v1, "VungleNetwork"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const/16 v0, 0x258

    iput v0, p2, Lcom/vungle/publisher/cf;->b:I

    goto :goto_1

    .line 47
    :catch_3
    move-exception v0

    .line 48
    const-string v1, "VungleNetwork"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    const/16 v0, 0x25c

    iput v0, p2, Lcom/vungle/publisher/cf;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public d(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/cg;->b(Lcom/vungle/publisher/net/http/HttpTransaction;Lcom/vungle/publisher/cf;)V

    .line 61
    return-void
.end method
