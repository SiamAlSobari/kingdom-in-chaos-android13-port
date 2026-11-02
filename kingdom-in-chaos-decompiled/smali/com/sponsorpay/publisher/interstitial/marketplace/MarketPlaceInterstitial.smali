.class public Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;
.super Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
.source "MarketPlaceInterstitial.java"

# interfaces
.implements Lcom/sponsorpay/mediation/SPMediationUserActivityListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter",
        "<",
        "Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;",
        ">;",
        "Lcom/sponsorpay/mediation/SPMediationUserActivityListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field protected static final CREATE_WEBVIEW:I = 0x0

.field protected static final LOAD_HTML:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MarketPlaceInterstitial"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCloseButtonLayout:Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;

.field private mHtmlContent:Ljava/lang/String;

.field private mMainHandler:Landroid/os/Handler;

.field private mMainLayout:Landroid/widget/FrameLayout;

.field private mOrientation:Ljava/lang/String;

.field private mRotation:Ljava/lang/String;

.field private mWebClient:Landroid/webkit/WebViewClient;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sponsorpay/mediation/marketplace/MarketPlaceAdapter;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 59
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$1;-><init>(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$0(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$1(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->createMainLayout(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->getWebClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mHtmlContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireClickEvent()V

    return-void
.end method

.method static synthetic access$6(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireShowErrorEvent(Ljava/lang/String;)V

    return-void
.end method

.method private createMainLayout(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 206
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainLayout:Landroid/widget/FrameLayout;

    .line 210
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;

    invoke-direct {v0, p1}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mCloseButtonLayout:Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;

    .line 213
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mCloseButtonLayout:Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mCloseButtonLayout:Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/view/InterstitialCloseButtonRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void
.end method

.method private fireCloseEventAndRemoveAttachedView()V
    .locals 0

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireCloseEvent()V

    .line 259
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->removeAttachedLayout()V

    .line 260
    return-void
.end method

.method private getWebClient()Landroid/webkit/WebViewClient;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mWebClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial$2;-><init>(Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mWebClient:Landroid/webkit/WebViewClient;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mWebClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method private loadHtml()V
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method

.method private lockWithProvidedOrientation(I)V
    .locals 1
    .param p1, "providedOrientation"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 324
    return-void
.end method

.method private removeAttachedLayout()V
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    .local v0, "parentViewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 236
    .end local v0    # "parentViewGroup":Landroid/view/ViewGroup;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mHtmlContent:Ljava/lang/String;

    .line 237
    return-void
.end method

.method private setOrientation()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 270
    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mRotation:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 271
    .local v1, "rotationAsInt":I
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sponsorpay/utils/HostInfo;->getHostInfo(Landroid/content/Context;)Lcom/sponsorpay/utils/HostInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sponsorpay/utils/HostInfo;->hasDeviceRevserseOrientation()Z

    move-result v0

    .line 273
    .local v0, "hasDeviceReverseOrientation":Z
    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mOrientation:Ljava/lang/String;

    const-string v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    if-eqz v0, :cond_2

    .line 277
    if-ne v1, v4, :cond_1

    .line 278
    invoke-direct {p0, v8}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->lockWithProvidedOrientation(I)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-direct {p0, v4}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->lockWithProvidedOrientation(I)V

    goto :goto_0

    .line 287
    :cond_2
    if-ne v1, v6, :cond_3

    .line 288
    invoke-direct {p0, v8}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->lockWithProvidedOrientation(I)V

    goto :goto_0

    .line 290
    :cond_3
    invoke-direct {p0, v4}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->lockWithProvidedOrientation(I)V

    goto :goto_0

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mOrientation:Ljava/lang/String;

    const-string v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    if-eqz v0, :cond_6

    .line 298
    if-ne v1, v6, :cond_5

    .line 299
    invoke-direct {p0, v7}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->lockWithProvidedOrientation(I)V

    goto :goto_0

    .line 301
    :cond_5
    invoke-direct {p0, v5}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->lockWithProvidedOrientation(I)V

    goto :goto_0

    .line 308
    :cond_6
    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 309
    invoke-direct {p0, v7}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->lockWithProvidedOrientation(I)V

    goto :goto_0

    .line 311
    :cond_7
    invoke-direct {p0, v5}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->lockWithProvidedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    return-void
.end method

.method public isAdAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->removeAttachedLayout()V

    .line 94
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getContextData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "html"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mHtmlContent:Ljava/lang/String;

    .line 95
    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mHtmlContent:Ljava/lang/String;

    invoke-static {v2}, Lcom/sponsorpay/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "hasHtml":Z
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getContextData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "orientation"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mOrientation:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;->getContextData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "rotation"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mRotation:Ljava/lang/String;

    .line 100
    if-eqz v0, :cond_1

    .line 101
    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 103
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 104
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 107
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->setAdAvailable()V

    .line 109
    :cond_1
    return v0
.end method

.method public notifyOnBackPressed()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireCloseEventAndRemoveAttachedView()V

    .line 242
    return-void
.end method

.method public notifyOnHomePressed()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireCloseEventAndRemoveAttachedView()V

    .line 247
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireCloseEventAndRemoveAttachedView()V

    .line 255
    return-void
.end method

.method protected show(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, -0x1

    .line 114
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->loadHtml()V

    .line 115
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mActivity:Landroid/app/Activity;

    .line 116
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->setOrientation()V

    .line 118
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;

    invoke-virtual {v1, p0}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialActivity;->setMarketPlaceInterstitialListener(Lcom/sponsorpay/mediation/SPMediationUserActivityListener;)V

    .line 122
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v0, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->mMainLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/marketplace/MarketPlaceInterstitial;->fireImpressionEvent()V

    .line 128
    const/4 v1, 0x1

    return v1
.end method
