.class public final enum Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;
.super Ljava/lang/Enum;
.source "SPInterstitialEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum NotIntegrated:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum ShowClick:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum ShowClose:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum ShowError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum ShowImpression:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum ValidationError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum ValidationFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum ValidationNoFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

.field public static final enum ValidationRequest:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "ValidationRequest"

    .line 16
    const-string v2, "request"

    invoke-direct {v0, v1, v4, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationRequest:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 17
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "ValidationFill"

    .line 20
    const-string v2, "fill"

    invoke-direct {v0, v1, v5, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 21
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "ValidationNoFill"

    .line 24
    const-string v2, "no_fill"

    invoke-direct {v0, v1, v6, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationNoFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 25
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "ValidationError"

    .line 28
    const-string v2, "error"

    invoke-direct {v0, v1, v7, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 29
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "ShowImpression"

    .line 32
    const-string v2, "impression"

    invoke-direct {v0, v1, v8, v2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowImpression:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 33
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "ShowClick"

    const/4 v2, 0x5

    .line 36
    const-string v3, "click"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowClick:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 37
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "ShowClose"

    const/4 v2, 0x6

    .line 40
    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowClose:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 41
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "ShowError"

    const/4 v2, 0x7

    .line 44
    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 45
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    const-string v1, "NotIntegrated"

    const/16 v2, 0x8

    .line 48
    const-string v3, "no_sdk"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->NotIntegrated:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .line 12
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationRequest:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationNoFill:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowImpression:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowClick:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowClose:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->NotIntegrated:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->text:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ENUM$VALUES:[Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->text:Ljava/lang/String;

    return-object v0
.end method
