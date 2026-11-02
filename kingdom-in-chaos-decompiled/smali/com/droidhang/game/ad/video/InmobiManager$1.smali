.class Lcom/droidhang/game/ad/video/InmobiManager$1;
.super Ljava/lang/Object;
.source "InmobiManager.java"

# interfaces
.implements Lcom/inmobi/monetization/IMInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/video/InmobiManager;->onCreate(Landroid/app/Activity;Ljava/lang/String;Lcom/droidhang/game/ad/video/VideoAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/game/ad/video/InmobiManager;


# direct methods
.method constructor <init>(Lcom/droidhang/game/ad/video/InmobiManager;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/droidhang/game/ad/video/InmobiManager$1;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager$1;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/InmobiManager;->watchCancelled()V

    .line 41
    const-string v0, "dh"

    const-string v1, "onDismissInterstitialScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager$1;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/InmobiManager;->preload()V

    .line 43
    return-void
.end method

.method public onInterstitialFailed(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V
    .locals 3
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;
    .param p2, "arg1"    # Lcom/inmobi/monetization/IMErrorCode;

    .prologue
    .line 60
    const-string v0, "dh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterstitialFailed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onInterstitialInteraction(Lcom/inmobi/monetization/IMInterstitial;Ljava/util/Map;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/inmobi/monetization/IMInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/monetization/IMInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "dh"

    const-string v1, "onInterstitialInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public onInterstitialLoaded(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/droidhang/game/ad/video/InmobiManager$1;->this$0:Lcom/droidhang/game/ad/video/InmobiManager;

    invoke-virtual {v0}, Lcom/droidhang/game/ad/video/InmobiManager;->adLoaded()V

    .line 48
    const-string v0, "dh"

    const-string v1, "onInterstitialLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 35
    const-string v0, "dh"

    const-string v1, "onLeaveApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public onShowInterstitialScreen(Lcom/inmobi/monetization/IMInterstitial;)V
    .locals 2
    .param p1, "arg0"    # Lcom/inmobi/monetization/IMInterstitial;

    .prologue
    .line 30
    const-string v0, "dh"

    const-string v1, "onShowInterstitialScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
