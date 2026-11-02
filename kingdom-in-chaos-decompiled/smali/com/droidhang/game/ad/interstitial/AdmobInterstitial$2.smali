.class Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$2;
.super Ljava/lang/Object;
.source "AdmobInterstitial.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->loadAd()V
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
    .line 64
    iput-object p1, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$2;->this$0:Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial$2;->this$0:Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;

    invoke-static {v0}, Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;->access$000(Lcom/droidhang/game/ad/interstitial/AdmobInterstitial;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 68
    return-void
.end method
