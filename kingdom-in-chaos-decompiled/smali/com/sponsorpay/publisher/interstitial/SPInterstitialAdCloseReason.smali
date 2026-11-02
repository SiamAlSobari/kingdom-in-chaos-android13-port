.class public final enum Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;
.super Ljava/lang/Enum;
.source "SPInterstitialAdCloseReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

.field public static final enum ReasonError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

.field public static final enum ReasonUnknown:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

.field public static final enum ReasonUserClickedOnAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

.field public static final enum ReasonUserClosedAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    const-string v1, "ReasonUnknown"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUnknown:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    .line 18
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    const-string v1, "ReasonUserClickedOnAd"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    .line 22
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    const-string v1, "ReasonUserClosedAd"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    .line 26
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    const-string v1, "ReasonError"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUnknown:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUserClickedOnAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonUserClosedAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ReasonError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;->ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialAdCloseReason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
