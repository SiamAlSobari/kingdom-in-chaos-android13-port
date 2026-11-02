.class final enum Lcom/applovin/impl/sdk/ck;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/ck;

.field public static final enum b:Lcom/applovin/impl/sdk/ck;

.field public static final enum c:Lcom/applovin/impl/sdk/ck;

.field private static final synthetic d:[Lcom/applovin/impl/sdk/ck;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/ck;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/ck;->a:Lcom/applovin/impl/sdk/ck;

    new-instance v0, Lcom/applovin/impl/sdk/ck;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/sdk/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/ck;->b:Lcom/applovin/impl/sdk/ck;

    new-instance v0, Lcom/applovin/impl/sdk/ck;

    const-string v1, "POSTBACKS"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/sdk/ck;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/ck;->c:Lcom/applovin/impl/sdk/ck;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/impl/sdk/ck;

    sget-object v1, Lcom/applovin/impl/sdk/ck;->a:Lcom/applovin/impl/sdk/ck;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/ck;->b:Lcom/applovin/impl/sdk/ck;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/sdk/ck;->c:Lcom/applovin/impl/sdk/ck;

    aput-object v1, v0, v4

    sput-object v0, Lcom/applovin/impl/sdk/ck;->d:[Lcom/applovin/impl/sdk/ck;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
