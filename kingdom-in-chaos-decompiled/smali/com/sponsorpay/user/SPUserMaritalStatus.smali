.class public final enum Lcom/sponsorpay/user/SPUserMaritalStatus;
.super Ljava/lang/Enum;
.source "SPUserMaritalStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/user/SPUserMaritalStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/user/SPUserMaritalStatus;

.field public static final enum divorced:Lcom/sponsorpay/user/SPUserMaritalStatus;

.field public static final enum engaged:Lcom/sponsorpay/user/SPUserMaritalStatus;

.field public static final enum married:Lcom/sponsorpay/user/SPUserMaritalStatus;

.field public static final enum relationship:Lcom/sponsorpay/user/SPUserMaritalStatus;

.field public static final enum single:Lcom/sponsorpay/user/SPUserMaritalStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    const-string v1, "single"

    invoke-direct {v0, v1, v2}, Lcom/sponsorpay/user/SPUserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserMaritalStatus;->single:Lcom/sponsorpay/user/SPUserMaritalStatus;

    .line 11
    new-instance v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    const-string v1, "relationship"

    invoke-direct {v0, v1, v3}, Lcom/sponsorpay/user/SPUserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserMaritalStatus;->relationship:Lcom/sponsorpay/user/SPUserMaritalStatus;

    .line 12
    new-instance v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    const-string v1, "married"

    invoke-direct {v0, v1, v4}, Lcom/sponsorpay/user/SPUserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserMaritalStatus;->married:Lcom/sponsorpay/user/SPUserMaritalStatus;

    .line 13
    new-instance v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    const-string v1, "divorced"

    invoke-direct {v0, v1, v5}, Lcom/sponsorpay/user/SPUserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserMaritalStatus;->divorced:Lcom/sponsorpay/user/SPUserMaritalStatus;

    .line 14
    new-instance v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    const-string v1, "engaged"

    invoke-direct {v0, v1, v6}, Lcom/sponsorpay/user/SPUserMaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sponsorpay/user/SPUserMaritalStatus;->engaged:Lcom/sponsorpay/user/SPUserMaritalStatus;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sponsorpay/user/SPUserMaritalStatus;

    sget-object v1, Lcom/sponsorpay/user/SPUserMaritalStatus;->single:Lcom/sponsorpay/user/SPUserMaritalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sponsorpay/user/SPUserMaritalStatus;->relationship:Lcom/sponsorpay/user/SPUserMaritalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/user/SPUserMaritalStatus;->married:Lcom/sponsorpay/user/SPUserMaritalStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/user/SPUserMaritalStatus;->divorced:Lcom/sponsorpay/user/SPUserMaritalStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/user/SPUserMaritalStatus;->engaged:Lcom/sponsorpay/user/SPUserMaritalStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sponsorpay/user/SPUserMaritalStatus;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserMaritalStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/user/SPUserMaritalStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserMaritalStatus;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/user/SPUserMaritalStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/user/SPUserMaritalStatus;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserMaritalStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/user/SPUserMaritalStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
