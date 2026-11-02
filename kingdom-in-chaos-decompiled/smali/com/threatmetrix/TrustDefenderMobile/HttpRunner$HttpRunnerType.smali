.class final enum Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;
.super Ljava/lang/Enum;
.source "HttpRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefenderMobile/HttpRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HttpRunnerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

.field public static final enum GET:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

.field public static final enum GET_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

.field public static final enum POST:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

.field public static final enum POST_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->GET:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    const-string v1, "GET_CONSUME"

    invoke-direct {v0, v1, v3}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->GET_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->POST:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    const-string v1, "POST_CONSUME"

    invoke-direct {v0, v1, v5}, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->POST_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->GET:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->GET_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->POST:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->POST_CONSUME:Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->$VALUES:[Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    return-object v0
.end method

.method public static values()[Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->$VALUES:[Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    invoke-virtual {v0}, [Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threatmetrix/TrustDefenderMobile/HttpRunner$HttpRunnerType;

    return-object v0
.end method
