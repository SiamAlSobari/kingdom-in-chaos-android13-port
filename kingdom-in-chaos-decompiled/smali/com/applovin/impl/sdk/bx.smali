.class public Lcom/applovin/impl/sdk/bx;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/bw;


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bx;->a:Lcom/applovin/impl/sdk/bw;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bx;->a:Lcom/applovin/impl/sdk/bw;

    const-string v1, "ad_imp"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/bx;->a:Lcom/applovin/impl/sdk/bw;

    const-string v1, "ad_imp_session"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bw;->a(Ljava/lang/String;)V

    return-void
.end method
