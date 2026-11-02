.class public Lcom/droidhang/ph/GameActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "GameActivity.java"

# interfaces
.implements Lcom/tapjoy/TapjoyNotifier;
.implements Lcom/tapjoy/TapjoySpendPointsNotifier;
.implements Lcom/droidhang/game/ad/IAdId;
.implements Lcom/droidhang/game/ad/video/VideoAdCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlgO1lBWNXlmiCJR24b+wHDJhwtBDcfZlNn6B2hcGUvA1mpadRF4tlpQ1cikJ3CiRUgxYh25Mkaojvb2vZcbE1OLkd5sYcKjhfdh2DQU1JMCPN4oLKAIzXfJ+sZsiMkvWMpoiT/WaWwKhtpb0ugcGX++gRQvVMSRKBmcPeBgbabq59/Yf2hT1a1akHLEnWvWCPefJb4JDeZqzcofXSSXI6WpV3ANR4DxHF/Gs6Syww+zN9bl3cNgd1lMN5xprOj/d2FpaFLZl63xf2/oO7cz7r4JNPya7CZtC/zj4QucUGAhngi2wSlVqbH9o/2zXS+gwNIrHwFzDsCWhhsdHU2FxYQIDAQAB"

.field public static STATIC_REF:Landroid/content/Context;


# instance fields
.field final REQUEST_ACHIEVEMENTS:I

.field final REQUEST_LEADERBOARD:I

.field private _spendTapPoint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/droidhang/ph/GameActivity;->STATIC_REF:Landroid/content/Context;

    .line 101
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhang/ph/GameActivity;->_spendTapPoint:I

    .line 54
    const/16 v0, 0x1389

    iput v0, p0, Lcom/droidhang/ph/GameActivity;->REQUEST_LEADERBOARD:I

    .line 55
    const/16 v0, 0x138a

    iput v0, p0, Lcom/droidhang/ph/GameActivity;->REQUEST_ACHIEVEMENTS:I

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/droidhang/ph/GameActivity;->STATIC_REF:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public adLoaded()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public getAdmobBannerAdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "ca-app-pub-6751988454642532/8512160603"

    return-object v0
.end method

.method public getAdmobInterstitialAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "ca-app-pub-6751988454642532/9988893809"

    return-object v0
.end method

.method public getInMobiInterstitialAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, ""

    return-object v0
.end method

.method public getInmobiVideoAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, ""

    return-object v0
.end method

.method public getSpendPointsResponse(Ljava/lang/String;I)V
    .locals 3
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 160
    const-string v0, "be"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpendPointsResponse, pointTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v0, p0, Lcom/droidhang/ph/GameActivity;->_spendTapPoint:I

    if-lez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/droidhang/ph/GameActivity;->_spendTapPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " coins!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wwcd/util/ToastUtil;->alertShort(Landroid/app/Activity;Ljava/lang/String;)V

    .line 163
    iget v0, p0, Lcom/droidhang/ph/GameActivity;->_spendTapPoint:I

    iget-object v1, p0, Lcom/droidhang/ph/GameActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0, v1}, Lcom/hz/game/be/util/BEUtil;->addCoins(ILandroid/opengl/GLSurfaceView;)V

    .line 164
    const-string v0, "be"

    const-string v1, "getSpendPointsResponse bbb"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/droidhang/ph/GameActivity;->_spendTapPoint:I

    .line 167
    return-void
.end method

.method public getSpendPointsResponseFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 172
    return-void
.end method

.method public getUpdatePoints(Ljava/lang/String;I)V
    .locals 3
    .param p1, "currencyName"    # Ljava/lang/String;
    .param p2, "pointTotal"    # I

    .prologue
    .line 176
    const-string v0, "be"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdatePoints, pointTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-lez p2, :cond_0

    .line 178
    iput p2, p0, Lcom/droidhang/ph/GameActivity;->_spendTapPoint:I

    .line 180
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    # invoke-virtual {v0, p2, p0}, Lcom/tapjoy/TapjoyConnect;->noop_spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V

    .line 182
    :cond_0
    return-void
.end method

.method public getUpdatePointsFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 187
    return-void
.end method

