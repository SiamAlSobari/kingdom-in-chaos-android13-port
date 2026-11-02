.class Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$2;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;


# direct methods
.method constructor <init>(Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$2;->this$0:Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "dh"

    const-string v1, "InMobi, loadAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$2;->this$0:Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;

    invoke-static {v0}, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->access$000(Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;)Lcom/inmobi/monetization/IMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    .line 70
    return-void
.end method
