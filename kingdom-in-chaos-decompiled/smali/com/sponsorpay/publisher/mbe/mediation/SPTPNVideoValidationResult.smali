.class public final enum Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;
.super Ljava/lang/Enum;
.source "SPTPNVideoValidationResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

.field public static final enum SPTPNValidationAdapterNotIntegrated:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

.field public static final enum SPTPNValidationDiskError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

.field public static final enum SPTPNValidationError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

.field public static final enum SPTPNValidationNetworkError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

.field public static final enum SPTPNValidationNoVideoAvailable:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

.field public static final enum SPTPNValidationSuccess:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

.field public static final enum SPTPNValidationTimeout:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;


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

    .line 11
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    const-string v1, "SPTPNValidationAdapterNotIntegrated"

    const-string v2, "no_sdk"

    invoke-direct {v0, v1, v4, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationAdapterNotIntegrated:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .line 12
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    const-string v1, "SPTPNValidationNoVideoAvailable"

    const-string v2, "no_video"

    invoke-direct {v0, v1, v5, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationNoVideoAvailable:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .line 13
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    const-string v1, "SPTPNValidationTimeout"

    const-string v2, "timeout"

    invoke-direct {v0, v1, v6, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationTimeout:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .line 14
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    const-string v1, "SPTPNValidationNetworkError"

    const-string v2, "network_error"

    invoke-direct {v0, v1, v7, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationNetworkError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .line 15
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    const-string v1, "SPTPNValidationDiskError"

    const-string v2, "disk_error"

    invoke-direct {v0, v1, v8, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationDiskError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .line 16
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    const-string v1, "SPTPNValidationError"

    const/4 v2, 0x5

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .line 17
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    const-string v1, "SPTPNValidationSuccess"

    const/4 v2, 0x6

    const-string v3, "success"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationSuccess:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationAdapterNotIntegrated:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationNoVideoAvailable:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationTimeout:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationNetworkError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationDiskError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->SPTPNValidationSuccess:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->text:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;->text:Ljava/lang/String;

    return-object v0
.end method
