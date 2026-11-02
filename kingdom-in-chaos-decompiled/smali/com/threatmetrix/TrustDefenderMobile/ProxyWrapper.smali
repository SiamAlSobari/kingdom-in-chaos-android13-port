.class Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;
.super Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;
.source "ProxyWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final m_getDefaultHost:Ljava/lang/reflect/Method;

.field private static final m_getDefaultPort:Ljava/lang/reflect/Method;


# instance fields
.field private m_host:Ljava/lang/String;

.field private m_port:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 15
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->TAG:Ljava/lang/String;

    .line 22
    const-class v0, Landroid/net/Proxy;

    const-string v1, "getDefaultHost"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_getDefaultHost:Ljava/lang/reflect/Method;

    .line 23
    const-class v0, Landroid/net/Proxy;

    const-string v1, "getDefaultPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_getDefaultPort:Ljava/lang/reflect/Method;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 27
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;-><init>()V

    .line 17
    iput-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_host:Ljava/lang/String;

    .line 18
    iput v6, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_port:I

    .line 29
    const-string v4, "http.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_host:Ljava/lang/String;

    .line 34
    :cond_0
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "portStr":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 40
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_host:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_port:I

    if-nez v4, :cond_4

    .line 50
    :cond_2
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_getDefaultPort:Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 51
    .local v2, "p":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_port:I

    .line 54
    :cond_3
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_getDefaultHost:Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "h":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 56
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_host:Ljava/lang/String;

    .line 58
    .end local v0    # "h":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Integer;
    :cond_4
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_host:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/ProxyWrapper;->m_port:I

    return v0
.end method
