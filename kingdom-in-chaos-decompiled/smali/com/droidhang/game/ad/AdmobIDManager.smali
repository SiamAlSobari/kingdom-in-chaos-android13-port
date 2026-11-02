.class public Lcom/droidhang/game/ad/AdmobIDManager;
.super Ljava/lang/Object;
.source "AdmobIDManager.java"


# static fields
.field static final BANNER_AD:Ljava/lang/String; = "ambne2rid3"

.field static final INTERSTITIAL_AD:Ljava/lang/String; = "ambiteradi1d"

.field static _activity:Landroid/app/Activity;

.field static _iAdId:Lcom/droidhang/game/ad/IAdId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdmobBannerAdId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/droidhang/game/ad/AdmobIDManager;->_activity:Landroid/app/Activity;

    const-string v1, "ambne2rid3"

    sget-object v2, Lcom/droidhang/game/ad/AdmobIDManager;->_iAdId:Lcom/droidhang/game/ad/IAdId;

    invoke-interface {v2}, Lcom/droidhang/game/ad/IAdId;->getAdmobBannerAdid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdmobInterstitialAdId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 22
    sget-object v0, Lcom/droidhang/game/ad/AdmobIDManager;->_activity:Landroid/app/Activity;

    const-string v1, "ambiteradi1d"

    sget-object v2, Lcom/droidhang/game/ad/AdmobIDManager;->_iAdId:Lcom/droidhang/game/ad/IAdId;

    invoke-interface {v2}, Lcom/droidhang/game/ad/IAdId;->getAdmobInterstitialAdId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "iAdId"    # Lcom/droidhang/game/ad/IAdId;

    .prologue
    .line 17
    sput-object p0, Lcom/droidhang/game/ad/AdmobIDManager;->_activity:Landroid/app/Activity;

    .line 18
    sput-object p1, Lcom/droidhang/game/ad/AdmobIDManager;->_iAdId:Lcom/droidhang/game/ad/IAdId;

    .line 19
    return-void
.end method

.method public static setAdmobBannerAdId(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/droidhang/game/ad/AdmobIDManager;->getAdmobBannerAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admobid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v0, Lcom/droidhang/game/ad/AdmobIDManager;->_activity:Landroid/app/Activity;

    const-string v1, "ambne2rid3"

    invoke-static {v0, v1, p0}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public static setAdmobInterstitialAdId(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/droidhang/game/ad/AdmobIDManager;->getAdmobInterstitialAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admobfd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lcom/droidhang/game/ad/AdmobIDManager;->_activity:Landroid/app/Activity;

    const-string v1, "ambiteradi1d"

    invoke-static {v0, v1, p0}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method
