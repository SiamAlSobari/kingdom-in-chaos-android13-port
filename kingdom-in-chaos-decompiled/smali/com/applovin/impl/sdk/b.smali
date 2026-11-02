.class public Lcom/applovin/impl/sdk/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/f;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/f;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinAdService;)V
    .locals 0

    check-cast p1, Lcom/applovin/impl/sdk/f;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;-><init>(Lcom/applovin/impl/sdk/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/f;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/f;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
