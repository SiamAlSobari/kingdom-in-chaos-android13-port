.class public Lcom/applovin/impl/adview/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# static fields
.field public static volatile a:Z

.field public static volatile b:Z

.field private static final c:Ljava/util/Map;

.field private static volatile n:Z


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final f:Landroid/app/Activity;

.field private volatile g:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile h:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile i:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private volatile j:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private volatile k:Lcom/applovin/impl/sdk/AppLovinAdImpl;

.field private volatile l:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

.field private volatile m:Lcom/applovin/impl/adview/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/adview/af;->c:Ljava/util/Map;

    sput-boolean v1, Lcom/applovin/impl/adview/af;->a:Z

    sput-boolean v1, Lcom/applovin/impl/adview/af;->b:Z

    return-void
.end method

.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/af;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/impl/adview/af;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/impl/adview/af;->b:Z

    iput-object p2, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    sget-object v0, Lcom/applovin/impl/adview/af;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/adview/af;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/af;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/af;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/aj;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/aj;-><init>(Lcom/applovin/impl/adview/af;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/af;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/af;->i()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/af;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/af;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/af;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/af;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/ai;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/adview/ai;-><init>(Lcom/applovin/impl/adview/af;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/af;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/adview/af;->h()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/af;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/af;)Lcom/applovin/impl/adview/w;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->m:Lcom/applovin/impl/adview/w;

    return-object v0
.end method

.method private h()V
    .locals 3

    new-instance v0, Lcom/applovin/impl/adview/x;

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iget-object v2, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/adview/x;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    invoke-virtual {v0, p0}, Lcom/applovin/impl/adview/x;->a(Lcom/applovin/impl/adview/af;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/af;->m:Lcom/applovin/impl/adview/w;

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->k:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/x;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private i()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    const-class v2, Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.applovin.interstitial.wrapper_id"

    iget-object v2, p0, Lcom/applovin/impl/adview/af;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-object p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->lastKnownWrapper:Lcom/applovin/impl/adview/af;

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/af;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/adview/w;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->m:Lcom/applovin/impl/adview/w;

    return-void
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/applovin/impl/adview/af;->n:Z

    return-void
.end method

.method public b()Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->k:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    return-object v0
.end method

.method public c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->i:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method

.method public d()Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->h:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->m:Lcom/applovin/impl/adview/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/ak;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/ak;-><init>(Lcom/applovin/impl/adview/af;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e()Lcom/applovin/sdk/AppLovinAdClickListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->j:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-object v0
.end method

.method public f()Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->l:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    return-object v0
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/impl/adview/af;->a:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/impl/adview/af;->b:Z

    sget-object v0, Lcom/applovin/impl/adview/af;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isAdReadyToDisplay()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdService;->hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    sget-boolean v0, Lcom/applovin/impl/adview/af;->n:Z

    return v0
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->j:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->h:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->i:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/adview/ag;

    invoke-direct {v2, p0}, Lcom/applovin/impl/adview/ag;-><init>(Lcom/applovin/impl/adview/af;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public showAndRender(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/adview/af;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialAdDialog"

    const-string v2, "Attempted to show an interstitial while one is already displayed; ignoring."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iput-object p1, p0, Lcom/applovin/impl/adview/af;->k:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->k:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->k:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getTarget()Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/applovin/impl/adview/af;->l:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->k:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getVideoFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->k:Lcom/applovin/impl/sdk/AppLovinAdImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdImpl;->getVideoFilename()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-class v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    iget-object v1, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v1

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->l:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    sget-object v2, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->ACTIVITY_LANDSCAPE:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/af;->l:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    sget-object v2, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->ACTIVITY_PORTRAIT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    if-ne v0, v2, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/applovin/impl/adview/af;->f:Landroid/app/Activity;

    new-instance v3, Lcom/applovin/impl/adview/ah;

    invoke-direct {v3, p0, v1, v0}, Lcom/applovin/impl/adview/ah;-><init>(Lcom/applovin/impl/adview/af;ZZ)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;->DEFAULT:Lcom/applovin/impl/sdk/AppLovinAdImpl$AdTarget;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method