.method public getVungleVideoAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/droidhang/ph/GameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    const-string v0, "be"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult, requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/droidhang/pay/DHGooglePaymentManager;->getInstance()Lcom/droidhang/pay/DHGooglePaymentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/droidhang/pay/DHGooglePaymentManager;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sput-object p0, Lcom/droidhang/ph/GameActivity;->STATIC_REF:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/droidhang/ph/GameActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {p0, v0}, Lcom/hz/game/be/util/BEUtil;->init(Lcom/droidhang/ph/GameActivity;Landroid/opengl/GLSurfaceView;)V

    .line 63
    # invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->noop_updateOnlineConfig(Landroid/content/Context;)V

    .line 66
    const-string v0, "0e825862-b374-4419-afb8-a1fb2805b02b"

    const-string v1, "iUsG5kb3zmOvly6P4fQw"

    # invoke-static {p0, v0, v1}, Lcom/tapjoy/TapjoyConnect;->noop_requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    const-string v0, "be"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/wwcd/util/AndroidUtil;->getLocale(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    # invoke-static {p0, p0, p0}, Lcom/droidhang/game/DHGames;->noop_init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;Lcom/droidhang/game/ad/video/VideoAdCallback;)V

    .line 71
    iget-object v0, p0, Lcom/droidhang/ph/GameActivity;->_featureLayout:Landroid/widget/FrameLayout;

    # invoke-static {p0, v0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->noop_init(Landroid/app/Activity;Landroid/widget/FrameLayout;)V

    .line 72
    invoke-static {}, Lcom/droidhang/pay/DHGooglePaymentManager;->getInstance()Lcom/droidhang/pay/DHGooglePaymentManager;

    move-result-object v0

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlgO1lBWNXlmiCJR24b+wHDJhwtBDcfZlNn6B2hcGUvA1mpadRF4tlpQ1cikJ3CiRUgxYh25Mkaojvb2vZcbE1OLkd5sYcKjhfdh2DQU1JMCPN4oLKAIzXfJ+sZsiMkvWMpoiT/WaWwKhtpb0ugcGX++gRQvVMSRKBmcPeBgbabq59/Yf2hT1a1akHLEnWvWCPefJb4JDeZqzcofXSSXI6WpV3ANR4DxHF/Gs6Syww+zN9bl3cNgd1lMN5xprOj/d2FpaFLZl63xf2/oO7cz7r4JNPya7CZtC/zj4QucUGAhngi2wSlVqbH9o/2zXS+gwNIrHwFzDsCWhhsdHU2FxYQIDAQAB"

    const/16 v2, 0x7db

    iget-object v3, p0, Lcom/droidhang/ph/GameActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    # invoke-virtual {v0, v1, v2, p0, v3}, Lcom/droidhang/pay/DHGooglePaymentManager;->noop_init(Ljava/lang/String;ILandroid/app/Activity;Landroid/opengl/GLSurfaceView;)V

    .line 74
    iget-object v0, p0, Lcom/droidhang/ph/GameActivity;->_admobLayout:Landroid/widget/RelativeLayout;

    # invoke-static {p0, v0}, Lcom/hz/game/be/util/AdMgr;->noop_init(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    .line 75
    # invoke-static {p0, v4, v4}, Lcom/hz/game/be/util/AdMgr;->noop_enable(Landroid/app/Activity;II)V

    .line 76
    return-void
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 7

    .prologue
    const/4 v1, 0x5

    .line 93
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "glSurfaceView":Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 97
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/droidhang/pay/DHGooglePaymentManager;->getInstance()Lcom/droidhang/pay/DHGooglePaymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/droidhang/pay/DHGooglePaymentManager;->destroy()V

    .line 154
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 155
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 138
    const-string v0, "be"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    # invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->noop_appPause()V

    .line 143
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 118
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    # invoke-virtual {v1, p0}, Lcom/tapjoy/TapjoyConnect;->noop_getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 120
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    # invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnect;->noop_appResume()V

    .line 123
    :cond_0
    const-string v1, "be"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :try_start_0
    const-string v1, "7dd88457abf2732cd6eb9e4e740eb23b"

    const/4 v2, 0x0

    const-string v3, ""

    # invoke-static {v1, v2, v3, p0}, Lcom/sponsorpay/SponsorPay;->noop_start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    # invoke-static {}, Lcom/hz/game/be/util/BEUtil;->noop_onRated()V

    .line 133
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "be"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 148
    const-string v0, "be"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 107
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 108
    const-string v0, "be"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged,hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Lcom/hz/game/be/util/BEUtil;->hideToolbar()V

    .line 112
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/droidhang/ph/GameActivity;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-static {v0, v1}, Lcom/hz/game/be/util/BEUtil;->onWindowFocusChanged(ILandroid/opengl/GLSurfaceView;)V

    .line 113
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public watchComplete(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    invoke-static {}, Lcom/hz/game/be/util/BEUtil;->completedVideo()V

    .line 224
    :cond_0
    return-void
.end method
