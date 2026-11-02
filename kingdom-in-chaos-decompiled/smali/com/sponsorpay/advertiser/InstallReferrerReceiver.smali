.class public Lcom/sponsorpay/advertiser/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallReferrerReceiver.java"


# static fields
.field private static final CONTENT_PARAM_KEY:Ljava/lang/String; = "utm_content"

.field private static final EXTRAS_KEY_REFERRER:Ljava/lang/String; = "referrer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const-string v4, ""

    .line 30
    .local v4, "referrer":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 31
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 32
    const-string v5, "referrer"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Received install referrer. Persisting data. Package name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Install referrer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v3, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v3}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 39
    .local v3, "referralParameters":Landroid/net/UrlQuerySanitizer;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 41
    invoke-virtual {v3, v4}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 42
    const-string v5, "utm_content"

    invoke-virtual {v3, v5}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "contentParameterSubId":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SubID extracted from received referrer: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-static {v5, v6}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v2, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;

    invoke-direct {v2, p1}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;-><init>(Landroid/content/Context;)V

    .line 48
    .local v2, "persistentState":Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;
    invoke-virtual {v2, v4}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->setInstallReferrer(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v0}, Lcom/sponsorpay/advertiser/SponsorPayAdvertiserState;->setInstallSubId(Ljava/lang/String;)V

    .line 50
    return-void
.end method
