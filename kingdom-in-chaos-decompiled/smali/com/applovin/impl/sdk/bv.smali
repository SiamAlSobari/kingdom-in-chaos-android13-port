.class public Lcom/applovin/impl/sdk/bv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/bu;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bu;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->O:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aw:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->ax:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->R:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->T:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aJ:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aK:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aL:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aI:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->W:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->ao:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aq:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->ar:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->as:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->au:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->at:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->av:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->ay:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->az:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aO:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public u()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aP:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aQ:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aW:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aU:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aV:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bv;->a:Lcom/applovin/impl/sdk/bu;

    sget-object v1, Lcom/applovin/impl/sdk/br;->aX:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bu;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
