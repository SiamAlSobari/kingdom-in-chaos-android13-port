.class public Lcom/sponsorpay/utils/SponsorPayParametersProvider;
.super Ljava/lang/Object;
.source "SponsorPayParametersProvider.java"


# static fields
.field private static INSTANCE:Lcom/sponsorpay/utils/SponsorPayParametersProvider;


# instance fields
.field private providers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sponsorpay/utils/SPParametersProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayParametersProvider;

    invoke-direct {v0}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;-><init>()V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayParametersProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->providers:Ljava/util/Set;

    .line 22
    return-void
.end method

.method private addNewProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z
    .locals 1
    .param p1, "newProvider"    # Lcom/sponsorpay/utils/SPParametersProvider;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->providers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static addParametersProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z
    .locals 2
    .param p0, "newProvider"    # Lcom/sponsorpay/utils/SPParametersProvider;

    .prologue
    .line 25
    sget-object v1, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayParametersProvider;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayParametersProvider;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->addNewProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getParameters()Ljava/util/Map;
    .locals 6
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
    .line 37
    sget-object v4, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayParametersProvider;

    monitor-enter v4

    .line 38
    :try_start_0
    sget-object v3, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayParametersProvider;

    invoke-direct {v3}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->getProviders()Ljava/util/Set;

    move-result-object v2

    .line 39
    .local v2, "providers":Ljava/util/Set;, "Ljava/util/Set<Lcom/sponsorpay/utils/SPParametersProvider;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    monitor-exit v4

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 46
    monitor-exit v4

    goto :goto_0

    .line 37
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 43
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sponsorpay/utils/SPParametersProvider;

    .line 44
    .local v1, "provider":Lcom/sponsorpay/utils/SPParametersProvider;
    invoke-interface {v1}, Lcom/sponsorpay/utils/SPParametersProvider;->getParameters()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getProviders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sponsorpay/utils/SPParametersProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->providers:Ljava/util/Set;

    return-object v0
.end method

.method public static removeParametersProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z
    .locals 2
    .param p0, "provider"    # Lcom/sponsorpay/utils/SPParametersProvider;

    .prologue
    .line 31
    sget-object v1, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayParametersProvider;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayParametersProvider;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->removeProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeProvider(Lcom/sponsorpay/utils/SPParametersProvider;)Z
    .locals 1
    .param p1, "provider"    # Lcom/sponsorpay/utils/SPParametersProvider;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sponsorpay/utils/SponsorPayParametersProvider;->providers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
