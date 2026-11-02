.class public final enum Lcom/sponsorpay/user/SPUserEducation;
.super Ljava/lang/Enum;
.source "SPUserEducation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sponsorpay/user/SPUserEducation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum associates:Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum bachelors:Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum doctorate:Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum high_school:Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum in_college:Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum masters:Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum none:Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum other:Lcom/sponsorpay/user/SPUserEducation;

.field public static final enum some_college:Lcom/sponsorpay/user/SPUserEducation;


# instance fields
.field public final education:Ljava/lang/String;


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
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "other"

    const-string v2, "other"

    invoke-direct {v0, v1, v4, v2}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->other:Lcom/sponsorpay/user/SPUserEducation;

    .line 11
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "none"

    const-string v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->none:Lcom/sponsorpay/user/SPUserEducation;

    .line 12
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "high_school"

    const-string v2, "high school"

    invoke-direct {v0, v1, v6, v2}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->high_school:Lcom/sponsorpay/user/SPUserEducation;

    .line 13
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "in_college"

    const-string v2, "in college"

    invoke-direct {v0, v1, v7, v2}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->in_college:Lcom/sponsorpay/user/SPUserEducation;

    .line 14
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "some_college"

    const-string v2, "some college"

    invoke-direct {v0, v1, v8, v2}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->some_college:Lcom/sponsorpay/user/SPUserEducation;

    .line 15
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "associates"

    const/4 v2, 0x5

    const-string v3, "associates"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->associates:Lcom/sponsorpay/user/SPUserEducation;

    .line 16
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "bachelors"

    const/4 v2, 0x6

    const-string v3, "bachelors"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->bachelors:Lcom/sponsorpay/user/SPUserEducation;

    .line 17
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "masters"

    const/4 v2, 0x7

    const-string v3, "masters"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->masters:Lcom/sponsorpay/user/SPUserEducation;

    .line 18
    new-instance v0, Lcom/sponsorpay/user/SPUserEducation;

    const-string v1, "doctorate"

    const/16 v2, 0x8

    const-string v3, "doctorate"

    invoke-direct {v0, v1, v2, v3}, Lcom/sponsorpay/user/SPUserEducation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->doctorate:Lcom/sponsorpay/user/SPUserEducation;

    .line 9
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sponsorpay/user/SPUserEducation;

    sget-object v1, Lcom/sponsorpay/user/SPUserEducation;->other:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sponsorpay/user/SPUserEducation;->none:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sponsorpay/user/SPUserEducation;->high_school:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sponsorpay/user/SPUserEducation;->in_college:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sponsorpay/user/SPUserEducation;->some_college:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sponsorpay/user/SPUserEducation;->associates:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sponsorpay/user/SPUserEducation;->bachelors:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sponsorpay/user/SPUserEducation;->masters:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sponsorpay/user/SPUserEducation;->doctorate:Lcom/sponsorpay/user/SPUserEducation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sponsorpay/user/SPUserEducation;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserEducation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "education"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/sponsorpay/user/SPUserEducation;->education:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sponsorpay/user/SPUserEducation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sponsorpay/user/SPUserEducation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sponsorpay/user/SPUserEducation;

    return-object v0
.end method

.method public static values()[Lcom/sponsorpay/user/SPUserEducation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sponsorpay/user/SPUserEducation;->ENUM$VALUES:[Lcom/sponsorpay/user/SPUserEducation;

    array-length v1, v0

    new-array v2, v1, [Lcom/sponsorpay/user/SPUserEducation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sponsorpay/user/SPUserEducation;->education:Ljava/lang/String;

    return-object v0
.end method
