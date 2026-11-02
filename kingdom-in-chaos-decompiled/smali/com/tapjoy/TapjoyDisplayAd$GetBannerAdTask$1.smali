.class Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;
.super Ljava/lang/Object;
.source "TapjoyDisplayAd.java"

# interfaces
.implements Lcom/tapjoy/mraid/listener/MraidViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->onPostExecute(Lcom/tapjoy/TapjoyHttpURLResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;->this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public onEventFired()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onExpand()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public onExpandClose()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 336
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 333
    return-void
.end method

.method public onReady()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 326
    return-void
.end method

.method public onResize()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public onResizeClose()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2710

    .line 341
    const/4 v6, 0x0

    .line 344
    .local v6, "host":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://ws.tapjoyads.com/"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 347
    :goto_0
    const-string v0, "Banner Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with host "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    if-eqz v6, :cond_0

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "tjyoutubevideo=true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    :cond_1
    const-string v0, "Banner Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open redirecting URL = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    check-cast p1, Lcom/tapjoy/mraid/view/MraidView;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-virtual {p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrlStandard(Ljava/lang/String;)V

    .line 363
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;->this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->resumeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;->this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->resumeTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;->this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    .line 369
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;->this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->resumeTimer:Ljava/util/Timer;

    .line 370
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;->this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->resumeTimer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;

    iget-object v4, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;->this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    iget-object v4, v4, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;-><init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 371
    const/4 v0, 0x1

    return v0

    .line 356
    .restart local p1    # "view":Landroid/webkit/WebView;
    :cond_3
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask$1;->this$1:Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd$GetBannerAdTask;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-static {v0}, Lcom/tapjoy/TapjoyDisplayAd;->access$000(Lcom/tapjoy/TapjoyDisplayAd;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 345
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
