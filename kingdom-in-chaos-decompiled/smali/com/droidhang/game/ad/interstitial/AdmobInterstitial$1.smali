.class Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$1;
.super Ljava/lang/Object;
.source "AdmobInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;


# direct methods
.method constructor <init>(Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$1;->this$0:Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$1;->this$0:Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;

    invoke-static {v0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->access$000(Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 42
    return-void
.end method
