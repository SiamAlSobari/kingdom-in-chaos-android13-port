.class public Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;
.super Ljava/lang/Object;
.source "SPBrandEngageMediationJSInterface.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CALLBACK_TIMEOUT:I = 0x1639

.field private static final SP_GET_OFFERS:Ljava/lang/String; = "Sponsorpay.MBE.SDKInterface.do_getOffer()"

.field private static final SP_TPN_JSON_KEY:Ljava/lang/String; = "uses_tpn"

.field private static final TAG:Ljava/lang/String; = "SPBrandEngageMediationJSInterface"


# instance fields
.field private final interfaceName:Ljava/lang/String;

.field private mCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface$1;

    invoke-direct {v0, p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface$1;-><init>(Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->mHandler:Landroid/os/Handler;

    .line 78
    const-string v0, "SynchJS"

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->interfaceName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "SynchJS"

    return-object v0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1639

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->mCallback:Landroid/webkit/ValueCallback;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->mCallback:Landroid/webkit/ValueCallback;

    .line 102
    return-void
.end method

.method public playThroughThirdParty(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;)V
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "valueCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    .line 45
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->mCallback:Landroid/webkit/ValueCallback;

    .line 46
    iget-object v3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1639

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 49
    :try_start_0
    const-string v0, "javascript:try{ JSON.parse(Sponsorpay.MBE.SDKInterface.do_getOffer()).uses_tpn;}catch(error){false;};"

    .line 51
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "evaluateJavascript"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/webkit/ValueCallback;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    .local v2, "evaluateMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 73
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "evaluateMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "SPBrandEngageMediationJSInterface"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "SPBrandEngageMediationJSInterface"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "SPBrandEngageMediationJSInterface"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "SPBrandEngageMediationJSInterface"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_4
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "SPBrandEngageMediationJSInterface"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    const-string v0, "javascript:window.SynchJS.setValue((function(){try{return JSON.parse(Sponsorpay.MBE.SDKInterface.do_getOffer()).uses_tpn;}catch(js_eval_err){return false;}})());"

    .line 68
    .restart local v0    # "code":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "code":Ljava/lang/String;
    :cond_1
    const-string v3, "SPBrandEngageMediationJSInterface"

    const-string v4, "There is no ValueCallback to notify. Aborting..."

    invoke-static {v3, v4}, Lcom/sponsorpay/utils/SponsorPayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationJSInterface;->onReceiveValue(Ljava/lang/String;)V

    .line 87
    return-void
.end method
