.class public final enum Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;
.super Ljava/lang/Enum;
.source "SPBrandEngageClientStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SPBrandEngageClientStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE_ABORTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

.field public static final enum CLOSE_FINISHED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

.field public static final enum ERROR:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

.field public static final enum PENDING_CLOSE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

.field public static final enum STARTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->STARTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    .line 19
    new-instance v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    const-string v1, "CLOSE_FINISHED"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;-><init>(Ljava/lang/String;I)V

    .line 20
    sput-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->CLOSE_FINISHED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    .line 22
    new-instance v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    const-string v1, "CLOSE_ABORTED"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->CLOSE_ABORTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    .line 28
    new-instance v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    const-string v1, "PENDING_CLOSE"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->PENDING_CLOSE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    .line 30
    new-instance v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ERROR:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->STARTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->CLOSE_FINISHED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->CLOSE_ABORTED:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->PENDING_CLOSE:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ERROR:Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;->ENUM$VALUES:[Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/publisher/mbe/SPBrandEngageClientStatusListener$SPBrandEngageClientStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
