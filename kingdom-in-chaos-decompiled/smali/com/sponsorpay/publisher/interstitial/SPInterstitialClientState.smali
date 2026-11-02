.class public final enum Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;
.super Ljava/lang/Enum;
.source "SPInterstitialClientState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

.field public static final enum READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

.field public static final enum READY_TO_SHOW_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

.field public static final enum REQUESTING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

.field public static final enum SHOWING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

.field public static final enum VALIDATING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;


# instance fields
.field private final canChangeParameters:Z

.field private final canRequestAds:Z

.field private final canShowAdw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    const-string v1, "READY_TO_CHECK_OFFERS"

    move v3, v2

    move v5, v4

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 16
    new-instance v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    const-string v6, "REQUESTING_OFFERS"

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    .line 17
    invoke-direct/range {v5 .. v10}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->REQUESTING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 18
    new-instance v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    const-string v6, "VALIDATING_OFFERS"

    move v7, v11

    move v8, v2

    move v9, v2

    move v10, v2

    .line 19
    invoke-direct/range {v5 .. v10}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->VALIDATING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 20
    new-instance v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    const-string v6, "READY_TO_SHOW_OFFERS"

    move v7, v12

    move v8, v4

    move v9, v4

    move v10, v4

    .line 21
    invoke-direct/range {v5 .. v10}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_SHOW_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 22
    new-instance v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    const-string v6, "SHOWING_OFFERS"

    move v7, v13

    move v8, v2

    move v9, v2

    move v10, v2

    .line 23
    invoke-direct/range {v5 .. v10}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_CHECK_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->REQUESTING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->VALIDATING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->READY_TO_SHOW_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->SHOWING_OFFERS:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    aput-object v1, v0, v13

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .param p3, "canShowAds"    # Z
    .param p4, "canRequestAds"    # Z
    .param p5, "canChangeParameters"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-boolean p3, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canShowAdw:Z

    .line 32
    iput-boolean p4, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canRequestAds:Z

    .line 33
    iput-boolean p5, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canChangeParameters:Z

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method canChangeParameters()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canChangeParameters:Z

    return v0
.end method

.method canRequestAds()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canRequestAds:Z

    return v0
.end method

.method canShowAds()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClientState;->canShowAdw:Z

    return v0
.end method
