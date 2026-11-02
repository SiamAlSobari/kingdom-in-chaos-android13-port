.class Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;
.super Ljava/lang/Object;
.source "HttpRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

.field final m_params:Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

.field private final m_sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

.field private final m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

.field final m_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/net/http/AndroidHttpClient;Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Landroid/net/http/AndroidHttpClient;
    .param p2, "type"    # Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-direct {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;-><init>(Landroid/net/http/AndroidHttpClient;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    .line 31
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    .line 32
    iput-object p3, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_url:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_params:Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/net/http/AndroidHttpClient;Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;Ljava/lang/String;Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;Ljava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V
    .locals 1
    .param p1, "client"    # Landroid/net/http/AndroidHttpClient;
    .param p2, "type"    # Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    .param p6, "sdk"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/AndroidHttpClient;",
            "Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;",
            "Ljava/lang/String;",
            "Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-direct {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;-><init>(Landroid/net/http/AndroidHttpClient;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    .line 41
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v0, p5}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->addHeaders(Ljava/util/Map;)V

    .line 43
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    .line 44
    iput-object p3, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_url:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_params:Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    .line 46
    iput-object p6, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .line 47
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->abort()V

    .line 113
    return-void
.end method

.method final getConnection()Lcom/threatmetrix/TrustDefenderMobile/URLConnection;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    return-object v0
.end method

.method public final getHttpStatusCode()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusCode()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 52
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "starting retrieval: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-wide/16 v0, -0x1

    .line 54
    .local v0, "result":J
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->GET:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->GET_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    if-ne v2, v3, :cond_3

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_params:Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->getUrlEncodedParamString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->get(Ljava/lang/String;)J

    move-result-wide v0

    .line 63
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 65
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to retrieve from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V

    .line 90
    :cond_2
    :goto_1
    return-void

    .line 58
    :cond_3
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->POST:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->POST_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    if-ne v2, v3, :cond_1

    .line 60
    :cond_4
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_url:Ljava/lang/String;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_params:Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->getEntity()Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)J

    move-result-wide v0

    goto :goto_0

    .line 73
    :cond_5
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retrieved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 78
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") status on request to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    :cond_6
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->GET_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_type:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->POST_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    if-ne v2, v3, :cond_2

    .line 85
    :cond_7
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->TAG:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->consumeContent()V

    goto :goto_1
.end method
