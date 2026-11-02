.class Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;
.super Ljava/lang/Object;
.source "TJAdUnitView.java"

# interfaces
.implements Lcom/tapjoy/mraid/listener/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJAdUnitView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TJAdUnitViewListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJAdUnitView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TJAdUnitView;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TJAdUnitView;Lcom/tapjoy/TJAdUnitView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tapjoy/TJAdUnitView;
    .param p2, "x1"    # Lcom/tapjoy/TJAdUnitView$1;

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;-><init>(Lcom/tapjoy/TJAdUnitView;)V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitView;->finish()V

    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 8
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 484
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v5, v5, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v5, v5, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    if-eqz v5, :cond_1

    .line 486
    const/4 v5, 0x5

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Uncaught"

    aput-object v6, v2, v5

    const-string v5, "uncaught"

    aput-object v5, v2, v7

    const/4 v5, 0x2

    const-string v6, "Error"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "error"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "not defined"

    aput-object v6, v2, v5

    .line 488
    .local v2, "errors":[Ljava/lang/String;
    const-string v5, "TJAdUnitView"

    const-string v6, "shouldClose..."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 493
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 495
    iget-object v5, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v5}, Lcom/tapjoy/TJAdUnitView;->handleClose()V

    .line 491
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errors":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return v7
.end method

.method public onEventFired()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public onExpand()Z
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public onExpandClose()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$200(Lcom/tapjoy/TJAdUnitView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    .line 537
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 539
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 506
    const-string v0, "TJAdUnitView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$200(Lcom/tapjoy/TJAdUnitView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v0}, Lcom/tapjoy/TJAdUnitView;->access$300(Lcom/tapjoy/TJAdUnitView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    .line 520
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->customClose:Z

    .line 521
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v3, v0, Lcom/tapjoy/TJAdUnitJSBridge;->shouldClose:Z

    .line 523
    :cond_1
    return-void
.end method

.method public onReady()Z
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public onResize()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public onResizeClose()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 546
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v3}, Lcom/tapjoy/TJAdUnitView;->isNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v4, "Connection not properly established"

    invoke-virtual {v3, p1, v2, v4, p2}, Lcom/tapjoy/TJAdUnitView;->handleWebViewOnReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local p1    # "view":Landroid/webkit/WebView;
    :goto_0
    return v1

    .line 550
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_0
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iput-boolean v2, v3, Lcom/tapjoy/TJAdUnitView;->redirectedActivity:Z

    .line 552
    const/4 v0, 0x0

    .line 555
    .local v0, "host":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://ws.tapjoyads.com/"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 558
    :goto_1
    const-string v3, "TJAdUnitView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interceptURL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v3, v3, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v3, v3, Lcom/tapjoy/TJAdUnitView;->webView:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView;->isMraid()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "mraid"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 563
    goto :goto_0

    .line 567
    :cond_1
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnitView;->access$400(Lcom/tapjoy/TJAdUnitView;)I

    move-result v3

    if-ne v3, v6, :cond_2

    const-string v3, "offer_wall"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 569
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v3, "offer_wall"

    invoke-static {v2, v3}, Lcom/tapjoy/TJAdUnitView;->access$500(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_2
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v3}, Lcom/tapjoy/TJAdUnitView;->access$400(Lcom/tapjoy/TJAdUnitView;)I

    move-result v3

    if-ne v3, v6, :cond_3

    const-string v3, "tjvideo"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 576
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    const-string v3, "tjvideo"

    invoke-static {v2, v3}, Lcom/tapjoy/TJAdUnitView;->access$500(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_3
    const-string v3, "tjvideo://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 585
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-static {v2, p2}, Lcom/tapjoy/TJAdUnitView;->access$600(Lcom/tapjoy/TJAdUnitView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    :cond_4
    const-string v3, "showOffers"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 593
    const-string v2, "TJAdUnitView"

    const-string v3, "showOffers"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v2, Lcom/tapjoy/TJCOffers;

    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-direct {v2, v3}, Lcom/tapjoy/TJCOffers;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tapjoy/TJCOffers;->showOffers(Lcom/tapjoy/TapjoyOffersNotifier;)V

    goto/16 :goto_0

    .line 600
    :cond_5
    const-string v3, "dismiss"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 602
    const-string v2, "TJAdUnitView"

    const-string v3, "dismiss"

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget-object v2, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    invoke-virtual {v2}, Lcom/tapjoy/TJAdUnitView;->finish()V

    goto/16 :goto_0

    .line 611
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    const-string v3, "tjyoutubevideo=true"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getRedirectDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getEventURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 613
    :cond_8
    const-string v2, "TJAdUnitView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open redirecting URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    check-cast p1, Lcom/tapjoy/mraid/view/MraidView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrlStandard(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_9
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iget-object v3, v3, Lcom/tapjoy/TJAdUnitView;->bridge:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v3, v3, Lcom/tapjoy/TJAdUnitJSBridge;->allowRedirect:Z

    if-eqz v3, :cond_a

    .line 621
    iget-object v3, p0, Lcom/tapjoy/TJAdUnitView$TJAdUnitViewListener;->this$0:Lcom/tapjoy/TJAdUnitView;

    iput-boolean v1, v3, Lcom/tapjoy/TJAdUnitView;->redirectedActivity:Z

    move v1, v2

    .line 622
    goto/16 :goto_0

    .line 627
    :cond_a
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 556
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method
