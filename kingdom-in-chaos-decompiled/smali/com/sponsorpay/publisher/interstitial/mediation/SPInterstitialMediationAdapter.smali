.class public abstract Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;
.super Ljava/lang/Object;
.source "SPInterstitialMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/sponsorpay/mediation/SPMediationAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

.field private mAdAvailable:Z

.field protected mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mHasBeenClicked:Z


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    .local p1, "adapter":Lcom/sponsorpay/mediation/SPMediationAdapter;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mHasBeenClicked:Z

    .line 60
    iput-object p1, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    .line 61
    return-void
.end method

.method private fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    .prologue
    .line 218
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 222
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->INSTANCE:Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;

    iget-object v1, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sponsorpay/publisher/interstitial/SPInterstitialClient;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V

    .line 225
    :cond_0
    return-void
.end method

.method private isAdAvailable()Z
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAdAvailable:Z

    return v0
.end method

.method private resetState()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mHasBeenClicked:Z

    .line 229
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAdAvailable:Z

    .line 230
    return-void
.end method


# virtual methods
.method protected abstract checkForAds(Landroid/content/Context;)V
.end method

.method protected fireClickEvent()V
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mHasBeenClicked:Z

    .line 172
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowClick:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    .line 173
    return-void
.end method

.method protected fireCloseEvent()V
    .locals 1

    .prologue
    .line 183
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mHasBeenClicked:Z

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowClose:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->resetState()V

    .line 187
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method protected fireImpressionEvent()V
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowImpression:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-direct {p0, v0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;)V

    .line 165
    return-void
.end method

.method protected fireShowErrorEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 207
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->resetState()V

    .line 208
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ShowError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-direct {p0, v0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method protected fireValidationErrorEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 195
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->resetState()V

    .line 196
    sget-object v0, Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;->ValidationError:Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;

    invoke-direct {p0, v0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->fireEvent(Lcom/sponsorpay/publisher/interstitial/SPInterstitialEvent;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    iget-object v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .line 99
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iput-object p2, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .line 101
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setAdAvailable()V
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAdAvailable:Z

    .line 151
    return-void
.end method

.method protected abstract show(Landroid/app/Activity;)Z
.end method

.method public show(Landroid/app/Activity;Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;)Z
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "ad"    # Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .prologue
    .local p0, "this":Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;, "Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter<TV;>;"
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->isAdAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iput-boolean v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mHasBeenClicked:Z

    .line 126
    iput-object p2, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mAd:Lcom/sponsorpay/publisher/interstitial/SPInterstitialAd;

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 128
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->show(Landroid/app/Activity;)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/interstitial/mediation/SPInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V

    goto :goto_0
.end method
