.class public Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;
.super Lcom/sponsorpay/utils/SignedResponseRequester;
.source "SPMediationConfigurationRequester.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/utils/SignedResponseRequester",
        "<",
        "Lcom/sponsorpay/utils/SignedServerResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final SERVER_SIDE_CONFIG_URL_KEY:Ljava/lang/String; = "config"

.field public static final TAG:Ljava/lang/String; = "ConfigurationRequester"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSecurityToken:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "securityToken"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sponsorpay/utils/SignedResponseRequester;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->mActivity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->mSecurityToken:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private static getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "config"

    invoke-static {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private overrideConfig(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 126
    invoke-static {p1}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->parseConfiguration(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 130
    .local v4, "settingsMapFromResponseBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 129
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 146
    .end local v4    # "settingsMapFromResponseBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    return-void

    .line 130
    .restart local v4    # "settingsMapFromResponseBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    .local v2, "network":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 134
    .local v3, "serverConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    .line 135
    invoke-virtual {v6, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfigurationForAdapter(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 137
    .local v1, "localConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 138
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 140
    :cond_1
    sget-object v6, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    invoke-virtual {v6, v2, v3}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->setConfigurationForAdapter(Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    .line 144
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "localConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "network":Ljava/lang/String;
    .end local v3    # "serverConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "settingsMapFromResponseBody":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    const-string v5, "ConfigurationRequester"

    const-string v6, "There were no credentials to override"

    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static requestConfig(Lcom/sponsorpay/credentials/SPCredentials;Landroid/app/Activity;)V
    .locals 4
    .param p0, "credentials"    # Lcom/sponsorpay/credentials/SPCredentials;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-static {}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/sponsorpay/utils/UrlBuilder;->newBuilder(Ljava/lang/String;Lcom/sponsorpay/credentials/SPCredentials;)Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sponsorpay/utils/UrlBuilder;->addSignature()Lcom/sponsorpay/utils/UrlBuilder;

    move-result-object v0

    .line 41
    .local v0, "urlBuilder":Lcom/sponsorpay/utils/UrlBuilder;
    new-instance v1, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;

    invoke-virtual {p0}, Lcom/sponsorpay/credentials/SPCredentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sponsorpay/utils/UrlBuilder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "ConfigurationRequester"

    return-object v0
.end method

.method protected noConnectionResponse(Ljava/lang/Throwable;)Lcom/sponsorpay/utils/SignedServerResponse;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->noConnectionResponse(Ljava/lang/Throwable;)Lcom/sponsorpay/utils/SignedServerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sponsorpay/utils/SignedServerResponse;)V
    .locals 2
    .param p1, "result"    # Lcom/sponsorpay/utils/SignedServerResponse;

    .prologue
    .line 60
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v1, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->startMediationAdapters(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/sponsorpay/utils/SignedServerResponse;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->onPostExecute(Lcom/sponsorpay/utils/SignedServerResponse;)V

    return-void
.end method

.method protected parsedSignedResponse(Lcom/sponsorpay/utils/SignedServerResponse;)Lcom/sponsorpay/utils/SignedServerResponse;
    .locals 7
    .param p1, "signedServerResponse"    # Lcom/sponsorpay/utils/SignedServerResponse;

    .prologue
    .line 81
    const-string v1, ""

    .line 82
    .local v1, "json":Ljava/lang/String;
    iget-object v4, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->mActivity:Landroid/app/Activity;

    .line 83
    const-string v5, "ConfigurationRequester"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 84
    .local v3, "sharedpreferences":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sponsorpay/utils/SignedServerResponse;->getStatusCode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->hasErrorStatusCode(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->mSecurityToken:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->verifySignature(Lcom/sponsorpay/utils/SignedServerResponse;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    const-string v4, "ConfigurationRequester"

    const-string v5, "The signature is valid, proceeding..."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/sponsorpay/utils/SignedServerResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "responseBody":Ljava/lang/String;
    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "ConfigurationRequester"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    const-string v4, "ConfigurationRequester"

    const-string v5, "Server Side Configuration has been saved successfully."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    move-object v1, v2

    .line 108
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "responseBody":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const-string v4, "ConfigurationRequester"

    const-string v5, "No configs from the server, fallback to cached version."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "ConfigurationRequester"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    const-string v4, "ConfigurationRequester"

    const-string v5, "There were no cached version to use."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    :goto_2
    invoke-direct {p0, v1}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->overrideConfig(Ljava/lang/String;)V

    .line 120
    return-object p1

    .line 99
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "responseBody":Ljava/lang/String;
    :cond_2
    const-string v4, "ConfigurationRequester"

    const-string v5, "Failed to save Server Side Configuration."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "responseBody":Ljava/lang/String;
    :cond_3
    const-string v4, "ConfigurationRequester"

    const-string v5, "Invalid signature, those configs will not be used."

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_4
    const-string v4, "ConfigurationRequester"

    const-string v5, "Using cached json file"

    invoke-static {v4, v5}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic parsedSignedResponse(Lcom/sponsorpay/utils/SignedServerResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->parsedSignedResponse(Lcom/sponsorpay/utils/SignedServerResponse;)Lcom/sponsorpay/utils/SignedServerResponse;

    move-result-object v0

    return-object v0
.end method
