.class public Lcom/sponsorpay/utils/SPWebViewSettings;
.super Ljava/lang/Object;
.source "SPWebViewSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPWebViewSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enablePlugins(Landroid/webkit/WebSettings;)V
    .locals 7
    .param p0, "settings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 22
    :try_start_0
    const-class v2, Landroid/webkit/WebSettings;

    const-string v3, "setPluginState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/webkit/WebSettings$PluginState;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 23
    .local v1, "pluginStateMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1    # "pluginStateMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SPWebViewSettings"

    const-string v3, "Unable to enable plugin support for the webview"

    invoke-static {v2, v3}, Lcom/sponsorpay/utils/SponsorPayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
