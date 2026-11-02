.class public Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;
.super Ljava/lang/Object;
.source "SponsorPayBaseUrlProvider.java"


# static fields
.field private static INSTANCE:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;


# instance fields
.field private mUrlProviderOverride:Lcom/sponsorpay/utils/SPUrlProvider;

.field private urls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    invoke-direct {v0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;-><init>()V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider$1;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider$1;-><init>(Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;)V

    iput-object v0, p0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->urls:Ljava/util/Map;

    .line 31
    return-void
.end method

.method public static getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "product"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "baseUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->mUrlProviderOverride:Lcom/sponsorpay/utils/SPUrlProvider;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->mUrlProviderOverride:Lcom/sponsorpay/utils/SPUrlProvider;

    invoke-interface {v1, p1}, Lcom/sponsorpay/utils/SPUrlProvider;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    invoke-static {v0}, Lcom/sponsorpay/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->urls:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "baseUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 41
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private setOverride(Lcom/sponsorpay/utils/SPUrlProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/sponsorpay/utils/SPUrlProvider;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->mUrlProviderOverride:Lcom/sponsorpay/utils/SPUrlProvider;

    .line 46
    return-void
.end method

.method public static setProviderOverride(Lcom/sponsorpay/utils/SPUrlProvider;)V
    .locals 1
    .param p0, "provider"    # Lcom/sponsorpay/utils/SPUrlProvider;

    .prologue
    .line 49
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->INSTANCE:Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;

    invoke-direct {v0, p0}, Lcom/sponsorpay/utils/SponsorPayBaseUrlProvider;->setOverride(Lcom/sponsorpay/utils/SPUrlProvider;)V

    .line 50
    return-void
.end method
