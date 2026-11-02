.class public final enum Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;
.super Ljava/lang/Enum;
.source "SPTPNVideoEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

.field public static final enum SPTPNVideoEventAborted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

.field public static final enum SPTPNVideoEventAdapterNotIntegrated:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

.field public static final enum SPTPNVideoEventClosed:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

.field public static final enum SPTPNVideoEventError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

.field public static final enum SPTPNVideoEventFinished:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

.field public static final enum SPTPNVideoEventNoVideo:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

.field public static final enum SPTPNVideoEventStarted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

.field public static final enum SPTPNVideoEventTimeout:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;


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
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    const-string v1, "SPTPNVideoEventStarted"

    const-string v2, "started"

    invoke-direct {v0, v1, v4, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventStarted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .line 12
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    const-string v1, "SPTPNVideoEventAborted"

    const-string v2, "aborted"

    invoke-direct {v0, v1, v5, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventAborted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .line 13
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    const-string v1, "SPTPNVideoEventFinished"

    const-string v2, "finished"

    invoke-direct {v0, v1, v6, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventFinished:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .line 14
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    const-string v1, "SPTPNVideoEventClosed"

    const-string v2, "closed"

    invoke-direct {v0, v1, v7, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventClosed:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .line 15
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    const-string v1, "SPTPNVideoEventNoVideo"

    const-string v2, "no_video"

    invoke-direct {v0, v1, v8, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventNoVideo:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .line 16
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    const-string v1, "SPTPNVideoEventTimeout"

    const/4 v2, 0x5

    const-string v3, "timeout"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventTimeout:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .line 17
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    const-string v1, "SPTPNVideoEventError"

    const/4 v2, 0x6

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .line 18
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    const-string v1, "SPTPNVideoEventAdapterNotIntegrated"

    const/4 v2, 0x7

    const-string v3, "no_sdk"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventAdapterNotIntegrated:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventStarted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventAborted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventFinished:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventClosed:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventNoVideo:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventTimeout:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventAdapterNotIntegrated:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->text:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->text:Ljava/lang/String;

    return-object v0
.end method
