.class Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;
.super Ljava/lang/Object;
.source "SPVirtualCurrencyConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheInfo"
.end annotation


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private response:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

.field final synthetic this$0:Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;


# direct methods
.method private constructor <init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->this$0:Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;-><init>(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector;)V

    return-void
.end method

.method static synthetic access$1(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$2(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->response:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    return-void
.end method

.method static synthetic access$3(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;)Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sponsorpay/publisher/currency/SPVirtualCurrencyConnector$CacheInfo;->response:Lcom/sponsorpay/publisher/currency/SPCurrencyServerRequester$SPCurrencyServerReponse;

    return-object v0
.end method
