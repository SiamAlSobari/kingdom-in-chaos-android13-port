.class public Lcom/sponsorpay/SponsorPay;
.super Ljava/lang/Object;
.source "SponsorPay.java"


# static fields
.field public static final BUGFIX_RELEASE_NUMBER:I = 0x1

.field protected static INSTANCE:Lcom/sponsorpay/SponsorPay; = null

.field public static final MAJOR_RELEASE_NUMBER:I = 0x7

.field public static final MINOR_RELEASE_NUMBER:I = 0x0

.field public static final RELEASE_VERSION_STRING:Ljava/lang/String; = "7.0.1"

.field public static final TAG:Ljava/lang/String; = "SponsorPay"


# instance fields
.field private currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

.field private mHostInfo:Lcom/sponsorpay/utils/HostInfo;

.field private tokensMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sponsorpay/credentials/SPCredentials;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/sponsorpay/SponsorPay;

    invoke-direct {v0}, Lcom/sponsorpay/SponsorPay;-><init>()V

    sput-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lcom/sponsorpay/utils/SDKFeaturesProvider;

    invoke-direct {v0}, Lcom/sponsorpay/utils/SDKFeaturesProvider;-><init>()V

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->addParametersProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z

    .line 62
    return-void
.end method

.method public static getAllCredentials()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v0, v0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getCredentials(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;
    .locals 1
    .param p0, "credentialsToken"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    invoke-direct {v0, p0}, Lcom/sponsorpay/SponsorPay;->getCredentialsFromToken(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;

    move-result-object v0

    return-object v0
.end method

.method private getCredentialsFromToken(Ljava/lang/String;)Lcom/sponsorpay/credentials/SPCredentials;
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/credentials/SPCredentials;

    .line 66
    .local v0, "credendials":Lcom/sponsorpay/credentials/SPCredentials;
    if-nez v0, :cond_0

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There are no credentials identified by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    const-string v3, "\nYou have to execute SponsorPay.start method first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    return-object v0
.end method

.method public static getCurrentCredentials()Lcom/sponsorpay/credentials/SPCredentials;
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v0, v0, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please start the SDK before accessing any of its resources.\nYou have to execute SponsorPay.start method first."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v0, v0, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    return-object v0
.end method

.method public static getHostInfo()Lcom/sponsorpay/utils/HostInfo;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v0, v0, Lcom/sponsorpay/SponsorPay;->mHostInfo:Lcom/sponsorpay/utils/HostInfo;

    return-object v0
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "securityToken"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 141
    new-instance v2, Ljava/util/HashSet;

    invoke-static {}, Lcom/sponsorpay/SponsorPay;->getAllCredentials()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 142
    .local v2, "credentials":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 144
    .local v0, "context":Landroid/content/Context;
    sget-object v5, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    invoke-virtual {v5, p0, p1, p2, v0}, Lcom/sponsorpay/SponsorPay;->getCredentialsToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "credentialsToken":Ljava/lang/String;
    invoke-static {}, Lcom/sponsorpay/utils/HostInfo;->isDeviceSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-static {v0}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    .line 149
    invoke-static {p3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 150
    new-instance v4, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;

    invoke-direct {v4, p3}, Lcom/sponsorpay/utils/cookies/PersistentHttpCookieStore;-><init>(Landroid/content/Context;)V

    .line 151
    .local v4, "store":Ljava/net/CookieStore;
    new-instance v1, Ljava/net/CookieManager;

    sget-object v5, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-direct {v1, v4, v5}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    .line 152
    .local v1, "cookieManager":Ljava/net/CookieManager;
    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 153
    sget-object v5, Lcom/sponsorpay/SponsorPay;->INSTANCE:Lcom/sponsorpay/SponsorPay;

    iget-object v5, v5, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-static {v5, p3}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->requestConfig(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)V

    .line 155
    .end local v1    # "cookieManager":Ljava/net/CookieManager;
    .end local v4    # "store":Ljava/net/CookieStore;
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 156
    invoke-static {v0}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiser;->register(Landroid/content/Context;)V

    .line 167
    :cond_1
    :goto_0
    return-object v3

    .line 160
    :cond_2
    invoke-static {}, Lcom/sponsorpay/utils/SponsorPayLogger;->isLogging()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    const-string v5, "SponsorPay"

    const-string v6, "Only devices running Android API level 10 and above are supported"

    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_3
    const-string v5, "SponsorPay"

    const-string v6, "Only devices running Android API level 10 and above are supported"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getCredentialsToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "securityToken"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/credentials/SPCredentials;

    .line 79
    .local v0, "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcom/sponsorpay/credentials/SPCredentials;

    .end local v0    # "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sponsorpay/credentials/SPCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 81
    .restart local v0    # "credentials":Lcom/sponsorpay/credentials/SPCredentials;
    iget-object v1, p0, Lcom/sponsorpay/SponsorPay;->tokensMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    .line 86
    iget-object v1, p0, Lcom/sponsorpay/SponsorPay;->currentCredentials:Lcom/sponsorpay/credentials/SPCredentials;

    invoke-virtual {v1}, Lcom/sponsorpay/credentials/SPCredentials;->getCredentialsToken()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    :cond_1
    invoke-static {p3}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, p3}, Lcom/sponsorpay/credentials/SPCredentials;->setSecurityToken(Ljava/lang/String;)V

    goto :goto_0
.end method
