.class public Lcom/sponsorpay/mediation/SPMediationConfigurator;
.super Ljava/lang/Object;
.source "SPMediationConfigurator.java"


# static fields
.field public static INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator; = null

.field private static final TAG:Ljava/lang/String; = "SPMediationConfigurator"


# instance fields
.field private mConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/sponsorpay/mediation/SPMediationConfigurator;

    invoke-direct {v0}, Lcom/sponsorpay/mediation/SPMediationConfigurator;-><init>()V

    sput-object v0, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sponsorpay/mediation/SPMediationConfigurator;->mConfigurations:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->getAdaptersConfig()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {v0}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->parseConfiguration(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sponsorpay/mediation/SPMediationConfigurator;->mConfigurations:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public static getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "adapter"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    invoke-virtual {v2, p0}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfigurationForAdapter(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 89
    .local v0, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "retValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    .end local v1    # "retValue":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "adapter"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p3, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1, p3}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "config":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static parseConfiguration(Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    const-string v12, "SPMediationConfigurator"

    const-string v13, "Reading config file"

    invoke-static {v12, v13}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v3, "configurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p0}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 111
    :try_start_0
    const-string v12, "SPMediationConfigurator"

    const-string v13, "Parsing configurations"

    invoke-static {v12, v13}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "json":Lorg/json/JSONObject;
    const-string v12, "adapters"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 114
    .local v2, "configs":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v5, v12, :cond_0

    .line 134
    const-string v12, "SPMediationConfigurator"

    const-string v13, "configuration loaded successfully"

    invoke-static {v12, v13}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v2    # "configs":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v7    # "json":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .line 115
    .restart local v2    # "configs":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v7    # "json":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 116
    .local v1, "config":Lorg/json/JSONObject;
    const-string v12, "name"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "adapterName":Ljava/lang/String;
    const-string v12, "settings"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 118
    const-string v12, "settings"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 119
    .local v10, "settings":Lorg/json/JSONObject;
    new-instance v9, Ljava/util/HashMap;

    .line 120
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v12

    .line 119
    invoke-direct {v9, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 122
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 123
    .local v6, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 128
    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v6    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "settings":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 124
    .restart local v6    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "settings":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 125
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 126
    .local v11, "value":Ljava/lang/Object;
    invoke-interface {v9, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 135
    .end local v0    # "adapterName":Ljava/lang/String;
    .end local v1    # "config":Lorg/json/JSONObject;
    .end local v2    # "configs":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "settings":Lorg/json/JSONObject;
    .end local v11    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 136
    .local v4, "e":Lorg/json/JSONException;
    const-string v12, "SPMediationConfigurator"

    const-string v13, "A JSON error occurred while parsing the configuration file, there will be no mediation configurations."

    invoke-static {v12, v13, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 130
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v0    # "adapterName":Ljava/lang/String;
    .restart local v1    # "config":Lorg/json/JSONObject;
    .restart local v2    # "configs":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v7    # "json":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .line 131
    .restart local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 140
    .end local v0    # "adapterName":Ljava/lang/String;
    .end local v1    # "config":Lorg/json/JSONObject;
    .end local v2    # "configs":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    const-string v12, "SPMediationConfigurator"

    const-string v13, "Configuration was not found, there will be no mediation configurations."

    invoke-static {v12, v13}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getConfigurationForAdapter(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "adapter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationConfigurator;->mConfigurations:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getMediationAdapters()Ljava/util/Map;
    .locals 13
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

    .prologue
    .line 43
    const-string v11, "SPMediationConfigurator"

    const-string v12, "Getting compatible adapters for SDK v7.0.1"

    invoke-static {v11, v12}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/sponsorpay/mediation/SPMediationConfigurationFiles;->getAdapterInfo()Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "jsonString":Ljava/lang/String;
    invoke-static {v5}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 49
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v4, "json":Lorg/json/JSONObject;
    const-string v11, "adapters"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 53
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_0

    .line 63
    const-string v11, "SPMediationConfigurator"

    const-string v12, "adapters.info file successfully loaded"

    invoke-static {v11, v12}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "json":Lorg/json/JSONObject;
    :goto_1
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 73
    .local v10, "versions":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v11, "7.0.1"

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 74
    const-class v11, Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object v7

    .line 54
    .end local v10    # "versions":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "json":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 55
    .local v8, "object":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 56
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "versions"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 57
    .local v9, "versions":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_1

    .line 60
    const-string v11, "qualifiedName"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 65
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v9    # "versions":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Lorg/json/JSONException;
    const-string v11, "SPMediationConfigurator"

    const-string v12, "An JSON error occured while parsing the adapters.info file, no mediation adapters will be loaded."

    invoke-static {v11, v12, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 70
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    const-string v11, "SPMediationConfigurator"

    const-string v12, "The adapters.info file was not found, no adapters will be loaded."

    invoke-static {v11, v12}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setConfigurationForAdapter(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .param p1, "adapter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "configurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationConfigurator;->mConfigurations:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
