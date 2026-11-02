.class Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;
.super Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;
.source "HttpConfigRunner.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/http/AndroidHttpClient;Ljava/lang/String;Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;Ljava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V
    .locals 7
    .param p1, "client"    # Landroid/net/http/AndroidHttpClient;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;
    .param p5, "sdk"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/AndroidHttpClient;",
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
    .line 20
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->GET:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;-><init>(Landroid/net/http/AndroidHttpClient;Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;Ljava/lang/String;Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;Ljava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    .line 21
    return-void
.end method


# virtual methods
.method public final getStatusCode()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_ConfigurationError:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_0

    .line 54
    :cond_1
    invoke-super {p0}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->getStatusCode()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 26
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "starting retrieval: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_params:Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/HttpParameterMap;->getUrlEncodedParamString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    .line 30
    invoke-super {p0}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->run()V

    .line 32
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 34
    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    invoke-direct {v1}, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;-><init>()V

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->m_config:Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;->m_connection:Lcom/threatmetrix/TrustDefenderMobile/URLConnection;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/URLConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TDConfiguration;->parseConfigFromStream(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/HttpConfigRunner;->TAG:Ljava/lang/String;

    const-string v2, "IO Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
