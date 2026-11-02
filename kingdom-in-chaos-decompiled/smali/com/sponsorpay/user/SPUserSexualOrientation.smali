.class public final enum Lcom/sponsorpay/user/SPUserSexualOrientation;
.super Ljava/lang/Enum;
.source "SPUserSexualOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/user/SPUserSexualOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/user/SPUserSexualOrientation;

.field public static final enum bisexual:Lcom/sponsorpay/user/SPUserSexualOrientation;

.field public static final enum gay:Lcom/sponsorpay/user/SPUserSexualOrientation;

.field public static final enum straight:Lcom/sponsorpay/user/SPUserSexualOrientation;

.field public static final enum unknown:Lcom/sponsorpay/user/SPUserSexualOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/sponsorpay/user/SPUserSexualOrientation;

    const-string v1, "straight"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/user/SPUserSexualOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserSexualOrientation;->straight:Lcom/sponsorpay/user/SPUserSexualOrientation;

    .line 11
    new-instance v0, Lcom/sponsorpay/user/SPUserSexualOrientation;

    const-string v1, "bisexual"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/user/SPUserSexualOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserSexualOrientation;->bisexual:Lcom/sponsorpay/user/SPUserSexualOrientation;

    .line 12
    new-instance v0, Lcom/sponsorpay/user/SPUserSexualOrientation;

    const-string v1, "gay"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/user/SPUserSexualOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserSexualOrientation;->gay:Lcom/sponsorpay/user/SPUserSexualOrientation;

    .line 13
    new-instance v0, Lcom/sponsorpay/user/SPUserSexualOrientation;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/user/SPUserSexualOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserSexualOrientation;->unknown:Lcom/sponsorpay/user/SPUserSexualOrientation;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sponsorpay/user/SPUserSexualOrientation;

    sget-object v1, Lcom/sponsorpay/user/SPUserSexualOrientation;->straight:Lcom/sponsorpay/user/SPUserSexualOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/user/SPUserSexualOrientation;->bisexual:Lcom/sponsorpay/user/SPUserSexualOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/user/SPUserSexualOrientation;->gay:Lcom/sponsorpay/user/SPUserSexualOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/user/SPUserSexualOrientation;->unknown:Lcom/sponsorpay/user/SPUserSexualOrientation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sponsorpay/user/SPUserSexualOrientation;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserSexualOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/user/SPUserSexualOrientation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/user/SPUserSexualOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserSexualOrientation;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/user/SPUserSexualOrientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/user/SPUserSexualOrientation;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserSexualOrientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/user/SPUserSexualOrientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
