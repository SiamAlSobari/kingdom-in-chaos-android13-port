.class Lcom/applovin/impl/adview/r;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinLogger;

.field private final b:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/r;->a:Lcom/applovin/sdk/AppLovinLogger;

    iput-object p1, p0, Lcom/applovin/impl/adview/r;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/adview/o;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2}, Lcom/applovin/impl/adview/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/r;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "AdWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to show \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Lcom/applovin/impl/adview/o;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/impl/adview/o;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/r;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing click on ad URL \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    instance-of v0, p1, Lcom/applovin/impl/adview/o;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/adview/o;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "applovin"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "com.applovin.sdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "/adservice/next_ad"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/r;->a(Lcom/applovin/impl/adview/o;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "/adservice/close_ad"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/r;->b(Lcom/applovin/impl/adview/o;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    const-string v2, "/launch/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/r;->c(Lcom/applovin/impl/adview/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/adview/r;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "AdWebViewClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Threw Exception Trying to Launch App for Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/r;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "AdWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/r;->c(Lcom/applovin/impl/adview/o;)V

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/adview/r;->a(Landroid/net/Uri;Lcom/applovin/impl/adview/o;)V

    goto/16 :goto_0
.end method

.method a(Lcom/applovin/impl/adview/o;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/impl/adview/o;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/applovin/adview/AppLovinAdView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    :cond_0
    return-void
.end method

.method b(Lcom/applovin/impl/adview/o;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/r;->b:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->onAdHtmlLoaded(Landroid/webkit/WebView;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/adview/r;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
