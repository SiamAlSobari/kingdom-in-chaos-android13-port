.class public final enum Lcom/sponsorpay/user/SPUserEthnicity;
.super Ljava/lang/Enum;
.source "SPUserEthnicity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/user/SPUserEthnicity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum asian:Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum black:Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum hispanic:Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum indian:Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum middle_eastern:Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum native_american:Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum other:Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum pacific_islander:Lcom/sponsorpay/user/SPUserEthnicity;

.field public static final enum white:Lcom/sponsorpay/user/SPUserEthnicity;


# instance fields
.field public final ethnicity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "asian"

    const-string v2, "asian"

    invoke-direct {v0, v1, v4, v2}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->asian:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 11
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "black"

    const-string v2, "black"

    invoke-direct {v0, v1, v5, v2}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->black:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 12
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "hispanic"

    const-string v2, "hispanic"

    invoke-direct {v0, v1, v6, v2}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->hispanic:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 13
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "indian"

    const-string v2, "indian"

    invoke-direct {v0, v1, v7, v2}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->indian:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 14
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "middle_eastern"

    const-string v2, "middle eastern"

    invoke-direct {v0, v1, v8, v2}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->middle_eastern:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 15
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "native_american"

    const/4 v2, 0x5

    const-string v3, "native american"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->native_american:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 16
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "pacific_islander"

    const/4 v2, 0x6

    const-string v3, "pacific islander"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->pacific_islander:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 17
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "white"

    const/4 v2, 0x7

    const-string v3, "white"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->white:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 18
    new-instance v0, Lcom/sponsorpay/user/SPUserEthnicity;

    const-string v1, "other"

    const/16 v2, 0x8

    const-string v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/user/SPUserEthnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->other:Lcom/sponsorpay/user/SPUserEthnicity;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sponsorpay/user/SPUserEthnicity;

    sget-object v1, Lcom/sponsorpay/user/SPUserEthnicity;->asian:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/user/SPUserEthnicity;->black:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/user/SPUserEthnicity;->hispanic:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/user/SPUserEthnicity;->indian:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sponsorpay/user/SPUserEthnicity;->middle_eastern:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/user/SPUserEthnicity;->native_american:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sponsorpay/user/SPUserEthnicity;->pacific_islander:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sponsorpay/user/SPUserEthnicity;->white:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sponsorpay/user/SPUserEthnicity;->other:Lcom/sponsorpay/user/SPUserEthnicity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserEthnicity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "ethnicity"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/sponsorpay/user/SPUserEthnicity;->ethnicity:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/user/SPUserEthnicity;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/user/SPUserEthnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserEthnicity;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/user/SPUserEthnicity;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/user/SPUserEthnicity;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserEthnicity;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/user/SPUserEthnicity;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sponsorpay/user/SPUserEthnicity;->ethnicity:Ljava/lang/String;

    return-object v0
.end method
