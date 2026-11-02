.class public abstract Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;
.super Ljava/lang/Object;
.source "SPBrandEngageMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/sponsorpay/mediation/SPMediationAdapter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final START_TIMEOUT_DELAY:I = 0x1194

.field private static final TAG:Ljava/lang/String; = "SPBrandEngageMediationAdapter"

.field private static final VALIDATION_RESULT:S = 0x1s

.field public static final VALIDATION_TIMEOUT_DELAY:I = 0x1194

.field private static final VIDEO_EVENT:S = 0x2s


# instance fields
.field protected mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mValidationContextData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidationEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

.field private mVideoContextData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

.field private mVideoPlayed:Z


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    .local p1, "adapter":Lcom/sponsorpay/mediation/SPMediationAdapter;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoPlayed:Z

    .line 86
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    .line 88
    new-instance v0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter$1;-><init>(Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method


# virtual methods
.method protected clearVideoEvent()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

    .line 222
    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoContextData:Ljava/util/Map;

    .line 223
    return-void
.end method

.method public getMediationAdapter()Lcom/sponsorpay/mediation/SPMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mAdapter:Lcom/sponsorpay/mediation/SPMediationAdapter;

    invoke-virtual {v0}, Lcom/sponsorpay/mediation/SPMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyCloseEngagement()V
    .locals 1

    .prologue
    .line 245
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    iget-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoPlayed:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventClosed:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    .line 247
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->clearVideoEvent()V

    .line 248
    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventAborted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    goto :goto_0
.end method

.method protected notifyVideoError()V
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventError:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    .line 255
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->clearVideoEvent()V

    .line 256
    return-void
.end method

.method protected notifyVideoStarted()V
    .locals 1

    .prologue
    .line 238
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventStarted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    .line 239
    return-void
.end method

.method protected sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;)V
    .locals 4
    .param p1, "result"    # Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;

    .prologue
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mValidationEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mValidationEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mValidationContextData:Ljava/util/Map;

    invoke-interface {v0, v1, p1, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;->validationEventResult(Ljava/lang/String;Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoValidationResult;Ljava/util/Map;)V

    .line 189
    iput-object v3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mValidationEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

    .line 190
    iput-object v3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mValidationContextData:Ljava/util/Map;

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v0, "SPBrandEngageMediationAdapter"

    const-string v1, "No validation event listener"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    .prologue
    .line 205
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

    if-eqz v0, :cond_1

    .line 206
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventStarted:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {p1, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoContextData:Ljava/util/Map;

    invoke-interface {v0, v1, p1, v2}, Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;->videoEventOccured(Ljava/lang/String;Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;Ljava/util/Map;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v0, "SPBrandEngageMediationAdapter"

    const-string v1, "No video event listener"

    invoke-static {v0, v1}, Lcom/sponsorpay/utils/SponsorPayLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setVideoPlayed()V
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;->SPTPNVideoEventFinished:Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->sendVideoEvent(Lcom/sponsorpay/publisher/mbe/mediation/SPTPNVideoEvent;)V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoPlayed:Z

    .line 232
    return-void
.end method

.method public abstract startVideo(Landroid/app/Activity;)V
.end method

.method public startVideo(Landroid/app/Activity;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;Ljava/util/Map;)V
    .locals 4
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "event"    # Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    .local p3, "contextData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoPlayed:Z

    .line 165
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationVideoEvent;

    .line 166
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mVideoContextData:Ljava/util/Map;

    .line 167
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->startVideo(Landroid/app/Activity;)V

    .line 169
    return-void
.end method

.method public abstract videosAvailable(Landroid/content/Context;)V
.end method

.method public videosAvailable(Landroid/content/Context;Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;, "Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter<TV;>;"
    .local p3, "contextData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mValidationEvent:Lcom/sponsorpay/publisher/mbe/mediation/SPMediationValidationEvent;

    .line 143
    iput-object p3, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mValidationContextData:Ljava/util/Map;

    .line 144
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    invoke-virtual {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/SPBrandEngageMediationAdapter;->videosAvailable(Landroid/content/Context;)V

    .line 146
    return-void
.end method
