.class Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$1;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->show()V
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
    .line 50
    iput-object p1, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$1;->this$0:Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "dh"

    const-string v1, "Inmobi show called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial$1;->this$0:Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;

    invoke-static {v0}, Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;->access$000(Lcom/droidhang/game/ad/interstitial/InMobiInterstitial;)Lcom/inmobi/monetization/IMInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 55
    return-void
.end method
