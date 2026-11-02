.class public final enum Lcom/sponsorpay/utils/SponsorPayLogger$Level;
.super Ljava/lang/Enum;
.source "SponsorPayLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sponsorpay/utils/SponsorPayLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/utils/SponsorPayLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/utils/SponsorPayLogger$Level;

.field public static final enum ERROR:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

.field public static final enum INFO:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

.field public static final enum VERBOSE:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

.field public static final enum WARNING:Lcom/sponsorpay/utils/SponsorPayLogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/utils/SponsorPayLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->VERBOSE:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    .line 18
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/utils/SponsorPayLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->DEBUG:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    .line 19
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/utils/SponsorPayLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->INFO:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    .line 20
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/utils/SponsorPayLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->WARNING:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    .line 21
    new-instance v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/sponsorpay/utils/SponsorPayLogger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->ERROR:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->VERBOSE:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->DEBUG:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->INFO:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->WARNING:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->ERROR:Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->ENUM$VALUES:[Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/utils/SponsorPayLogger$Level;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/utils/SponsorPayLogger$Level;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/utils/SponsorPayLogger$Level;->ENUM$VALUES:[Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/utils/SponsorPayLogger$Level;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
