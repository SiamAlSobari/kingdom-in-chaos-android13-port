.class public final enum Lcom/sponsorpay/user/SPUserConnection;
.super Ljava/lang/Enum;
.source "SPUserConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/user/SPUserConnection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/user/SPUserConnection;

.field public static final enum three_g:Lcom/sponsorpay/user/SPUserConnection;

.field public static final enum wifi:Lcom/sponsorpay/user/SPUserConnection;


# instance fields
.field public final connection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/sponsorpay/user/SPUserConnection;

    const-string v1, "wifi"

    const-string v2, "wifi"

    invoke-direct {v0, v1, v3, v2}, Lcom/sponsorpay/user/SPUserConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserConnection;->wifi:Lcom/sponsorpay/user/SPUserConnection;

    .line 11
    new-instance v0, Lcom/sponsorpay/user/SPUserConnection;

    const-string v1, "three_g"

    const-string v2, "3g"

    invoke-direct {v0, v1, v4, v2}, Lcom/sponsorpay/user/SPUserConnection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserConnection;->three_g:Lcom/sponsorpay/user/SPUserConnection;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sponsorpay/user/SPUserConnection;

    sget-object v1, Lcom/sponsorpay/user/SPUserConnection;->wifi:Lcom/sponsorpay/user/SPUserConnection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sponsorpay/user/SPUserConnection;->three_g:Lcom/sponsorpay/user/SPUserConnection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sponsorpay/user/SPUserConnection;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserConnection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "connection"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/sponsorpay/user/SPUserConnection;->connection:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/user/SPUserConnection;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/user/SPUserConnection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserConnection;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/user/SPUserConnection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/user/SPUserConnection;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserConnection;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/user/SPUserConnection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sponsorpay/user/SPUserConnection;->connection:Ljava/lang/String;

    return-object v0
.end method
