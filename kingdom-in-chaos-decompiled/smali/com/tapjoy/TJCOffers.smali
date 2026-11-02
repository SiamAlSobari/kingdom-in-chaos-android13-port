.class public Lcom/tapjoy/TJCOffers;
.super Ljava/lang/Object;
.source "TJCOffers.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TapjoyOffers"

.field private static tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static getOffersNotifierResponse()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    invoke-interface {v0}, Lcom/tapjoy/TapjoyOffersNotifier;->getOffersResponse()V

    .line 112
    :cond_0
    return-void
.end method

.method public static getOffersNotifierResponseFailed(Ljava/lang/String;)V
    .locals 1
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    invoke-interface {v0, p0}, Lcom/tapjoy/TapjoyOffersNotifier;->getOffersResponseFailed(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V

    .line 39
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJEventData;Ljava/lang/String;Lcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 8
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z
    .param p3, "eventData"    # Lcom/tapjoy/TJEventData;
    .param p4, "callbackID"    # Ljava/lang/String;
    .param p5, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 64
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 66
    invoke-static {v7}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(I)V

    .line 67
    sput-object p5, Lcom/tapjoy/TJCOffers;->tapjoyOffersNotifier:Lcom/tapjoy/TapjoyOffersNotifier;

    .line 69
    if-eqz p2, :cond_3

    const-string v1, "1"

    .line 72
    .local v1, "multipleCurrencySelector":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 74
    .local v2, "offersURLParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "currency_id"

    invoke-static {v2, v3, p1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    const-string v3, "currency_selector"

    invoke-static {v2, v3, v1, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    const-class v4, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 81
    const-string v3, "TapjoyOffers"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showOffers for eventName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/tapjoy/TJEventData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 85
    const-string v3, "callback_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    :cond_1
    const-string v3, "view_type"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v3, "tjevent"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    const-string v3, "legacy_view"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v3, "URL_PARAMS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 95
    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v0, v7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "multipleCurrencySelector":Ljava/lang/String;
    .end local v2    # "offersURLParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void

    .line 69
    :cond_3
    const-string v1, "0"

    goto :goto_0

    .line 99
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "multipleCurrencySelector":Ljava/lang/String;
    .restart local v2    # "offersURLParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TapjoyOffersNotifier;)V
    .locals 6
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z
    .param p3, "notifier"    # Lcom/tapjoy/TapjoyOffersNotifier;

    .prologue
    const/4 v3, 0x0

    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tapjoy/TJCOffers;->showOffersWithCurrencyID(Ljava/lang/String;ZLcom/tapjoy/TJEventData;Ljava/lang/String;Lcom/tapjoy/TapjoyOffersNotifier;)V

    .line 51
    return-void
.end method
