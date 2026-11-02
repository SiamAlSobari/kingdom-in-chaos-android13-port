.class Lcom/applovin/impl/sdk/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/y;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private final d:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private final e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private final f:Lcom/applovin/sdk/AppLovinAdRewardListener;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/y;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/applovin/impl/sdk/ad;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p6, p0, Lcom/applovin/impl/sdk/ad;->d:Lcom/applovin/sdk/AppLovinAdClickListener;

    iput-object p4, p0, Lcom/applovin/impl/sdk/ad;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/ad;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ad;->b:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/y;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/impl/sdk/z;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/applovin/impl/sdk/ad;-><init>(Lcom/applovin/impl/sdk/y;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinAdRewardListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ad;)Lcom/applovin/sdk/AppLovinAdRewardListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ad;)Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/ad;)Lcom/applovin/sdk/AppLovinAdClickListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->d:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/ad;)Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->d:Lcom/applovin/sdk/AppLovinAdClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ag;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/ag;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/y;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/y;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->c:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/af;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/af;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/cs;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v1}, Lcom/applovin/impl/sdk/y;->d(Lcom/applovin/impl/sdk/y;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/applovin/impl/sdk/cs;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v1}, Lcom/applovin/impl/sdk/y;->d(Lcom/applovin/impl/sdk/y;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cj;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/ck;->b:Lcom/applovin/impl/sdk/ck;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/y;Lcom/applovin/impl/sdk/AppLovinAdImpl;)Lcom/applovin/impl/sdk/AppLovinAdImpl;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->b(Lcom/applovin/impl/sdk/y;)Lcom/applovin/impl/sdk/cx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/cx;->a(Z)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/y;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "network_timeout"

    const/16 v0, -0x1f4

    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/bk;->a()Lcom/applovin/impl/sdk/bk;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/applovin/impl/sdk/bk;->a(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v1}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/y;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->a(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v1}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/ae;

    invoke-direct {v2, p0, p1, v0}, Lcom/applovin/impl/sdk/ae;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const-string v1, "user_closed_video"

    const/16 v0, -0x258

    goto :goto_1
.end method

.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "quota_exceeded"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ak;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/sdk/ak;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "rejected"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/al;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/sdk/al;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/aj;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/sdk/aj;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    const-string v1, "network_timeout"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->f:Lcom/applovin/sdk/AppLovinAdRewardListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/am;

    invoke-direct {v1, p0, p1, p2}, Lcom/applovin/impl/sdk/am;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ah;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/ah;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->e:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->c(Lcom/applovin/impl/sdk/y;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/applovin/impl/sdk/ai;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/ai;-><init>(Lcom/applovin/impl/sdk/ad;Lcom/applovin/sdk/AppLovinAd;DZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0, p4}, Lcom/applovin/impl/sdk/y;->a(Lcom/applovin/impl/sdk/y;Z)Z

    return-void
.end method
